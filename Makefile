BUILD := build

MD5 := md5sum -c
PYTHON := python
PYTHON3 := python3

RGBASM := rgbasm
RGBGFX := rgbgfx
RGBLINK := rgblink
RGBFIX := rgbfix
sort_sym := tools/sort_symfile.sh

RGBASMFLAGS := -h -E -i $(BUILD)/ -DGOLD -DDEBUG=1
tools/gfx :=

ROM := pokegold-spaceworld.gb
LINKERSCRIPT := pokegold-spaceworld-gen.link
BASEROM := baserom.gb
SHIM := shim.sym
CORRECTEDROM := $(ROM:%.gb=%-correctheader.gb)

rwildcard = $(foreach d, $(wildcard $1*), $(filter $(subst *, %, $2), $d) $(call rwildcard, $d/, $2))
DIRS := home engine data audio
ASMFILES := $(call rwildcard, $(DIRS), *.asm) gfx.asm vram.asm sram.asm wram.asm hram.asm
OBJS := $(patsubst %.asm, $(BUILD)/%.o, $(ASMFILES))
OBJS += $(BUILD)/shim.o

.SECONDEXPANSION:

.PHONY: all
all: $(ROM) $(CORRECTEDROM) compare

.PHONY: compare
compare: $(ROM) $(CORRECTEDROM)
	$(MD5) roms.md5

.PHONY: tools
tools tools/pkmncompress tools/gfx:
	"$(MAKE)" -C tools/

# Remove files generated by the build process.
.PHONY: clean
clean:
	rm -rf $(ROM) $(CORRECTEDROM) $(BUILD) $(ROMS:.gb=.sym) $(ROMS:.gb=.map) *.d
	"$(MAKE)" -C tools clean

# Remove files except for graphics.
.PHONY: mostlyclean
mostlyclean:
	rm -rf $(ROM) $(CORRECTEDROM) $(OBJS) $(ROMS:.gb=.sym) $(ROMS:.gb=.map) *.d

# Utilities
.PHONY: coverage
coverage: $(ROM:.gb=.map) tools/disasm_coverage.py
	$(PYTHON) tools/disasm_coverage.py -m $< -b 0x40

.PHONY: linkerscript
linkerscript: $(ROM:.gb=-gen.link)

# TODO FIX HARDCODE
%.link: pokegold-spaceworld.map tools/map2link.py
	$(PYTHON3) tools/map2link.py $< $@

%.map: %.gb

$(CORRECTEDROM): %-correctheader.gb: %.gb
	$(RGBASM) $(RGBASMFLAGS) -o $(BUILD)/zero_checksum.o zero_checksum.inc
	$(RGBLINK) -O $< -o $@ $(BUILD)/zero_checksum.o
	$(RGBFIX) -f hg -m 0x10 $@

$(ROM): poke%-spaceworld.gb: $(OBJS) | $(BASEROM)
	$(RGBLINK) -d -n $(@:.gb=.sym) -m $(@:.gb=.map) -l $(@:.gb=.link) -O $(BASEROM) -o $@ $^
	$(RGBFIX) -f lh -k 01 -l 0x33 -m 0x03 -p 0 -r 3 -t "POKEMON2$(shell echo $* | cut -d _ -f 1 | tr '[:lower:]' '[:upper:]')" $@
	$(sort_sym) $(@:.gb=.sym)

$(BASEROM):
	@echo "Please obtain a copy of Gold_debug.sgb and put it in this directory as $@"
	@exit 1

$(BUILD)/shim.asm: tools/make_shim.py $(SHIM) | $$(dir $$@)
	$(PYTHON3) tools/make_shim.py -w $(filter-out $<, $^) > $@

$(BUILD)/%.o: $(BUILD)/%.asm | $$(dir $$@)
	$(RGBASM) $(RGBASMFLAGS) $(OUTPUT_OPTION) $<
$(BUILD)/%.o: %.asm | $$(dir $$@)
	$(RGBASM) $(RGBASMFLAGS) $(OUTPUT_OPTION) $<

$(BUILD)/gfx/sgb/sgb_border_alt.2bpp: tools/gfx += --trim-whitespace
$(BUILD)/gfx/sgb/sgb_border_gold.2bpp: tools/gfx += --trim-whitespace
$(BUILD)/gfx/sgb/sgb_border_silver.2bpp: tools/gfx += --trim-whitespace
$(BUILD)/gfx/trainer_card/leaders.2bpp: tools/gfx += --trim-whitespace
$(BUILD)/gfx/trainer_card/trainer_card.2bpp: tools/gfx += --trim-whitespace
$(BUILD)/gfx/pokegear/town_map.2bpp: tools/gfx += --trim-trailing
$(BUILD)/gfx/minigames/slots.2bpp: tools/gfx += --trim-whitespace
$(BUILD)/gfx/minigames/poker.2bpp: tools/gfx += --trim-whitespace
$(BUILD)/gfx/intro/purin_pikachu.2bpp: tools/gfx += --trim-whitespace

.PRECIOUS: $(BUILD)/%.pic
$(BUILD)/%.pic: $(BUILD)/%.2bpp tools/pkmncompress | $$(dir $$@)
	tools/pkmncompress $< $@

.PRECIOUS: $(BUILD)/%.2bpp
$(BUILD)/%.2bpp: %.png tools/gfx | $$(dir $$@)
	$(RGBGFX) $(OUTPUT_OPTION) $<
	tools/gfx $(tools/gfx) $(OUTPUT_OPTION) $@

.PRECIOUS: $(BUILD)/%.1bpp
$(BUILD)/%.1bpp: %.1bpp.png tools/gfx | $$(dir $$@)
	$(RGBGFX) -d1 $(OUTPUT_OPTION) $<
	tools/gfx $(tools/gfx) -d1 $(OUTPUT_OPTION) $@

.PRECIOUS: $(BUILD)/%.tilemap
$(BUILD)/%.tilemap: %.png | $$(dir $$@)
	$(RGBGFX) -t $@ $<

.PRECIOUS: %/
%/:
	mkdir -p $@

DEPENDENCY_SCAN_EXIT_STATUS := $(shell $(PYTHON3) tools/scan_includes.py $(BUILD:%=-b %) $(ASMFILES) > dependencies.d; echo $$?)
ifneq ($(DEPENDENCY_SCAN_EXIT_STATUS), 0)
$(error Dependency scan failed)
endif
include dependencies.d

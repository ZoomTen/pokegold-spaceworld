#!/usr/bin/python

import math
import sys

args = len(sys.argv)

if args == 2:
	offs = int(sys.argv[1], 16)
	bank = math.floor(offs / 0x4000)
	if bank != 0:
		addr = (offs - (bank * 0x4000)) + 0x4000
	else:
		addr = (offs - (bank * 0x4000))
	print(hex(bank), hex(addr))
elif args == 3:
	base = int(sys.argv[1], 16) * 0x4000
	addr = int(sys.argv[2], 16) - 0x4000
	offs = hex(base + addr)
	print(offs)
else:
	print("usage:")
	print("utils/offsets.py <raw hex offset e.g. 2a45d>")
	print("utils/offsets.py <bank e.g. 3f> <address between 0 - 4000>")

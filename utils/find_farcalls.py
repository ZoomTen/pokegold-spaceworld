#!/usr/bin/python

import re
import math
import sys

file_name = sys.argv[1]
sym_name = sys.argv[2]

# stuff is just binary regexen

RE_callab = re.compile(b'\\x21(..)\\x3e(.)\\xcd\\xa8\\x2f', re.DOTALL)
RE_callba = re.compile(b'\\x3e(.)\\x21(..)\\xcd\\xa8\\x2f', re.DOTALL)


def gb2gb(p):
	offs = int(p, 16)
	bank = math.floor(offs / 0x4000)
	if bank != 0:
		addr = (offs - (bank * 0x4000)) + 0x4000
	else:
		addr = (offs - (bank * 0x4000))
	return f'{hex(bank)[2:].zfill(2)}:{hex(addr)[2:].zfill(4)}'

syms = {}

with open(sym_name, 'r') as symfile:
	line = symfile.readline()
	while line:
		if line[0] != ';':
			pieces = line.split()
			addr, sym = tuple(pieces[0:2])
			syms[addr] = sym
		line = symfile.readline()

with open(file_name, 'rb') as rom:
	x = rom.read()
	farcalls = []
	for i in re.findall(RE_callab, x):
		farcalls.append((i[1], i[0]))
	for i in re.findall(RE_callba, x):
		farcalls.append(i)
	
	farcalls = list(set(farcalls))
	farcalls = sorted(farcalls, key=lambda x: (
		int.from_bytes(x[0], byteorder='little'),
		int.from_bytes(x[1], byteorder='little')
		)
	)
	
	for i in farcalls:
		bnk = hex(int.from_bytes(i[0], byteorder='little'))[2:].zfill(2).lower()
		adr = hex(int.from_bytes(i[1], byteorder='little'))[2:].zfill(4).lower()
		st_ = f'{bnk}:{adr}'
		
		if st_ in syms:
			#print(f'{st_} ({syms[st_]})')
			pass
		else:
			print(st_)

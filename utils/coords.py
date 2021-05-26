#!/usr/bin/python3

import math

depixel = lambda x: print("depixel {}, {}, {}, {}".format( math.floor(int(x.zfill(4)[0:2],16) / 8), math.floor(int(x.zfill(4)[2:4],16) / 8), int(x.zfill(4)[0:2],16) % 8, int(x.zfill(4)[2:4],16) % 8))

hlcoord = lambda x: print(f'hlcoord {(int(x.zfill(4),16) - (math.floor((int(x.zfill(4),16) - 0xc2a0) / 20)* 20 + 0xc2a0))}, {(int((int(x.zfill(4),16) - 0xc2a0) / 20))}')

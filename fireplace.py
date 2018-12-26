#!/usr/bin/python
import random
import time
import os
import sys

width = int(os.environ['kak_window_width'])
height = int(os.environ['kak_window_height'])
size = width * height
char = [" ", ".", ":", "^", "*", "x", "s", "S", "#", "$"]
b = []

for i in range(size + width + 1):
    b.append(0)
f = os.open(sys.argv[1], os.O_WRONLY)
while 1:
    for i in range(int(width / 9)):
        b[int((random.random() * width) + width * (height - 1))] = 65
    for i in range(size):
        b[i] = int((b[i] + b[i + 1] + b[i + width] + b[i + width + 1]) / 4)

    string = ""
    for i in range(int(len(b) / width)):
        string += ''.join([char[(9 if x > 9 else x)] for x in b[i*width:(i+1)*width]])
        string += "\n"
    os.write(f,bytes(string.encode('utf-8')))
    time.sleep(0.03)

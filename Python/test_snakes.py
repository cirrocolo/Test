#!/usr/local/bin/python3

import sys

s: str = 'nil'
if len(sys.argv) > 1:
    s = sys.argv[1]

def snake(s):
    if s == 'snake' : print ("Snakes on a plane!")

snake(s)
#!/usr/bin/env python

import sys
from operator import mul, add

def run(code, noun, verb):
    code[1] = noun
    code[2] = verb

    ptr = 0
    ops = {
        1: add,
        2: mul,
    }
    while True:
        op = code[ptr]
        if op in ops:
            fun = ops[op]
            l, r, t = code[ptr+1:ptr+4]
            code[t] = fun(code[l], code[r])
            ptr += 4
        elif op == 99:
            break
        else:
            raise ValueError("Unknown op")

    return code[0]

def main():
    code = sys.stdin.read()
    code = [int(c) for c in code.split(',')]

    if len(sys.argv) == 3:
        noun, verb = int(sys.argv[1]), int(sys.argv[2])
        print(run(code[:], noun, verb))
        return

    elif len(sys.argv) == 2:
        target = int(sys.argv[1])
        for i in range(100):
            for j in range(100):
                res = run(code[:], i, j)
                if res == target:
                    print(100 * i + j)
                    return
        print("Failed to find noun and verb for target:", target)
    else:
        print("No provided arguments")




if __name__ == '__main__':
    main()

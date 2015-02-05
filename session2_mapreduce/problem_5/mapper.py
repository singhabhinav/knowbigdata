#!/usr/bin/python

import sys


def read_input(file):
    for line in file:
        yield line.split()


def main(separator='\t'):
    data = read_input(sys.stdin)
    for voter, votee in data:
        print '%s%s%s' % (voter, separator, votee)

if __name__ == "__main__":
    main()

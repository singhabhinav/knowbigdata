#!/usr/bin/python

from itertools import groupby
from operator import itemgetter
import sys


def read_mapper_output(file, separator='\t'):
    for line in file:
        yield line.rstrip().split(separator, 1)


def main(separator='\t'):
    data = read_mapper_output(sys.stdin, separator=separator)
    for voter, group in groupby(data, itemgetter(0)):
            combined_list = list(data for voter, data in group)
            print "%s%s%s" % (voter, ':', combined_list)

if __name__ == "__main__":
    main()

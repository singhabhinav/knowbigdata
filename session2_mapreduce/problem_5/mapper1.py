#!/usr/bin/python

import sys
import ast

for line in sys.stdin:
    line = line.strip()
    voter, combined_list = line.split(":")
    combined_list = ast.literal_eval(combined_list)
    voter_worth = combined_list[0]
    combined_list.pop(0)
    print '%s%s%s' % (voter, "\t", 0)
    for votee in combined_list:
        print '%s%s%s' % (votee, "\t", voter_worth)

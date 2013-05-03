# File: convertCnf.py
# Author: Christopher Wood
# Description: Convert a DIMACS CNF file to the input format for our 3-SAT programs.

# Usage: A single command-line argument must be provided to this program,
# where the parameter is the name of a file containing the names of CNF files
# to be converted. The converted output files will be given the extension <filename>.cnf.out.

import sys

if len(sys.argv) != 2:
	print("Usage: python convertCnf.py filelist")
else:
	f = open(sys.argv[1], 'r')
	for fileName in f:
		cnfFile = open(fileName.strip(), 'r')
		lines = []
		for l in cnfFile:
			if (l.startswith('p')):
				l = l.replace("p cnf","").strip()
			if (l.endswith('0\n')):
				l = l[0:len(l) - 2].strip()
			if not (l.startswith("%") or l.startswith("c")):
				lines.append(l.strip())
		newF = open(fileName.strip() + ".out", 'w')
		for l in lines:
			newF.write(l + "\n")
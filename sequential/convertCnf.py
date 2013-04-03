f = open('uf50-01.cnf', 'r')
lines = []
for l in f:
	if (l.endswith('0\n')):
		l = l[0:len(l) - 2]
	lines.append(l)
newF = open('test2.cnf', 'w')
for l in lines:
	newF.write(l + "\n")
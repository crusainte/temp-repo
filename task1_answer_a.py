array = [['a','b','c'],['d','e','f']]
for i in array:
	for j in i:
		print repr(j).replace("'","")

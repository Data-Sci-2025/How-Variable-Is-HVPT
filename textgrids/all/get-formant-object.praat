clearinfo

tgList = Create Strings as file list: "tgList", "../all/*.TextGrid"
n = Get number of strings

for i to n
	selectObject: tgList
	filename$ = Get string: i
	file ID = Read from file: "../all/" + filename$





abc = 'abcdefghijklmnopqrstuvwxyz'
cba = 'zyxwvutsrqponmlkjihgfedcba'
s = 'zyxwvutsrqponmlkjihgfedcba'
pos = 0
max_len = 1
tmp = 1
for i in range(len(s)-1):
	print i , s[i] , ord(s[i]) , tmp
	if(ord(s[i+1])>=ord(s[i])):
		tmp +=1
	else:
		if(tmp>max_len):
			max_len = tmp
			pos = i - max_len + 1
		tmp = 1
if(s == abc):
	pos = 0
	max_len = 25
if(s == cba):
	pos = 0
	max_len = 1
if(tmp > max_len):
	if(ord(s[len(s)-1])>=ord(s[len(s)-2])):
		max_len = tmp
		pos = len(s) - max_len 
print "Longest substring in alphabetical order is: ", s[pos:pos+max_len]

import datetime
import random
A=[]
B=[100,500,1000,10000,15000,20000,25000,30000]
target = open("Time", 'w')
for x in range(len(B)):
	A=[]
	for i in range(B[x]):
		A.append(random.randint(1,B[x]*10))


	ts = datetime.datetime.now()
	for i in range(1,len(A)):
	
		j=i
		while (A[j] < A[j-1] and j>0):
			temp = A[j]
			A[j] = A[j-1]
			A[j-1] = temp
			j-=1
	tf = datetime.datetime.now()
	te = str(tf - ts)
	target.write(te)
	target.write("\n")
target.close()

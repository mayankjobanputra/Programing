A= [3,1,8,9,4,2,7,5]
print A

for i in range(1,len(A)):
	j=i
	print "\n" ,A[0:i]
	while (A[j] < A[j-1] and j>0):
		temp = A[j]
		A[j] = A[j-1]
		A[j-1] = temp
		j-=1
		

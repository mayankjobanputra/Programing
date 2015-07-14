A = [3,1,5,6,7,8,2]
B = []
p = 0
q = len(A-1)

def mergeSort(A,p,r,q):

	left = A[p:r-1]
	right = A[r:q]
	leftI = 0
	rightI = 0
	for x in range(len(A)-1):
		if(left[leftI] < right[rightI]):
			B.append(left[leftI])
			leftI+=1
		else:
			B.append(right[rightI])
			rightI+=1
					

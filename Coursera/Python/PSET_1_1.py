n = len(s)
m=0
while (n!=0):
    if s[n-1] == 'a' or s[n-1] == 'e' or s[n-1] == 'i' or s[n-1] == 'o' or s[n-1] == 'u':
        m=m+1
    n=n-1
    
print m

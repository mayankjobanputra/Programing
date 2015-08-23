#Lab Assignment 1
#Mayank - 131026
getent shadow | cut -d: -f1-2 | grep ':$' | cut -d: -f1

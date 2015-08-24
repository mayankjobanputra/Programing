#Lab Assignment 1
#Mayank - 131026
read -p "\n Enter a file name to search top 10 frequent words : " file1
tr -c '[:alnum:]' '[\n*]' < $file1 | sort | uniq -c | sort -r| head

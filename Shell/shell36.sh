echo "\n Enter a file name to search top 10 frequent words : \c"
read file
tr -c '[:alnum:]' '[\n*]' < $file | sort | uniq -c | sort -r| head

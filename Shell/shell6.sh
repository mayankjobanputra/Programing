#Lab Assignment 1
#Mayank - 131026
read -p "Enter the Directory" d
cd $d
ls -l --block-size=k | awk '{print $5, $6, $7, $1, $3}'

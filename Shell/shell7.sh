#Lab Assignment 1
#Mayank - 131026
read -p "Enter Dir 1 " dir1
read -p "Enter Dir 2 " dir2
cd $dir1
ls > dir1list
exec 7<"dir1list"
cd ~
set `ls $dir2`


while $1
do 
	if ["$x" -eq "$i"] 
	then
		echo "$x found with same name"
	fi
done

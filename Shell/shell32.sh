#Lab Assignment 1
#Mayank - 131026
read -p "Enter the variable name" varname
set `ls`
for i in `ls`
do
case "$i" in 
  	*".c"*)
    	grep $varname $1
    	;;
esac 
shift

done 

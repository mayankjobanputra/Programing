#Lab Assignment - 1
#Mayank 131026 
echo "Enter the path of the directory :"
read path 
cd 
cd $path
echo "Enter the operation :"
cat << op
1. Newer than a specified date/time
2. Older than a specified date/time
op
read inp
case $inp in 
	1) echo "Newer than past how many days(eg-5)"
	read var
	find . -type f -mtime +$var;;
	
	2) echo "Older than past how many days(eg-5)"
	read var
	find . -type f -mtime -$var;;
	
	*) echo "Enter proper choice (1 or 2)" ;;
esac

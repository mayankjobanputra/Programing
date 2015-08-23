#Lab Assignment 1
#Mayank - 131026
read -p "Enter the username " username
who > name
grep $username name > /dev/null
if [ "$?" -eq "0" ]
then
	echo "$username is currently online"
else
	echo "$username is not currently online"
fi
rm name

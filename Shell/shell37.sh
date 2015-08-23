clear
read -p "Enter path : " fpath
read -p "Enter date : " Date
read -p "Enter month : " Month
read -p "s/b? " choice
cd $fpath

set `ls -lt`
shift 2

if [ $choice = "s" ]
then
while true
do

if [ $7 = $Date ] && [ $6 = $Month ]
then
break
fi

echo $1  $6 $7  $9
shift 9

if [ ! -n "$1" ]
then
break
fi 

done
fi


if [ $choice = "b" ]
then
while true
do

if [ $7 = $Date ] && [ $6 = $Month ]
then
break
fi


shift 9

if [ ! -n "$1" ]
then
break
fi 

done


while true
do


echo $1  $6 $7  $9
shift 9

if [ ! -n "$1" ]
then
break
fi 

done
fi



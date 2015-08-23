while true
do

read -p 'Enter the file name' f

cat << MENU
	Menu
	1) Count of characters, words and lines
	2) File in a reversed order
	3) Frequency of particular word in the file
	4) Lower case letters in place of upper case alphabets 
	5) Exit
MENU
echo 'enter the choice:\c'
read choice
case $choice in	
	[1])	echo "Total Characters are: " $(wc -m $f) | awk '{print $1, $2, $3, $4}'
		echo "Total Words are: " $(wc -w $f) | awk '{print $1, $2, $3, $4}'
		echo "Total Lines are: " $(wc -l $f) | awk '{print $1, $2, $3, $4}'
		sleep 3
		continue;;
	[2])    echo 'The File in reversed order: \n'
		rev $f > ro
		cat ro	
		sleep 3
                continue;;
	[3])    echo 'Enter the word of whose frequency has to be found: \n'
		read wd
		echo 'The frequency of the word ' $wd ' is: ' $(grep -o "$wd" $f | wc -l)
                sleep 3
                continue;;
	[4])	echo 'Replacing lower case letters in place of upper case letters: \n'
		tr [A-Z] [a-z] < $f > lf
		cat lf
                sleep 3
                continue;;
	[5])	exit;;

	*) echo '\nPlease enter the choice again'
		sleep 3
esac
done	

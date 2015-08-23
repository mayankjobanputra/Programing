#Lab Assignment 1
#Mayank - 131026
while true
do
clear

cat << MENU

        Menu

	a. Count the lines, words, and characters in file poem
	b. Pick up the lines containing word ‘fleas’ from file poem 
	c. Pick up the lines not containing word ‘fleas’ from file poem
	d. Lower case letters in place of upper case alphabet

        e. Exit

MENU

echo "Enter your choice : \c"
read choice

file=poem
set `wc -cwlm $file`

case $choice in

	[aA]) echo "Displaying Count of characters, words and lines in file : Poem..."
		
		echo "\nCharacters: $3"
 	
		echo "\nWords: $2"
		
		echo "\nLines: $1"
		
		sleep 3
		;;

	[bB]) echo "Frequency of the Word : fleas..."
			
		echo "Occurrence of the word --> fleas : \c"
		grep -io "fleas" $file  | wc -l
	
		sleep 0.5
		;;

	[cC]) echo "Lines without word : fleas...\n"
        
	        grep -v "fleas" $file

                sleep 0.5
                ;;
	
	[eE]) echo "Exiting \c"
		echo '. \c'
		sleep 0.5
		echo '. \c'
		sleep 0.5
		echo '. \c'
		sleep 0.5
		echo " Bye"
		exit;;        
	
	*) echo 'Something else typed \n Please try again'
		sleep 2
esac

	echo '\n Do you want to continue... [y/n] ? \c'
        read charc
                if [ "$charc" != "Y" -a "$charc" != "y" ]
                then
                        echo 'Oops...!'
                        exit
                else
                        echo 'Wait...'

                        sleep 1
                        continue

                fi

done

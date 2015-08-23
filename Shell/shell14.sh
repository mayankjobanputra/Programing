#Lab Assignment 1
#Mayank - 131026
while true
do
clear

cat << MENU

        Menu

        a. Display current directory
        b. List directory
        c. Make directory
        d. Change directory 
	e. Copy file
        f. Rename file
        g. Delete file
        h. Edit file 
        i. Exit

MENU

echo "Enter your choice : \c"
read choice

case $choice in

	[aA]) echo "Displaying current directory..."
		echo "\n Current directory: \c" 
		pwd
		
		sleep 0.5
		;;

	[bB]) echo "Listing directory..."
		ls
		sleep 0.5
		;;
	
	[cC]) echo "Making directory..."
		echo "Write the name of the new directory : \c"
		read dir
		
		mkdir $dir
		sleep 0.5
		;;

	[dD]) echo "Changing directory..."
		echo "\nWrite the path to change your directory : \c" 
		read $path
		
		cd "$dir"
		sleep 0.5
		;;

	[eE]) echo "Coping file..."
		echo 'Enter the filename(s) to be copied'
                read filename
                echo 'Enter the destination for file(s) to be copied : '
                read dest
		
		cp -i $filename $dest
		sleep 0.5
		;;

	[fF]) echo "Renaming file..."
                echo 'Enter the filename(s) to be renamed'
                read filename
                echo 'Enter new names for  file(s) to be renamed : '
                read nfilename
                
                mv -i $filename $nfilename
		sleep 0.5
		;;
	
	[gG]) echo "Deleting file..."
                echo 'Enter the filename(s) to be deleted'
                read filename
       
	        rm -i $filename
		
		sleep 0.5
		;;

	[hH]) echo "Editing file..."
                echo 'Enter the filename to be edited'
                read filename
        
		vi $filename
		
		sleep 0.5
		;;

	[iI]) echo "Exiting \c"
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

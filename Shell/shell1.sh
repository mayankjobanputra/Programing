#Lab Assignment 1
#Mayank - 131026
echo "Enter the chpoice"

cat << choice
	CHOICE
	1. Delete
	2. Copy
	3. Rename
	4. Exit
choice
read choice
case $choice in
	[1]) echo "Enter the filename to delete"
	    read filename
	    echo "Enter the path to file. Press just enter to delete file from current dir"
	    read fpath
	    cd $fpath
	    rm -i $filename;;
	    
	[2]) echo "Enter the filename to copy"
	    read filename
	    echo "Enter the current path of file"
	    read fpath
	    cd $fpath
	    echo "Enter the new path"
	    read npath
	    cp -i $filename $npath;;
	    
	[3])  echo "Enter the filename to rename"
	    read filename
	    echo "Enter the current path of file"
	    read fpath
	    cd $fpath
	    echo "Enter the new name of file"
	    read fpath
	    mv -i $filename $nname $fpath;;
	    
	[4]) echo "Exiting"
	    exit;;
	   
	[*]) echo "Enter correct choice"
esac


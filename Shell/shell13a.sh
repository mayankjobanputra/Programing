#Mayank 131026
#Lab Assignment 1
#Implementation of Tree command of windows
read -p "Enter path of Dir for Tree view" fpath
ls -R $fpath > "FileTree"
if [ "$?" = "0" ]
then 
echo "Tree of given directory stored in home/Filetree Successfully"
else
echo "Something wrong happend"
fi

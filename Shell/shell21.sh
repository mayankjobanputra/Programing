read -p "enter the directory" d
cd ~
cd $d
set `ls -la`
echo 'Total number of files in ' $d ' is ' $2

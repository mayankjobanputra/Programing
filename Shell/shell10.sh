read -p "Enter Dir path " dir1
ls $dir1 > "filelist.txt"
for file in `cat filelist.txt`
do
	file $file > l_v 
	if `grep "executable" < l_v`
	then
	echo $file 
	fi
done

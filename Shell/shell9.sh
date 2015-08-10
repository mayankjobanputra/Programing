read -p "Enter Dir path " dir1
dir --file-type $dir1 > "links"
for fname in `cat links`
do
	case "$fname" in 
  	*"@"*)
    	echo "$fname"
    	;;
esac
done


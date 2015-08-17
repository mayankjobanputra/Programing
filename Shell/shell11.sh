ifs1=$IFS
IFS=": "
set `date +%c`
IFS=$ifs
case "$8" in
	"AM")
	if [ "$5" -lt "12" ]
	then
		echo "Good Morning"
		echo `date +%c`
	fi;;
	"PM")
	if [ "$5" -lt "07" ]
	then
		echo "Good Evening"
		echo `date +%c`
	else
		echo "Good Night"
		echo `date +%c`
	fi;;
esac


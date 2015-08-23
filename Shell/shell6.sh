echo 'enter the directory'
read d
cd $d
ls -l --block-size=k | awk '{print $5, $6, $7, $1, $3}'

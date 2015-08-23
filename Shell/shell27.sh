active=`w | grep ^$whoami| grep 'bash' | wc -l `
if [ "$active" -gt "0" ]
then
echo "User is currently active at terminal"
fi

#Lab Assignment 1
#Mayank - 131026
w
echo "select username"
read user
echo " select tty"
read tty
echo "Enter Input msg"
read msg

echo $msg | write $user $tty

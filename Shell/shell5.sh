echo "Enter 2 directory address for copying files \nDir 1"
read dir1
echo $dir1
echo "Dir 2"
read dir2
echo "Enter path of new DIR"
read newdir
cd
mkdir -p $newdir
cp -r $dir1/* $newdir/
cp -r -u $dir2/* $newdir/


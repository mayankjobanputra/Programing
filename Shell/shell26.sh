ls po* > pofile 
cat pofile | egrep '1|2|3|4|5'
rm pofile

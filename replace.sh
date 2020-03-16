#! /bin/bash
echo "enter the name "
read name

if(( ${#name} > 3 ))
then 
str="hello <<username>>, how r u" 
s="<<username>>"
c=${str//$s/$name}
echo "$c"
else
echo "enter the name more then 3 chars"
fi

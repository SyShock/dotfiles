#!/bin/bash
MAX_NO=0
echo -n "Enter Number between (5 to 9) : "
read MAX_NO
if ! [ $MAX_NO -ge 5 -a $MAX_NO -le 9 ] ; then
echo "WTF... I asked to enter number between 5 and 9, Try Again"
exit 1
fi
clear

if [ $SHELL -e '/usr/bin/fish' ]; then
	echo "Yup"
fi

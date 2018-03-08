#!/bin/bash
prompt="Please select a file:"
cd $HOME/.xcolors/wal
options=( "Custom" $(find -maxdepth 1 -print0 | xargs -0) "Quit")

PS3="$prompt "

if [ -z "$1" ]; then

select opt in "${options[@]}"; do 
    if (( REPLY == ${#options[@]} )) ; then
        exit

    elif (( REPLY > 1 && REPLY <= ${#options[@]} )) ; then
        echo  "You picked $opt which is file $REPLY"
		wal -g -f ./$opt
        break
	
	elif (( REPLY == 1 && REPLY <= ${#options[@]} )) ; then
        echo  "Custom theme is set with: "
        echo  "$0 <path to wallpaper>"
        break


    else
        echo "Invalid option. Try another one."
    fi
done    

else 
  wal -g -i $1
fi

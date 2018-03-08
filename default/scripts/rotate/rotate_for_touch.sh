#!/usr/bin/env sh

# This is a script I use in conjuction with rotate.sh and easystroke for
# the tablet
# Created by SyShock

ScriptDir=$SCRIPTS/rotate

if [ ! -f 'state' ]; then 
  echo normal > $ScriptDir/state
fi

ORIENTATION=$(cat $ScriptDir/state) 
 
  if [ $1 == "left" ]; then
    case "$ORIENTATION" in

    	normal)
    	  pos='left'
		  ;;
	    left)
		  pos='inverted'
    	  ;;
		inverted)
		  pos='right'
		  ;;
		right)
		  pos='normal'
		  ;;
	esac

  elif [ $1 == "right" ]; then
     case "$ORIENTATION" in 

    	normal)
		  pos='right'
    	  ;;
    	right)
    	  pos='inverted'
		  ;;
		inverted)
		  pos='left'
		  ;;
		left)
		  pos='normal'
		  ;;
    esac

  fi

echo $ORIENTATION to $pos
echo $pos > $ScriptDir/state
sh $ScriptDir/rotate.sh $pos

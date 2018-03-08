#!/bin/bash

if [ -z "$1" ]; then
	echo "Trims timeslots of videos to webm"
	echo  Time format: hh:mm:ss.fff  or num \(seconds\)

  else

  let sum=$3-$2
  echo Converting video timeframe to webm...
  echo Timeframe: $2 to $3 $sum
  echo Video: $1
  echo WebM: $4
  echo Stand by...
  echo " "
  echo " "

  ffmpeg -i $1 -ss $2 -to $3 -c:v libvpx -crf 4 -b:v 1500K -vf scale=640:-1 -an $4

  echo Done.

fi



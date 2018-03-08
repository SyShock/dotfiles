#!/bin/bash

if [ -z "$1" ]; then
	echo Converts a gif to a webm 

  else

  echo Converting a gif to webm
  echo GIF: $1
  echo WebM: $2
  echo Stand by...
  echo " "
  echo " "

  ffmpeg -i $1 -c:v libvpx -crf 12 -b:v 500K $2

  echo Done.

fi


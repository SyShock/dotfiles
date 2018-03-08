#!/bin/bash

echo Converting video to gif...
echo Video: $1
echo Gif: $2
echo 'Stand by...'
echo " "
echo " "

ffmpeg -i $1 -vf scale=320:-1 -r 10 -f image2pipe -vcodec ppm - | convert -delay 5 -loop 0 - $2

echo Done.

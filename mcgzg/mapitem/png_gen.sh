#!/bin/bash
input='$1'
c=3000;
while read font
do  
convert -background '#ffffff' -fill '#ffD700' -font simsun.ttc -pointsize 100 -size 128x128 -gravity center label:$font pngtar/$((c++)).png
done <'$input'


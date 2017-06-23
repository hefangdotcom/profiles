#!/bin/bash
# map_number = ascii code
# 
declare lower_char=0x60  
declare upper_char=0x40
declare number_char=0x30

for c in {1..26}
do
lower_char=$((++lower_char));
printf -v lower "\x$(printf %x $lower_char)" 
convert -background '#ffffff' -fill '#000000' -font simsun.ttc -pointsize 100 -size 128x128 -gravity center label:$lower pngtar/$((lower_char)).png
done

for c in {1..26}
do
upper_char=$((++upper_char));
printf -v upper "\x$(printf %x $upper_char)" 
convert -background '#ffffff' -fill '#000000' -font simsun.ttc -pointsize 100 -size 128x128 -gravity center label:$upper pngtar/$((upper_char)).png
done

for c in {0..9}
do

convert -background '#ffffff' -fill '#000000' -font simsun.ttc -pointsize 100 -size 128x128 -gravity center label:$c pngtar/$((number_char)).png
number_char=$((++number_char));
done


#/usr/share/fonts/truetype/ttf-indic-fonts-core/Kedage-b.ttf



#!/bin/bash
INPUT="$1"
# counter 
 
# Make sure file name supplied
[ $# -eq 0 ] && { echo "Usage: $0 filename"; exit 1; }
 
# Make sure file exits else die 
[ ! -f $INPUT ] && { echo "$0: file $INPUT not found."; exit 2; }
 
# the while loop, read one char at a time
while IFS= read -r -n1 c
do
	grep -n $c 2715.txt |awk -F':' '{print $1+2999,$2}' 
done < "$INPUT"
 

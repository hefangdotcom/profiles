#!/usr/bin/bash
target=(sil6u21 sil9u1)

sil6u21_ioms=(iom-12 iom-13 iom-14 iom-15 )

for item in $target
do
	if [ "$item" == "$1" ]; then
	echo 'yes' 
	ioms_list=$1"_ioms[*]"
	echo $ioms_list
	else
	echo 'Invalid host name'
	exit
	fi
done

for iom in ${!ioms_list}
do
getlogs $1 $iom
done


# find . -maxdepth 1 -type f -printf "%T+\t%p\n" | sort >>../to5999.sort
# awk '{print $2}' to5999.sort >>to5999.cut
n=4999
while read line
do
n=$((++n))  
mv to5999/$line map/map_$(($n)).dat
done <to5999.cut


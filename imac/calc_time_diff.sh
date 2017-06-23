# ./calc_time_diff
# awk '{print $2}' to5999.sort >>to5999.cut
n=4999
IFS=$'\n' 
prev=$(date +%s)
while read -r line
do
n=$((++n))  
epoch=$(date -juf "%F %T" $line "+%s")
#mv to5999/$line map/map_$(($n)).dat
printf $epoch'\n'
bc -l <<<$epoch-$prev
prev=$epoch
done <block_mine_time



# calculate time different from webpage dowload in block_mine_time
# awk '{print $2}' to5999.sort >>to5999.cut
n=4999
while read line
do
n=$((++n))  
#mv to5999/$line map/map_$(($n)).dat
print $line
done <block_mine_time



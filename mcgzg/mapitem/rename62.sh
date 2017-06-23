# find . -maxdepth 1 -type f -printf "%T+\t%p\n" | sort >>../to5999.sort
# awk '{print $2}' to5999.sort >>to5999.cut
c=47
while read line
do
c=$((++c))  
cp 62maps/$line map/map_$(($c)).dat
done <to62_1.cut

c=64
while read line
do
c=$((++c))  
cp 62maps/$line map/map_$(($c)).dat
done <to62_2.cut

c=96
while read line
do
c=$((++c))  
cp 62maps/$line map/map_$(($c)).dat
done <to62_3.cut


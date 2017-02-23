#! /bin/bash
counter1=25865
while [ $counter1 -le 25896 ];
do
counter2=25865
while [ $counter2 -le 25896 ];
do
echo "r.$counter2.$counter1.mca"
cp r.x.z.mca "r.$counter2.$counter1.mca"
((counter2++))
done;
((counter1++))
done

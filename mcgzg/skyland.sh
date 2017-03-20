#! /bin/bash
counter1=-10
while [ $counter1 -le 10 ];
do
counter2=48828
while [ $counter2 -le 48848 ];
do
echo "r.$counter2.$counter1.mca"
cp r.x.z.mca "r.$counter2.$counter1.mca"
((counter2++))
done;
((counter1++))
done

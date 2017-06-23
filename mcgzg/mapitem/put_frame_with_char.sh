#!/bin/bash
# m = Y ; n = Z; X = -29999711
map_no=2999
for m in {6..46}
do
	for n in {-29999294..-29999226}
	do
	screen -S minecraft -m -X stuff "summon minecraft:item_frame -29999711 $(($m)) $(($n)) {ItemRotation:0,Facing:3,Item:{Count:1,id:minecraft:filled_map,Damage:$map_no}}\r";
	map_no=$((++map_no));
	done
done


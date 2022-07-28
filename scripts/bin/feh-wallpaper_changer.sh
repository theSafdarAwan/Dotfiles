#!/bin/bash

time=60000000
dir=~/wallpapers

cd $dir

function comprobar() {
num=1
for x in *;
do
       let num=$num+1

done
}

while [ 1 ]; do
        comprobar
	var_ran=$(($RANDOM%$num))
        var_aum=1
	for y in *; do
		if [ "$var_ran" -eq "$var_aum" ]; then
			feh --bg-fill $y
			sleep $time
			break
		fi		
		
		let var_aum=$var_aum+1
	done
done

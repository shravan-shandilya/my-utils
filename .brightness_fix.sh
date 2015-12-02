#!/bin/bash
MIN=100                 #Dont black out
MAX=500                 #Dont fry my display
val=300                 #optimal brightness
input=f
echo "w: increse brightness"
echo "s: decrese brightness"
echo "q: quit"
while [ $input != q ]
do
	read -rsn1 input		#expect only one character and dont
	if [[ $input == w && $val < $MAX ]];
	then
		val=$(( $val+25 ))
	elif [[ $input == s && $val > $MIN ]];
	then
	 	val=$(( $val-25 ))
	fi
	echo $val > /sys/class/backlight/intel_backlight/brightness
done
exit

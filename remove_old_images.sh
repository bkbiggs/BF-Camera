#!/bin/bash
COUNTER=0
for i in $( ls -t1 ./share/images ); do
	let COUNTER=COUNTER+1
	if [ $COUNTER -gt 800 ]; then 
		echo $COUNTER: $i
		rm ./share/images/$i
	fi	
done
 

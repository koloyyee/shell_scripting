#!/bin/bash -u
PATH=/bin:/usr/bin export PATH
umask 022

read -p "give an array of nums separated with space: " nums
for i in $nums
do
	if (( $i % 2 == 0 )); then
		echo "even"
	else
		echo "odd"
	fi
done


# for i
for ((i = 0; i < 10; i++)); do
	echo "$i"
done

# while loop
stop=N
while [[ $stop != "y" ]]
do 
	read -p "create a new txt file, give a name: " name
	touch "$name.txt"
	read -p "shall we stop? (y/n)" stop
done
ls -l

# until loop is more like "unless" condition is met
counter=3
until [[ $counter -le 0 ]]; do 
	echo "$counter" 
	(( counter-- )) # expression always in (())
done
echo "Lift off!"

# loop through a list of files with the same extention
read -p "delete file with extention: " ext 
for f in *."$ext"
do 
	read -p "Delete $f? (y/n)" c
	if [[ $c == "y" ]]
	then
		echo "$f is removed"
		rm $f
	else
		echo "$f is skipped"
	fi
done
ls -l *."$ext"


#!/bin/bash -u
PATH=/bin:/usr/bin export PATH
umask 022



# create directory
# return a value
function cd() {
	read -p "let's create a new directory, give a name!" dir
	mkdir $dir
	echo $dir
	return 0 # echo then return 0 if it is success then the value will be returned.
}

# create file
function cf() {
dir=$(cd) # call another function
stop=N
while [[ $stop != "y" ]]
do
	read -p "create new txt file, give it a name: " fname
	touch "./$dir/$fname.txt"
	read -p "stop creating? (y/n)" stop
done
ls
}

cf # calling the function.


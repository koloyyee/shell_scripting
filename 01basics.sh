#!/bin/bash -u
PATH=/bin:/usr/bin export PATH
umask 022

# echo "hello world";

# expression 

(( val=1+2 ))
echo $val;
(( val++ ))
echo $val;

# conditional statement
# [ ] vs [[ ]]: [] - test | [[ ]] - conditional
# []: basic conditional, required for variables with spaces and special characters
# [[]]: advanced comparisons, string manipulation, arithmetics

read -p "enter a number between 1-10: " arg;
# arithmetic: -lt, -le, -gt, -ge, -eq, -ne
if [[ $arg -le 0 ]]; then 
	echo "hey this is too small!"
elif [[ $arg -lt 2 ]]; then
	echo $arg " is close to the mix!"
elif [[ $arg -ge 8 ]]; then
	echo $arg " is close to the max!"
elif [[ $arg -gt 10 ]]; then
	echo "too big!"
else
	echo  $arg " is just right!"
fi

# string and integer: ==, != , -n , -z
read -p "enter a passpharse: " pp1

if [  -z $pp1 ]; then 
	echo "first passphase cannot be empty.";
fi
read -p "retype the passpharse: " pp2
if [  -z $pp2 ]; then 
	echo "retyped passphase cannot be empty.";
fi

# nested ifs
if [[ -n $pp1 ]]; then 
	if [[ $pp1 != $pp2 ]]; then
		echo "they have to be the same."
	else 
		echo $pp1 
	fi
fi

# file checker: -s, -f, -e, -d, -w , -r, -x
read -p "Input file name: " file;
if [[ -f $file  && -e $file ]]; then
	echo "$file is a file"
	if [ -w $file ]; then 
		echo "it is writable."
	fi
	if [ -r $file ]; then 
		echo "it is readable."
	fi
	if [ -x $file ]; then 
		echo "it is executable."
	fi
fi


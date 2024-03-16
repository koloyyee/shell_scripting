#!/bin/bash -u
PATH=/bin:/usr/bin export PATH
umask 022

# 1st way
array1=('first' 'second' 'third')
echo "array1: ${array1[@]}"

# 2nd way
declare -a cars
cars=('Buick' 'Benz')
cars[0]='Honda' # overwrite the value
cars[9]='Toyota' # places at the end but the index is 9, very dangerous
cars+=('Mini')
cars[4]='KIA'
echo "cars: ${cars[@]}"

echo "cars indice are 0, 1, 4, 9"
echo ${cars[1]}
echo ${cars[1+3]} # 4
echo "index not 0, 1, 4, 9 will result in error."
echo "try yourself"
read -p "enter any number: " idx
echo ${cars[$idx]}

echo ${cars[*]} 

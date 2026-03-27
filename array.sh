#!/bin/bash 
#regular array
fruits=("apple" "banana" "cherry") 

echo "First fruit: ${fruits[0]}" 

for fruit in "${fruits[@]}" 
do 
    echo "Fruit: $fruit" 
done 

#associate array 
declare -A fruits_colors 

fruits_colors["apple"]="red" 
fruits_colors["banana"]="yellow" 
fruits_colors["cherry"]="red" 

echo "Associative Array:" 
for key in "${!fruits_colors[@]}" 
do
    echo "$key is ${fruits_colors[$key]}" 
done



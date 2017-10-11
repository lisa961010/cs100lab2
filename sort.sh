#!/bin/bash
ARRAY=(3 5 4 8 6 9 7 2 1)

echo "Before sorting:" ${ARRAY[*]}

for (( i=0 ; i<${#ARRAY[@]} ; i++ ))
do
    for (( j=${#ARRAY[@]}-1 ; j>$i ; j-- ))
    do
        if [[ ${ARRAY[j]} -lt ${ARRAY[j-1]} ]]
        then 
            t=${ARRAY[j]}
            ARRAY[j]=${ARRAY[j-1]}
            ARRAY[j-1]=$t
        fi
    done
done

echo "After sorting:" ${ARRAY[@]}

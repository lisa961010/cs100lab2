#!/bin/sh
echo -n "Please enter three numbers: "
read number1 number2 number3 number4 number5 number6

if [ $number1 -gt $number2 ];then
    max=$number1
else
    max=$number2
fi

if [ -z $number3 ]
then
    echo "Error: too few numbers!"
elif [ -z $number4 ]
then
    if [ $max -lt $number3 ]; then
        max=$number3
    fi
    echo "The largest number is" $max
else
    echo "Error: too many numbers!"
fi

exit 0

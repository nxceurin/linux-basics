#!/bin/bash

#CONTROL STRUCTURES
#T1: print Hello only if x=10
echo "Enter a number"
read x
if [ $x -eq 10 ]
then
    echo "Hello"
fi

#T2: for loop 1 to 5
for i in {1..5}
do
    echo "At number $i"
done

#T3: while loop till user enters 0
USER_INP=1
while [ $USER_INP != 0 ]
do
    echo "Enter a number:"
    read USER_INP
    echo "Yay you entered $USER_INP!"
done

#T4: until 5-1
#T5: case
echo "What quarter of the day is it? [1/2/3/4]"
read DAYQ
case $DAYQ in
    1)  echo "Good night!" ;;
    2)  echo "Good morning!" ;;
    3)  echo "Good afternoon!" ;;
    4)  echo "Good evening!" ;;
    *)  echo "Uh-oh, what time is that?" ;;
esac

#T6: nested ifs
echo "Enter a number!"
read USER_INP
if [ $USER_INP -le 100 ]
then
    if [ $USER_INP -ge 90 ]
    then
        echo "A grade"
    else if [ $USER_INP -le 85 ]
    then
        if [ $USER_INP -le 75 ]
        then
            echo "Not good enough:c"
        else
            echo "B grade"
        fi
        fi
    fi
fi

#T7: iterate over array of names
declare -a NAMES_SH=("elio" "kafka" "firefly" "blade" "sw" "sunday")
for i in ${NAMES_SH[@]}
do
    echo "$i"
done

#T8: loop breaks after third item
echo "Starting loop"
COUNTER=0
for i in {1..5}
do
    echo $i
    COUNTER+=1
    if [ $i == 3 ]
    then
        break
    fi
done

#T10:skip loop
declare -a NUMBERS=(4 7 9 11 12 13 16 17 19 21 24 27 29 30 32)
echo "Task 10 loop"
for i in ${NUMBERS[@]}
do
    if [ $(($i%2)) != 0 ] 
    then
        continue
    fi
    echo $i
done


#T9: while/sleep loop
echo "Starting loop"
while [ true ]
do
    echo "Hi! Ctrl+C to escape loop"
    sleep 5
done

#!/bin/bash

#FUNCTIONS
#T1:Print "hello, [name]!"
greet()
{
    NAME=$1
    echo "Hello, $NAME!"
}
echo "TASK 1 | Enter your name"
read UNAME
greet $UNAME

#T2:Sum
add()
{
    echo "Their sum is $(($1+$2))"
}
echo "TASK 2 | Enter first number"
read N1
echo "Enter second number"
read N2
add $N1 $N2

#T3: Check if num is even
is_even()
{
    if [ $(($1%2)) == 0 ]
    then
        echo "Entered number is even!!"
    else
        echo "Entered number is odd!"
    fi
}
echo "TASK 3 | Enter a number"
read OE_NUM
is_even $OE_NUM

#T4: count down to zero using recursion
countdown()
{
    NUM=$1
    echo $NUM
    if [[ $NUM -ge 1 ]]
    then
        countdown $(($NUM-1))
    fi
}

echo "TASK 4 | Enter a number"
read UNUM
countdown $UNUM

#T5: print max of an array
find_max()
{
    ARR=$@
    ARR_MAX=${ARR[1]}
    for i in ${ARR[@]}
    do
        if [[ $ARR_MAX -le $i ]]
        then
            ARR_MAX=$i
        fi
    done
    echo "TASK 5 | Array's max is $ARR_MAX"
}
declare -a T5_ARR=(7 4 9 49 27 21)
find_max "${T5_ARR[@]}"

#T6: calculate area of rectangle
calculate_area()
{
    echo "Area of the rectangle is $(($1*$2)) units"
}
echo "TASK 6 | Area of rectangle"
echo "length:"
read LEN
echo "width:"
read WID
calculate_area LEN WID

#T7: lower to upper
# convert_to_uppercase()
# {

# }

#T8: Checks if given arg is a directory
is_directory()
{
    if [ -d $1 ]
    then
        echo "Given path is a directory."
    else
        echo "Given path is a file."
    fi
}
echo "TASK 8 | Enter a valid path to a file or a directory"
read T8_PATH
is_directory $T8_PATH

#T9: use curl to download file
download_file()
{
    curl $1 $2
}
echo "TASK 9 | Download file"
echo "Enter URL"
read T9_URL
echo "Save file as?"
read T9_FNAME
download_file $T9_URL $T9_FNAME

#T10: create backup file
backup_file()
{
    FULLFILE=$1
    FILENAME=$(basename "${FULLFILE}")
    UPATH=$(dirname "${FULLFILE}")
    echo "$UPATH | $FILENAME"
    cp "$UPATH/$FILENAME" "$UPATH/${FILENAME%.*}.bak"
}
echo "TASK 10 | Enter file path"
read T10_PATH
backup_file "$T10_PATH"
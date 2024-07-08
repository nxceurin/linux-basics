#!/bin/bash

# INTRODUCTION TO BASH AND SHELL SCRIPTING
#TASK1: prints "Hello, World!" to the console
echo Hello, World!

#TASK2: prints current date/time
echo $(date +"%m/%d/%Y %H:%M")

#TASK3: print all files and directories in current dir
echo $(ls)

#TASK4: print name of current user
echo "Current user: $(whoami)"

#TASK5: get username from user and print
echo "Enter username: "
read USERNAME
echo "Hello, $USERNAME!"

#TASK6: check if given file exists in current dir
echo "Enter filename:"
read FILENAME
echo $([ -a $FILENAME ])



#TASK7: calculate and print factorial of a given number
#LEARNING NOTES: $1 $2...so on refer to the parameters passed to the function. $1= first argument, $2=second etc.
# fact() {
#     if ["$1" -gt "1"]; then
#         i=`expr $1 - 1`
#         j=`factorial $i`
#         k=`expr $1 \* $j`
#         echo $k
#     else
#         echo 1
#     fi
# }
# while:
# do
#     echo "Enter number:
#     read FACT_NUM
#     factorial $FACT_NUM
# done

#TASK8: check if give nunmber is odd or even
echo "Enter a number:"
read OE_NUM
if [ $(($OE_NUM%2)) == 0 ]
then
    echo "Even!"
else
    echo "Odd!"
fi

#TASK0: take dir as argument and print number of files
echo "Enter directory"
read T9_DIR
echo $(ls $T9_DIR| wc -l) files present in given directory.

#TASK10: Renames all .txt files to .bak
for file in *.txt; do
    mv "$file" "${file%.*}.bak"
done
echo "Renamed all .txt files to .bak files"
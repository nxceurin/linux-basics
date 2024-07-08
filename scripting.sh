#!/bin/bash
#TASK: prints "Hello, World!" to the console
echo Hello, World!

#TASK: prints current date/time
echo $(date +"%m/%d/%Y %H:%M")

#TASK: print all files and directories in current dir
echo $(ls)

#TASK: print name of current user
echo "Current user: $(whoami)"

#TASK: get username from user and print
echo "Enter username: "
read USERNAME
echo "Hello, $USERNAME!"

#TASK: check if given file exists in current dir
echo "Enter filename:"
read FILENAME
echo $([ -a $FILENAME ])



#TASK: calculate and print factorial of a given number
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

#TASK: check if give nunmber is odd or even
echo "Enter a number:"
read OE_NUM
echo $([[$(($OE_NUM%2)) -eq "0"]]? "Even!" : "Odd!")

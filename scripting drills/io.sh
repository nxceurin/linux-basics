#!/bin/bash

#INPUT AND OUTPUT DRILLS
#T1: output line# in given file till empty path is input
echo "TASK 1 | print lc till no input"
read T1_FNAME
while [ -n "$T1_FNAME" ]
do
    echo "Lines in file= $(wc -l $T1_FNAME)"
    echo "Enter file path... leave blank to exit loop."
    read T1_FNAME
done

#T2: redirect output of ls to directory_list.txt
echo "TASK 2"
ls > directory_list.txt

#T3: sum of numbers till user enters 'quit'
T3_SUM=0
INP=0
while [ "$INP" != "quit" ]
do
    echo "TASK 3 | Enter number. Enter quit to quit (canse sensitive)."
    read INP
    if [[ $INP =~ ^[0-9]+$ ]]; then
        T3_SUM=$(($T3_SUM+$INP))
    fi
done
echo "Final sum= $T3_SUM"

#T4: Uses a here document to write text to a file
cat > 'test_file.txt' <<EndOfHereDoc
Hello! This is line 1~
Here documents are like code blocks!
They're a part of a bash script~
... And not a separate document!
EndOfHereDoc
echo "TASK 4 | [COMPLETE] do 'cat test_file.txt' to view the created file."

#T5: execute given command
echo "TASK 5 | Enter a command"
read T5_COMM
eval "$T5_COMM"

#T6: pipe output of ls- l into awk to print only file names
echo "TASK 6"
ls -l | awk '$1 ~ "^-" { print $9 }'

#T7: grep on string input
echo "TASK 7 | Enter word"
read T7_WORD
grep "$T7_WORD" /Users/harine/work/words

#T8: read a csv file and print reversed fields

#T9: concatenate file contents into a new file
FILENAMES=()
INP=''
while [ True ]
do
    echo "Enter file name. Enter 'quit' to stop loop."
    read INP
    if [ $INP == 'quit' ]; then
        break
    else
        cat $INP >> newfile.txt
    fi
done
echo "Task completed. Enter cat newfile.txt to view the output file."
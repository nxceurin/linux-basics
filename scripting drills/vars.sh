
# VARIABLES AND DATA TYPES
#TASK1: define variable w/ name and print
MY_NAME="rin"
echo $MY_NAME

#TASK2: Age i/o
echo "Enter age"
read USR_AGE

#TASK3: set variable from env var or use default

#TASK4: concat two strings
STR1="joint"
STR2="string"
CONCAT_STRING="STR1 STR2"
echo $CONCAT_STRING

#TASK6: print file extension of given file
echo "Provide a filename"
read FILENAME
FULLFILE=$(ls | grep $FILENAME)
echo "Extension: ${FULLFILE##*.}"
# ^ LIMITATION: throws error if path contains spaces

#TASK7: fahrenheit to celsius
echo "Enter temp (in F):"
read F_TEMP
C_TEMP=$(($((F_TEMP-32))*5/9))
echo "Temp in Celsius: $C_TEMP"

#TASK8: curl
URL="https://static.wikia.nocookie.net/houkai-star-rail/images/5/5b/NPC_Sunday.png/revision/latest?cb=20240328013252"
curl $URL --output sample
echo "Saved file as sample"
ls | grep 'sample'

#TASK9: check if input is string or num
echo "Provide input"
read USER_INP
if [[ $USER_INP =~ '^[0-9]+$' ]] ; then
    echo "Number!"
else
    echo "String~"
fi

#TASK10
echo "Current shell= $(printenv SHELL)"
echo "Home directory= $(printenv HOME)"

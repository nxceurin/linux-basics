# 

Repository containing the codes/scripts for [Training-Linux](https://training.demos.aganitha.ai/linux/01-basics/)

## Basic file operations (complete)
For `grep`, PCRE regex is used (`grep -P`). <br><br>
```
1. ls | grep -P '\.py$'
2. ls | grep -P '^a\w*(\.py)$
```
if both cases are to be considered, `ls | grep -P '^[aA]\w*(\.py)$` <br>
```
3. ls -R | grep -P '^a\w*(\.js)$
4. mkdir /Users/harine/docs
5. touch file-{1..10}.txt
6. mkdir ../docs-bakcup
   mv file-{5..10}.txt ../docs-backup
7. cp ../docs-backup/file-6.txt .
8. cp ~/docs-backup/file-7.txt ~/docs
```
For tasks 9-17, assume user is in home directory.<br>744 will be considered as the default for files/directories wherever permissions are not explicitly defined.
```
9. chmod 740 docs/file-1.txt
or chmod u=rwx,g=r,o-rwx docs/file-1.txt

10. chmod 525 docs
or  chmod u=rx,g=w,o=rx docs

11. chmod g-w,o-w docs/file-2.txt
12. chmod u+x,g+x,o+x script.sh
    chmod o-rw shared
13. chmod +t uploads
or  chmod 1744 uploads

14. chmod 664 notes.txt
    chmod u=rw,g=rw,o=r notes.txt

15. chmod g-x,o-x backup.sh
16. chmod g+x,o+x program.bin
17. chmod u+s executable.exe
```
<br><br>
## Sed Drills (complete)
Using `gsed` (for GNU-sed; macOS uses BSD-sed and causes issues with some commands).<br>
Replace with `sed` for any other OS.
```
1. gsed -z 's/apple/orange/' file-1.txt
2. gsed -i '/error/d' file-1.txt
3. gsed -i 's/$/ Hello, world!/' file-1.txt
4. gsed -i 's/^Title:/Subject:/g' file-1.txt
5. gsed -i '/^$/d;G' file-1.txt
6. gsed -n '/important/p' file-1.txt
7. gsed -i 's/cat/dog/Ig' file-1.txt
8. gsed -i '$d' file-1.txt
9.
10. gsed -i 's/"//g' testcsv.csv
```
<br><br>
## Basic searching of files
```
1. wc words
2. gsed '/\S*s\S*/d' words > words1
```
For both cases, `gsed '/\S*[sS]\S*/d' words > words1`
```
3. gsed '/^[A-Z]/d' words1 > words2
4.
5.
6.
7.
8.
9. grep '(\S*)a\1e\1i\1o\1u\1' words
10. grep '^q' words
11.
```
<br><br>
## Basic commands on file names
```
1. tree
2. 
```
<br><br>
## Core Utils
```
```
<br><br>
## Linux Drills for Advanced Practice
```
cd
touch Projects/report.txt
echo $(date) > Projects/report.txt
echo 'Adding some text here' >> Projects/report.txt
```
```
grep 'error' /var/log/system.log > error_logs.txt
```
```
```
```
mkdir ../TextFiles && mv *.txt ../TextFiles
ln -s ../Textfiles ~
```
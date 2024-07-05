# 

Repository containing the codes/scripts for [Training- Linux](https://training.demos.aganitha.ai/linux/01-basics/)

## Basic file operations
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
17. 
```
<br><br>
## Sed Drills
```
1. sed 's/apple/orange' file-1.txt
```
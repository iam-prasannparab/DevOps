$ cat commands.txt
ls                              : List the names of files and subfolders the current directory.
ls -l                           : Also shows details of each items displayed, such as permissions and the time/date when the item was                          last modified
ls -a                           : Also displays the hidden files/folders. May combined with ls -l to form ls -al.
ls -t                           : Sort the files/folders according to last modified time/date, starting with the most recently
                                  modified item.


cd                              : To the $HOME directory
cd ..                           : Up one level to enclosing folder or parent directory.
cd/etc                          : To the /etc directory.



cmp A B                         : Compare two files A and B for samenes No output if A and B are identical, outputs character and line                         number otherwise.
diff A B                        : Compare the files A and B for differ outputs the difference.

pwd                             : Display the path of the current working directory.

mkdir X                         : Make a new directory named X inside the current directory.

mv A B                          : Move a file from path A to path B.
cp A B                          : Copy a file from path A to path B.
cp -r Y Z                       : Recursively copy a directory Y and its contents to Z.

rm X                            : Remove (delete) X permanently.
rm -r Y                         : Forcibly remove directiry Y and its contents recursively.
rmdir Y                         : Remove the directory Y permanently, provided Y is empty.

touch X                         : Create an empty file X.

cat X                           : View cintents of X.
cat -b X                        : Also display line numbers as well.
wc X                            : Display word count of X.
head X                          : Display the first 10 lines of X. If more than a single file is specified, each f precede by a header                         consisting of the string "===> X <===" where "X" is the name of the file.
head -n 4 X                     : Show the first 4 lines of X.
tail X                          : Display the last (10, by default) lines of X.
tail -n 4 X                     : Display the last 4 lines of X.

less                            : Read a file with forward and backward navigation. Often used with pipe, eg: cat file.txt | less

echp "TEXT"                     : Display a line of TEXT or the contents of a variable.

cmd > file                      : Redirect the output of cmd to file. Overwrites pre-existing content of file.
cmd >> file                     : Append output of cmd to file.

grep patt /path/to/src          : Search for a text pattern patt in X. Commonly used with pipe. eg: grep "patt" X | head
grep -r patt /path/to/src       : Search recusively for a text pattenr patt.
grep -i patt /path/to/src       : Perform case-insensitive matching on X. Ignore the case of patt.

find                            : Find files
find /path/to/src -name "*.sh"  : Find all files in path matching the pattern "*.sh" in the file name.
find /home -size +100M          : Find all files in the /home dorectory larger than 100MB.

locate name                     : Find files and directories by name.

sort X                          : Arrange lines of text in X alphabetically or numerically.

tar                             : Manipulate archives with .tar extension.

gzip                            : Manipulate archives with .gz extension.
gzip Y                          : Create a gzio archive named Y.gz containing Y.
gzip -l Y.gz                    : List contents of gzip archive Y.gz.



========================================FILE TRANSFER=================================================================================

ssh user@access                 : Connect to access as user.
ssh access                      : Connect to access as your local username.
ssh -p port user@access         : Connect to access as user using port.


======================================================================================================================================

File Permissions

chmod permission file           : Change permissions of a file or directory permissions may be of the form or a three-digit octal
                                        number.
chown user2 file                : Change the owner of a file to user2
chgrp group2 file               : Change the group of a file to group2

--------------------------------------------------------------------------------------------------------------------------------------

0               No Permissions                                                 -rwx
1               Execute permission only                                        =x
2               Write permission only                                          =w
3               Write and execute permissions only: 2 + 1 = 3                  =wx
4               Read permission only                                           =r
5               Read and execute permissions only: 4 + 1 = 5                   =rx
6               Read and write permissions only: 4 + 2 = 6                     =rw
7               All permissions: 4 + 2 + 1 = 7                                 =rwx


chmod 777 testfile              : allow all users to execute the file
chmod 177 testfile              : restrict current user (u) to execute-only, while the group (g) and other user (o) have read, write                           and write only; others(o), read and execute only.
--------------------------------------------------------------------------------------------------------------------------------------

uname                           : Show the linux system information
whoami                          : Display what user you are logged in as.
uptime                          : Show how long the system is running and load information.
sudo                            : Superuser; use this before a command that requires root access.
sudo su                         : To change the user to root user.
cal                             : Show calendar where current date is highlighted.
date                            : Show the current date and time of machine.
shutdown                        : Shut down the system.
reboot                          : Restart the system.
last reboot                     : show reboot history.
man COMMAND                     : Shows the manual for a given COMMAND. To exit the manual, press "q".
hostname                        : Show system host name.
hostname -I                     : Display IP address of host.
useradd                         : To create new user.
userdel                         : delete the user.
groupadd                        : To create new group.
======================================================================================================================================

df                              : Display free disk space
du                              : Show file/folder sizes on disk
du -ah                          : disk usage in human readable format. (KB, MB, etc.)
free -h                         : Display free and used memory in human readable units.
free -m                         : Display free and used memory in MB.
free -g                         : Display free and used memory in GB.

kill PID                        : kill a process specified by its process ID PID, which you obtain using the ps command.


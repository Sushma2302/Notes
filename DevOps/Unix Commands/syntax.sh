#######
#Commands:
#######
$users
$who
$logout
$init 0 #Powers off the system using predefined scripts to synchronize and
$halt #Brings the system down immediately
$init 0 #Powers off the system using predefined scripts to synchronize and clean up the system prior to shutting down
$poweroff

$into #a tree-like structure called the filesystem.
$
$ls
$ls -l
$ vi filename
$ wc filename
$ cat -b filename
$ cat filename
$ wc filename
$ wc filename1 filename2 filename3
$ cp filename copyfile
$ mv old_file new_file
$ rm filename
$ rm filename
$ rm filename1 filename2 filename3

#Home Directory
#The directory in which you find yourself when you first login is called your home directory.
#You will be doing much of your work in your home directory and subdirectories that you'll
#be creating to organize your files.
#You can go in your home directory anytime using the following command −
$cd ~

#Here ~ indicates the home directory. Suppose you have to go in any other user's home
#directory, use the following command –
$cd ~username

#To go in your last directory, you can use the following command –
$cd -

#  Absolut filenames   /etc/passwd
#A pathname can also be relative to your current working directory  etc/passwd

$ls dirname

$ls /usr/local

$mkdir /tmp/test-dir
$
#This command creates the directory test-dir in the /tmp directory. The mkdir command
#produces no output if it successfully creates the requested directory.
$mkdir mydir
$mkdir dirname


$mkdir docs pub
$mkdir /tmp/amrood/test
#mkdir: Failed to make directory "/tmp/amrood/test";
#No such file or directory

#In such cases, you can specify the -p option to the mkdir command. It creates all the
#necessary directories for you. For example –
$mkdir -p /tmp/amrood/test

$rmdir dirname1 dirname2 dirname3

$cd dirname
$
Here, dirname is the name of the directory that you want to change to. For example, the
command –
$cd /usr/local/bin
$
#Changes to the directory /usr/local/bin. From this directory, you can cd to the directory
#/usr/home/amrood using the following relative path –
$cd ../../home/amrood

#Renaming Directories
#The mv (move) command can also be used to rename a directory. The syntax is as
#follows:
$mv olddir newdir


$ls -la

#There are two ways to use chmod — the symbolic mode and the absolute mode.

#symbolic mode

$ls -l testfile
$chmod o+wx testfile # to change other permossions
$chmod u-x testfile # to change user(Owner) permossions
$chmod g=rx testfile # to change the group permossions
$chmod o+wx,u-x,g=rx testfile

#absolute mode

#0 No permission ---
#1 Execute permission --x
#2 Write permission -w-
#3 Execute and write permission: 1 (execute) + 2 (write) = 3 -wx
#4 Read permission r--
#5 Read and execute permission: 4 (read) + 1 (execute) = 5 r-x
#6 Read and write permission: 4 (read) + 2 (write) = 6 rw-
#7 All permissions: 4 (read) + 2 (write) + 1 (execute) = 7 rwx

$ chmod 755 testfile
$chmod 743 testfile
$chmod 043 testfile

#chown − The chown command stands for "change owner" and is used to change
#the owner of a file.
#chgrp − The chgrp command stands for "change group" and is used to change
#the group of a file.

$ chown user filelist
$ chown amrood testfile
$ chgrp group filelist
$ chgrp special testfile

#################################################################################################################
Need to unsestand this 
#################################################################################################################
Changes the group of the given file to special group.
SUID and SGID File Permission
Often when a command is executed, it will have to be executed with special privileges in
order to accomplish its task.
As an example, when you change your password with the passwd command, your new
password is stored in the file /etc/shadow.
As a regular user, you do not have read or write access to this file for security reasons,
but when you change your password, you need to have the write permission to this file.
This means that the passwd program has to give you additional permissions so that you
can write to the file /etc/shadow.
Additional permissions are given to programs via a mechanism known as the Set User ID
(SUID) and Set Group ID (SGID) bits.
Unix
25
When you execute a program that has the SUID bit enabled, you inherit the permissions
of that program s owner. Programs that do not have the SUID bit set are run with the
permissions of the user who started the program.
This is the case with SGID as well. Normally, programs execute with your group
permissions, but instead your group will be changed just for this program to the group
owner of the program.
The SUID and SGID bits will appear as the letter "s" if the permission is available. The
SUID "s" bit will be located in the permission bits where the owners’ execute permission
normally resides.
For example, the command -
$ ls -l /usr/bin/passwd
-r-sr-xr-x 1 root bin 19031 Feb 7 13:47 /usr/bin/passwd*
$
Shows that the SUID bit is set and that the command is owned by the root. A capital letter
S in the execute position instead of a lowercase s indicates that the execute bit is not set.
If the sticky bit is enabled on the directory, files can only be removed if you are one of the
following users −
 The owner of the sticky directory
 The owner of the file being removed
 The super user, root
To set the SUID and SGID bits for any directory try the following command −
$ chmod ug+s dirname
$ ls -l
drwsr-sr-x 2 root root 4096 Jun 19 06:45 dirname
#################################################################################################################
#################################################################################################################


# Note 

When you log in to the system, the shell undergoes a phase called initialization to set
up the environment. This is usually a two-step process that involves the shell reading the
following files −
 /etc/profile
 profile
The process is as follows –
 The shell checks to see whether the file /etc/profile exists.
 If it exists, the shell reads it. Otherwise, this file is skipped. No error message is
displayed.
 The shell checks to see whether the file .profile exists in your home directory. Your
home directory is the directory that you start out in after you log in.
 If it exists, the shell reads it; otherwise, the shell skips it. No error message is
displayed.
As soon as both of these files have been read, the shell displays a prompt –
$
This is the prompt where you can enter commands in order to have them executed.
Note − The shell initialization process detailed here applies to all Bourne type shells, but
some additional files are used by bash and ksh.

#################################################################################################################


There are variables like PS1 and PS2 which are discussed in the next section.
PS1 and PS2 Variables
The characters that the shell displays as your command prompt are stored in the variable
PS1. You can change this variable to be anything you want. As soon as you change it, it will
be used by the shell from that point on.
For example, if you issued the command −
$PS1='=>'
=>
=>
=>
Your prompt will become =>. To set the value of PS1 so that it shows the working
directory, issue the command –
=>PS1="[\u@\h \w]\$"
[root@ip-72-167-112-17 /var/www/tutorialspoint/unix]$
[root@ip-72-167-112-17 /var/www/tutorialspoint/unix]$
The result of this command is that the prompt displays the user's username, the machine's
name (hostname), and the working directory.


Escape Sequence Description
\t Current time, expressed as HH:MM:SS
\d Current date, expressed as Weekday Month Date
\n Newline
\s Current shell environment
\W Working directory
\w Full path of the working directory
\u Current user’s username
\h Hostname of the current machine
\# Command number of the current command. Increases when a
new command is entered
\$ If the effective UID is 0 (that is, if you are logged in as root), end
the prompt with the # character; otherwise, use the $ sign




#Environment Variables

#Following is the partial list of important environment variables. These variables are set and
#accessed as mentioned below –
#Variable Description

DISPLAY
Contains the identifier for the display that X11 programs should
use by default.
HOME
Indicates the home directory of the current user: the default
argument for the cd built-in command.
IFS
Indicates the Internal Field Separator that is used by the
parser for word splitting after expansion.
LANG
LANG expands to the default system locale; LC_ALL can be used
to override this. For example, if its value is pt_BR, then the
language is set to (Brazilian) Portuguese and the locale to
Brazil.
LD_LIBRARY_PATH
A Unix system with a dynamic linker, contains a colonseparated
list of directories that the dynamic linker should
search for shared objects when building a process image after
exec, before searching in any other directories.
PATH
Indicates the search path for commands. It is a colon-separated
list of directories in which the shell looks for commands.
PWD
Indicates the current working directory as set by the cd
command.
RANDOM
Generates a random integer between 0 and 32,767 each time
it is referenced.
SHLVL
Increments by one each time an instance of bash is started.
This variable is useful for determining whether the built-in exit
command ends the current session.
TERM Refers to the display type.
TZ Refers to Time zone. It can take values like GMT, AST, etc.
UID
Expands to the numeric user ID of the current user, initialized
at the shell startup.


#You use the Unix mail command to send and receive mail. Here is the syntax to send an
#email −
$mail [-s subject] [-c cc-addr] [-b bcc-addr] to-addr
#Here are important options related to mail command:
#Option Description
#-s 	Specifies subject on the command line.
#-c 	Sends carbon copies to the list of users. List should be a commaseparated
#list 	of names.
#-b	 	Sends blind carbon copies to list. List should be a commaseparated
#list of names.
#Unix



Following is an example to send a test message to admin@yahoo.com.
$mail -s "Test Message" admin@yahoo.com
You are then expected to type in your message, followed by "control-D" at the beginning
#of a line. To stop, simply type dot (.) as follows –
#Hi,
This is a test
.
Cc:
#You can send a complete file using a redirect < operator as follows –
$mail -s "Report 05/06/07" admin@yahoo.com < demo.txt
#To check incoming email at your Unix system, you simply type email as follows –
$mail
#no email

#################################################################################################################


$ls -l | grep "Aug"

There are various options which you can use along with the grep command –
Option Description
-v Prints all lines that do not match pattern.
-n Prints the matched line and its line number.
-l Prints only the names of files with matching lines (letter "l")
-c Prints only the count of matching lines.
-i Matches either upper or lowercase.


$ls -l | grep -i "carol.*aug"

#Sorting 

$sort filename

#options that control the sorting –
#Option Description
#-n Sorts numerically (example: 10 will sort after 2), ignores blanks
#and tabs.
#-r Reverses the order of sort.
#-f Sorts upper and lowercase together.
#+x Ignores first x fields when sorting.
#More than two commands may be linked up into a pipe. Taking a previous pipe example
#using grep, we can further sort the files modified in August by the order of size.
#The following pipe consists of the commands ls, grep, and sort −
$ls -l | grep "Aug" | sort +4n
-rw-rw-r-- 1 carol doc 1605 Aug 23 07:35 macros
-rw-rw-r-- 1 john doc 2488 Aug 15 10:51 intro
-rw-rw-rw- 1 john doc 8515 Aug 6 15:30 ch07
-rw-rw-rw- 1 john doc 11008 Aug 6 14:10 ch02

#This pipe sorts all files in your directory modified in August by the order of size, and prints
#them on the terminal screen. The sort option +4n skips four fields (fields are separated
#by blanks) then sorts the lines in numeric order.

#################################################################################################################

#The pg and more Commands

$ls -l | grep "Aug" | sort +4n | more
-rw-rw-r-- 1 carol doc 1605 Aug 23 07:35 macros
-rw-rw-r-- 1 john doc 2488 Aug 15 10:51 intro
-rw-rw-rw- 1 john doc 8515 Aug 6 15:30 ch07
-rw-rw-r-- 1 john doc 14827 Aug 9 12:40 ch03
.
.
.
-rw-rw-rw- 1 john doc 16867 Aug 6 15:56 ch05
--More--(74%)
#The screen will fill up once the screen is full of text consisting of lines sorted by the order
#of the file size. At the bottom of the screen is the more prompt, where you can type a
#command to move through the sorted text.
#Once you are done with this screen, you can use any of the commands listed in the
#discussion of the more program.

#################################################################################################################

#Background Processes

if the ls
command wants any input (which it does not), it waits for it from the keyboard.
While a program is running in the foreground and is time-consuming, no other commands
can be run (start any other processes) because the prompt would not be available until
the program finishes processing and comes out.

A background process runs without being connected to your keyboard. If the background
process requires any keyboard input, it waits.
The advantage of running a process in the background is that you can run other
commands; you do not have to wait until it completes to start another!
The simplest way to start a background process is to add an ampersand (&) at the end of
the command.
$ls ch*.doc &

Press the Enter key and you will see the following −
[1] + Done ls ch*.doc &


Listing Running Processes
It is easy to see your own processes by running the ps (process status) command as
follows −
$ps
PID TTY TIME CMD

$ps -f #which provides more information

#Output
UID PID PPID C STIME TTY TIME CMD
amrood 6738 3662 0 10:23:03 pts/6 0:00 first_one
amrood 6739 3662 0 10:22:54 pts/6 0:00 second_one
amrood 3662 3657 0 08:10:53 pts/6 0:00 -ksh
amrood 6892 3662 4 10:51:50 pts/6 0:00 ps -f

UID    -- User ID that this process belongs to (the person running it)
PID    -- Process ID
PPID   -- Parent process ID (the ID of the process that started it)
C      -- CPU utilization of process
STIME  -- Process start time
TTY    -- Terminal type associated with the process
TIME   -- CPU time taken by the process
CMD    -- The command that started this process

#@There are other options which can be used along with ps command −
#@Option Description
-a Shows information about all users
-x Shows information about processes without terminals
-u Shows additional information like -f option
-e Displays extended information

##Stopping Processes

$ps -f # Get the process id 

$kill ProcessID
$kill -9 ProcessID # -9 will kill the parent process too


#################################################################################################################

#Parent and Child Processes

Each unix process has two ID numbers assigned to it: The Process ID (pid) and the Parent
process ID (ppid). Each user process in the system has a parent process.
Most of the commands that you run have the shell as their parent. Check the ps -f example
where this command listed both the process ID and the parent process ID.
Zombie and Orphan Processes
Normally, when a child process is killed, the parent process is updated via a SIGCHLD
signal. Then the parent can do some other task or restart a new child as needed. However,
sometimes the parent process is killed before its child is killed. In this case, the "parent of
all processes," the init process, becomes the new PPID (parent process ID). In some
cases, these processes are called orphan processes.
When a process is killed, a ps listing may still show the process with a Z state. This is a
zombie or defunct process. The process is dead and not being used. These processes are
different from the orphan processes. They have completed execution but still find an entry
in the process table.

#################################################################################################################


#Daemon Processes
Daemons are system-related background processes that often run with the permissions of
root and services requests from other processes.
A daemon has no controlling terminal. It cannot open /dev/tty. If you do a "ps -ef" and
look at the tty field, all daemons will have a ? for the tty.
To be precise, a daemon is a process that runs in the background, usually waiting for
something to happen that it is capable of working with. For example, a printer daemon
waiting for print commands.
If you have a program that calls for lengthy processing, then it’s worth to make it a daemon
and run it in the background.

#################################################################################################################


$top # Displays the top processes

#Job ID Versus Process ID
Background and suspended processes are usually manipulated via job number (job ID).
This number is different from the process ID and is used because it is shorter.
In addition, a job can consist of multiple processes running in a series or at the same time,
in parallel. Using the job ID is easier than tracking individual processes.

#################################################################################################################

#PING

The ping command sends an echo request to a host available on the network. Using this
command, you can check if your remote host is responding well or not.
The ping command is useful for the following −
 Tracking and isolating hardware and software problems.
 Determining the status of the network and various foreign hosts.
 Testing, measuring, and managing networks.

$ping hostname or ip-address
$ping google.com

The above command would prompt you for the login ID and the password. Once you are
authenticated, you can access the home directory of the login account and you would be
able to perform various commands.

Command 			Description

put 				filename Uploads filename from the local machine to the remote machine.
get 				filename Downloads filename from the remote machine to the local machine.
mput 				file list Uploads more than one file from the local machine to the remote machine.
mget 				file list Downloads more than one file from the remote machine to the local machine.
prompt off			Turns the prompt off. By default, you will receive a prompt to upload
					or download files using mput or mget commands.
prompt on 			Turns the prompt on.
dir					Lists all the files available in the current directory of the remote machine.
cd dirname 			Changes directory to dirname on the remote machine.
lcd dirname 		Changes directory to dirname on the local machine.
quit 				Helps logout from the current login.

# Note

It should be noted that all the files would be downloaded or uploaded to or from the current
directories. If you want to upload your files in a particular directory, you need to first
change to that directory and then upload the required files.

#The telnet Utility

C:>telnet amrood.com

#The finger Utility

The finger command displays information about users on a given host. The host can be
either local or remote.
Finger may be disabled on other systems for security reasons.

$ finger
$ finger amrood

#################################################################################################################

#vi Editor

vi filename			Creates a new file if it already does not exist, otherwise opens an existing file.
vi -R filename 		Opens an existing file in the read-only mode.

While working with the vi editor, we usually come across the following two modes −

#Command mode − 
This mode enables you to perform administrative tasks such
as saving the files, executing the commands, moving the cursor, cutting (yanking)
and pasting the lines or words, as well as finding and replacing. In this mode,
whatever you type is interpreted as a command.

#Insert mode − 
This mode enables you to insert text into the file. Everything thats
typed in this mode is interpreted as input and placed in the file.
vi always starts in the command mode. To enter text, you must be in the insert mode
for which simply type i. To come out of the insert mode, press the Esc key, which will take
you back to the command mode.

press the Esc key twice; this will take
you to the command mode.

The command to quit out of vi is :q.
he command to quit out of vi without
saving is :q!

Save the comtent  :w.
Save and quit :wq

When you are in command mode type 'zz' to save and quit, it works as :wq

If you want to save the content with another file name (Like SaveAs) provide the file name followed by :wq
Ex: :wq filename_2

#Moving within a File
To move around within a file without affecting your text, you must be in the command
mode

#Command 	Description
nk 			Moves the cursor up one line
nj 			Moves the cursor down one line
nh 			Moves the cursor to the left one character position
nl 			Moves the cursor to the right one character position

			In above commands 'n' represents number of lines 

0 or | 		Positions the cursor at the beginning of a line
w 			Positions the cursor to the next word
b 			Positions the cursor to the previous word
( 			Positions the cursor to the beginning of the current sentence
) 			Positions the cursor to the beginning of the next sentence
E 			Moves to the end of the blank delimited word
{ 			Moves a paragraph back
} 			Moves a paragraph forward
[[ 			Moves a section back
]] 			Moves a section forward
n| 			Moves to the column n in the current line
1G 			Moves to the first line of the file
G  			Moves to the last line of the file
nG 			Moves to the nth line of the file
:n 			Moves to the nth line of the file
fc 			Moves forward to c
Fc 			Moves back to c
H  			Moves to the top of the screen
nH 			Moves to the nth line from the top of the screen
M  			Moves to the middle of the screen
L  			Move to the bottom of the screen
nL 			Moves to the nth line from the bottom of the screen
:x 			Colon followed by a number would position the cursor on the line number represented by x

#Control Commands

CTRL+d 		Moves forward 1/2 screen
CTRL+f 		Moves forward one full screen
CTRL+u 		Moves backward 1/2 screen
CTRL+b 		Moves backward one full screen
CTRL+e 		Moves the screen up one line
CTRL+y 		Moves the screen down one line
CTRL+u 		Moves the screen up 1/2 page
CTRL+d 		Moves the screen down 1/2 page
CTRL+b 		Moves the screen up one page
CTRL+f 		Moves the screen down one page
CTRL+I 		Redraws the screen

#Editing Files
#To edit the file, you need to be in the insert mode. There are many ways to enter the
#insert mode from the command mode −

Command 	Description
i 			Inserts text before the current cursor location
I 			Inserts text at the beginning of the current line
a 			Inserts text after the current cursor location
A 			Inserts text at the end of the current line
o 			Creates a new line for text entry below the cursor location
O 			Creates a new line for text entry above the cursor location
			
#Deleting Characters

x 			Deletes the character under the cursor location
X 			Deletes the character before the cursor location
dw 			Deletes from the current cursor location to the next word
d^			Deletes from the current cursor position to the beginning of the line
d$ 			Deletes from the current cursor position to the end of the line
D 			Deletes from the cursor position to the end of the current line
dd			Deletes the line the cursor is on

Note: Most commands in vi can be prefaced by the number of times you
want the action to occur. For example, 2x deletes two characters under the cursor location
and 2dd deletes two lines the cursor is on.

#Deleting Characters

cc 			Removes the contents of the line, leaving you in insert mode.
cw  		Changes the word the cursor is on from the cursor to the lowercase w end of the word.
r 			Replaces the character under the cursor. vi returns to the command
			mode after the replacement is entered.
R 			Overwrites multiple characters beginning with the character currently
			under the cursor. You must use Esc to stop the overwriting.
s   		Replaces the current character with the character you type. Afterward,
			you are left in the insert mode.
S			Deletes the line the cursor is on and replaces it with the new text.
			After the new text is entered, vi remains in the insert mode.

#Copy and Paste Commands

You can copy lines or words from one place and then you can paste them at another place
using the following commands −

#Command Description

yy 			Copies the current line.
yw			Copies the current word from the character the lowercase w cursor is
			on, until the end of the word.
p 			Puts the copied text after the cursor.
P 			Puts the yanked text before the cursor.
J 			Joins the current line with the next one. A count of j commands join
			many lines.
'<<' 		Shifts the current line to the left by one shift width.
>> 			Shifts the current line to the right by one shift width.
~ 			Switches the case of the character under the cursor.
^G 			Press Ctrl and G keys at the same time to show the current filename
			and the status.
U 			Restores the current line to the state it was in before the cursor entered
			the line.
u 			This helps undo the last change that was done in the file. Typing 'u'
			again will re-do the change.
J 			Joins the current line with the next one. A count joins that many lines.
:f 			Displays the current position in the file in % and the file name, the total
			number of file.
:f 			filename Renames the current file to filename.
:w 			filename Writes to file filename.
:e 			filename Opens another file with filename.
:cd 		dirname Changes the current working directory to dirname.
:e 			# Toggles between two open files.
:n 			In case you open multiple files using vi, use :n to go to the next file in
			the series.
:p 			In case you open multiple files using vi, use :p to go to the previous file
			in the series.
:N 			In case you open multiple files using vi, use :N to go to the previous
			file in the series.
:r 			file Reads file and inserts it after the current line.
:nr 		file Reads file and inserts it after the line n.


##################################################################################################

#Word and Character Searching -- Need to check

##################################################################################################


#Set Commands

Command 	Description
:set ic 	Ignores the case when searching
:set ai 	Sets autoindent
:set noai 	Unsets autoindent
:set nu 	Displays lines with line numbers on the left side
:set sw		Sets the width of a software tabstop. For example, you would set a shift 
			width of 4 with this command — :set sw=4
:set ws		If wrapscan is set, and the word is not found at the bottom of the file,
			it will try searching for it at the beginning
:set wm		If this option has a value greater than zero, the editor will automatically
			"word wrap". For example, to set the wrap margin to two characters,
			you would type this: :set wm=2
:set ro 	Changes file type to "read only"
:set term 	Prints terminal type
:set bf 	Discards control characters from input

#Running Commands

The vi has the capability to run commands from within the editor. To run a command, you
only need to go to the command mode and type :! command.


#Types of Shell

In Unix, there are two major types of shells:
Bourne shell — If you are using a Bourne-type shell, the $ character is the default prompt.
C shell — If you are using a C-type shell, the % character is the default prompt.

The Bourne Shell has the following subcategories –
	Bourne shell (sh)
	Korn shell (ksh)
	Bourne Again shell (bash)
	POSIX shell (sh)
The different C-type shells follow –
	C shell (csh)
	TENEX/TOPS C shell (tcsh)
	
	
#####Shell Comments

#!/bin/bash -- # Indicates that this line is commented
# Author : Zara Ali

Note: To execute a program available in the current directory, use ./program_name

# Sample script to Read and print the date in STDOUT

echo "What is your name?"
read PERSON
echo "Hello, $PERSON"

#Variable Names

The name of a variable can contain only letters (a to z or A to Z), numbers ( 0 to 9) or the
underscore character ( _).
By convention, Unix shell variables will have their names in UPPERCASE.

####Defining Variables

variable_name=variable_value

NAME="Zara Ali"

Shell enables you to store any value you want in a variable. For example −
VAR1="Zara Ali"
VAR2=100

To access the value stored in a variable, prefix its name with the dollar sign ($) −

NAME="Zara Ali"
echo $NAME

####Read-only Variables
Shell provides a way to mark variables as read-only by using the read-only command.
After a variable is marked read-only, its value cannot be changed.
NAME="Zara Ali"readonly NAME


#####Variables
Unsetting or deleting a variable directs the shell to remove the variable from the list of
variables that it tracks. Once you unset a variable, you cannot access the stored value in
the variable.
unset variable_name

You cannot use the unset command to unset variables that are marked readonly.

#####################Variable Types


When a shell is running, three main types of variables are present −

Local Variables − 
A local variable is a variable that is present within the current
instance of the shell. It is not available to programs that are started by the shell.
They are set at the command prompt.

Environment Variables − 
An environment variable is available to any child
process of the shell. Some programs need environment variables in order to
function correctly. Usually, a shell script defines only those environment variables
that are needed by the programs that it runs.

Shell Variables − 
A shell variable is a special variable that is set by the shell and
is required by the shell in order to function correctly. Some of these variables are
environment variables whereas others are local variables.

####Special variable
$echo $$  --command writes the PID of the current shell

#Variable 			Description
$0 					The filename of the current script.

$n					These variables correspond to the arguments with which a script was
					invoked. Here n is a positive decimal number corresponding to the position
					of an argument (the first argument is $1, the second argument is $2, and
					so on).

$# 					The number of arguments supplied to a script.

$*					All the arguments are double quoted. If a script receives two arguments,
					$* is equivalent to $1 $2.

$@ 					All the arguments are individually double quoted. If a script receives two
					arguments, $@ is equivalent to $1 $2.

$? 					The exit status of the last command executed.

$$					The process number of the current shell. For shell scripts, this is the process
					ID under which they are executing.

$! 					The process number of the last background command.


#########Following script uses various special variables related to the command line −
#!/bin/sh
echo "File Name: $0"
echo "First Parameter : $1"
echo "Second Parameter : $2"
echo "Quoted Values: $@"
echo "Quoted Values: $*"
echo "Total Number of Parameters : $#"
Here is a sample run for the above script –
$./test.sh Zara Ali
File Name : ./test.sh
First Parameter : Zara
Second Parameter : Ali
Quoted Values: Zara Ali
Quoted Values: Zara Ali
Total Number of Parameters : 2
Special Parameters $* and $@


#Note: 
#There are special parameters that allow accessing all the command-line arguments at
#once. $* and $@ both will act the same unless they are enclosed in double quotes, "".
#Both the parameters specify the command-line arguments. However, the "$*" special
#parameter takes the entire list as one argument with spaces between and the "$@" special
#parameter takes the entire list and separates it into separate arguments.
#We can write the shell script as shown below to process an unknown number of commandline
#arguments with either the $* or $@ special parameters 

## Sample script
for TOKEN in $*
do
echo $TOKEN
Unix
73
done

# Execution

$./test.sh Zara Ali 10 Years Old
Zara
Ali
10
Years
Old

#The $? variable represents the exit status of the previous command.
#Exit status is a numerical value returned by every command upon its completion. As a
#rule, most commands return an exit status of 0 if they were successful, and 1 if they were
#unsuccessful.

#Defining Array Values

array_name[index]=value

NAME[0]="Zara"
NAME[1]="Qadir"
NAME[2]="Mahnaz"
NAME[3]="Ayan"
NAME[4]="Daisy"

array_name=(value1 ... valuen)

##Reading array

$ {array_name[index]}

echo "First Index: ${NAME[0]}"
echo "Second Index: ${NAME[1]}"

You can access all the items in an array in one of the following ways –
$ {array_name[*]}
$ {array_name[@]}

##Operators

val=`expr 2 + 2`

Note: There must be spaces between operators and expressions. For example, 2+2 is not
correct; it should be written as 2 + 2.
The complete expression should be enclosed between ‘ ‘, called the inverted
commas


`expr $a + $b`
`expr $a - $b`
`expr $a \* $b`
`expr $b / $a`
`expr $b % $a`
[ $a == $b ]
[ $a != $b ]
[$a==$b] 

It is very important to understand that all the conditional expressions should be inside
square braces with spaces around them

You should use \ on the * symbol for multiplication.

if...then...fi statement is a decision-making statement 

Operator 		Description Example

-eq				Checks if the value of two operands are equal or not; if yes,
				then the condition becomes true.
[ $a -eq $b ] 	is not true.

-ne 			Checks if the value of two operands are equal or not; if values are not equal, then the condition becomes true.
[ $a -ne $b ] 	is true.

-gt 			Checks if the value of left operand is greater than the value of right operand; if yes, then the condition becomes true.
[ $a -gt $b ]	is not true.

-lt 			Checks if the value of left operand is less than the value ofright operand; if yes, then the condition becomes true.
[ $a -lt $b ]	is true.

-ge 			Checks if the value of left operand is greater than or equal to the value of right operand; if yes, then the condition becomes true.
[ $a -ge $b ]	is not true.

-le
Checks if the value of left operand is less than or equal to
the value of right operand; if yes, then the condition
becomes true.
[ $a -le $b ]
is true.
It is very important to understand that all the conditional expressions should be placed
inside square braces with spaces around them. For example, [ $a <= $b ] is correct
whereas, [$a <= $b] is incorrect.


#### Example 

if [ $a -eq $b ]
then
echo "$a -eq $b : a is equal to b"
else
echo "$a -eq $b: a is not equal to b"
fi
if [ $a -ne $b ]
then
echo "$a -ne $b: a is not equal to b"
else
echo "$a -ne $b : a is equal to b"
fi
if [ $a -gt $b ]
then
echo "$a -gt $b: a is greater than b"
else
echo "$a -gt $b: a is not greater than b"
fi
if [ $a -lt $b ]
then
echo "$a -lt $b: a is less than b"
else
echo "$a -lt $b: a is not less than b"
fi
if [ $a -ge $b ]
then
echo "$a -ge $b: a is greater or equal to b"
else
echo "$a -ge $b: a is not greater or equal to b"
fi
if [ $a -le $b ]
then
echo "$a -le $b: a is less or equal to b"
else
echo "$a -le $b: a is not less or equal to b"
fi


Operator 		Description Example
!				This is logical negation. This inverts a true condition into false and vice versa.
[ ! false ] is true.

-o				This is logical OR. If one of the operands is true, then the condition becomes true.
[ $a -lt 20 -o $b -gt 100 ] is true.

-a				This is logical AND. If both the operands are true, then the condition becomes true otherwise false.
[ $a -lt 20 -a $b -gt 100 ] is false.


##Operator 		Description Example
=				Checks if the value of two operands are equal or not; if yes,then the condition becomes true.
				[ $a = $b] is not true.

!=				Checks if the value of two operands are equal or not; if values are not equal then the condition becomes true.
				[ $a != $b ] is true.
				
-z 				Checks if the given string operand size is zero; if it is zero length, then it returns true.
				[ -z $a ] is not true.
				
-n 				Checks if the given string operand size is non-zero; if it is nonzero length, then it returns true.
				[ -n $a ] is not false.

str				Checks if str is not the empty string; if it is empty, then it returns false.
				[ $a ] is not false.
				
				
####Operator Description Example
-b file			Checks if file is a block special file; if yes, then the condition becomes true.
				[ -b $file ] is false.

-c file			Checks if file is a character special file; if yes, then the condition becomes true.
				[ -c $file ] is false.
				
-d file 		Checks if file is a directory; if yes, then the condition becomes true.
				[ -d $file ] is not true.

-f file			Checks if file is an ordinary file as opposed to a directory or special file; if yes, then the condition becomes true.
				[ -f $file ] is true.

-g file 		Checks if file has its set group ID (SGID) bit set; if yes, then the condition becomes true.
				[ -g $file ] is false.

-k file 		Checks if file has its sticky bit set; if yes, then the condition becomes true.
				[ -k $file ] is false.

-p file 		Checks if file is a named pipe; if yes, then the condition becomes true.
				[ -p $file ] is false.
				
-t file 		Checks if file descriptor is open and associated with a terminal; if yes, then the condition becomes true.
				[ -t $file ] is false.
				
-u file			Checks if file has its Set User ID (SUID) bit set; if yes, then the condition becomes true.
				[ -u $file ] is false.
				
-r file 		Checks if file is readable; if yes, then the condition becomes true.
				[ -r $file ] is true.
				
-w file 		Checks if file is writable; if yes, then the condition becomes true.
				[ -w $file ] is true.
				
-x file 		Checks if file is executable; if yes, then the condition becomes true.
				[ -x $file ] is true.
				
-s file 		Checks if file has size greater than 0; if yes, then condition becomes true.
				[ -s $file ] is true.
				
-e file 		Checks if file exists; is true even if file is a directory but exists.
				[ -e $file ] is true.
				
				
####Shell Operators

( ) 			Change precedence
~ 				1's complement
! 				Logical negation
* 				Multiply
/ 				Divide
% 				Modulo
+ 				Add
- 				Subtract
<< 				Left shift
>> 				Right shift
== 				String comparison for equality
!= 				String comparison for non-equality
=~ 				Pattern matching
& 				Bitwise "and"
^ 				Bitwise "exclusive or"
| 				Bitwise "inclusive or"
&& 				Logical "and"
|| 				Logical "or"
++ 				Increment
-- 				Decrement
=  				Assignment
*= 				Multiply left side by right side and update left side
/= 				Divide left side by right side and update left side
+= 				Add left side to right side and update left side
-= 				Subtract left side from right side and update left side
^= 				"Exclusive or" left side to right side and update left side
%= 				Divide left by right side and update left side with remainder'

####File Test Operators

####Operator 		Description
-r file  		Checks if file is readable; if yes, then the condition becomes true.
-w file  		Checks if file is writable; if yes, then the condition becomes true.
-x file  		Checks if file is executable; if yes, then the condition becomes true.
-f file  		Checks if file is an ordinary file as opposed to a directory or special file; if yes, then the condition becomes true.
-z file  		Checks if file has size greater than 0; if yes, then the condition becomes true.
-d file  		Checks if file is a directory; if yes, then the condition becomes true.
-e file  		Checks if file exists; is true even if file is a directory but exists.
-o file  		Checks if user owns the file; returns true if the user is the owner of the

####Arithmetic and Logical Operators

+  				Unary plus
-  				Unary minus
!~ 				Logical negation; binary inversion (one's complement)
*  				Multiply
/  				Divide
%  				Modulo
+  				Add
-  				Subtract
<< 				Left shift
>> 				Right shift
== 				String comparison for equality
!= 				String comparison for non-equality
=~ 				Pattern matching
&  				Bitwise "and"
^  				Bitwise "exclusive or"
|  				Bitwise "inclusive or"
&& 				Logical "and"
|| 				Logical "or"
++ 				Increment
-- 				Decrement
=  				Assignment'

####conditional statements

The if...else statement
The case...esac statement

#Syntax

if...fi statement
if...else...fi statement
if...elif...else...fi statement

##Syntax
if [ expression ]
then
Statement(s) to be executed if expression is true
fi

If expression is a shell command, then it will be assumed true if it returns 0 after
execution. If it is a Boolean expression, then it would be true if it returns true.

##Syntax
if [ expression ]
then
Statement(s) to be executed if expression is true
else
Statement(s) to be executed if expression is not true
fi

##Syntax
if [ expression 1 ]
then
Statement(s) to be executed if expression 1 is true
elif [ expression 2 ]
then
Statement(s) to be executed if expression 2 is true
elif [ expression 3 ]
then
Statement(s) to be executed if expression 3 is true
else
Statement(s) to be executed if no expression is true
fi

#### Case Statement

case word in
pattern1)
Statement(s) to be executed if pattern1 matches
;;
pattern2)
Statement(s) to be executed if pattern2 matches
;;
pattern3)
Statement(s) to be executed if pattern3 matches
;;
esac

##########################################
##shell loops in Unix
##########################################

The while loop
The for loop
The until loop
The select loop

##The while loop
while command
do
Statement(s) to be executed if command is true
done

####For loop

for var in word1 word2 ... wordN
do
Statement(s) to be executed for every word.
done

for FILE in $HOME/.bash*
do
echo $FILE
done

Unix Shell - The until Loop
The while loop is perfect for a situation where you need to execute a set of commands
while some condition is true. Sometimes you need to execute a set of commands until a
condition is true.
Syntax
until command
do
Statement(s) to be executed until command is true
done

##The select Loop
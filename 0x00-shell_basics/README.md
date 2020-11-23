# 0x00. Shell, basics

## Learning Objectives

General

- What does RTFM mean?
- What is a Shebang

What is the shell

- What is the difference between a terminal and a shell
- What is the shell prompt
- How to use the history (the basics)

Navigation

- What do the commands or built-ins cd, pwd, ls do
- How to navigate the filesystem
- What are the . and .. directories
- What is the working directory, how to print it and how to change it
- What is the root directory
- What is the home directory, and how to go there
- What is the difference between the root directory and the home directory of the user root
- What are the characteristics of hidden files and how to list them
- What does the command cd - do

Looking Around

- What do the commands ls, less, file do
- How do you use options and arguments with commands
- Understand the ls long format and how to display it
- A Guided Tour
- What does the ln command do
- What do you find in the most common/important directories
- What is a symbolic link
- What is a hard link
- What is the difference between a hard link and a symbolic link

Manipulating Files

- What do the commands cp, mv, rm, mkdir do
- What are wildcards and how do they work
- How to use wildcards

Working with Commands

- What do type, which, help, man commands do
- What are the different kinds of commands
- What is an alias
- When do you use the command help instead of man

Reading Man Pages

- How to read a man page
- What are man page sections
- What are the section numbers for User commands, System calls and Library functions

Keyboard Shortcuts for Bash

- Common shortcuts for Bash

LTS

- What does LTS mean?

## Requirements

- All files are created and compiled on Ubuntu 14.04.4 LTS

## Tasks

<details>
<summary>View Contents</summary>

### [0. Where am I?](./0-current_working_directory)

- Write a script that prints the absolute path name of the current working directory.

```
$ ./0-current_working_directory
/Users/holbertonschool/holbertonschool-sysadmin_devops/0x00-shell_basics
```

### [1. What’s in there?](./1-listit)

- Display the contents list of your current directory.

```
$ ./1-listit
Applications    Documents   Dropbox Movies Pictures
Desktop Downloads   Library Music Public
```

### [2. There is no place like home](./2-bring_me_home)

- Write a script that changes the working directory to the user’s home directory.
  - You are not allowed to use any shell variables

```
julien@ubuntu:/tmp$ pwd
/tmp
julien@ubuntu:/tmp$ echo $HOME
/home/julien
julien@ubuntu:/tmp$ source ./2-bring_me_home
julien@ubuntu:~$ pwd
/home/julien
```

### [3. The long format](./3-listfiles)

- Display current directory contents in a long format

```
$ ./3-listfiles
total 32
-rwxr-xr-x@ 1 sylvain staff 18 Jan 25 00:19 0-current_working_directory
-rwxr-xr-x@ 1 sylvain staff 19 Jan 25 00:23 1-listit
-rwxr-xr-x@ 1 sylvain staff 18 Jan 25 00:29 2-bring_me_home
-rwxr-xr-x@ 1 sylvain staff 18 Jan 25 00:39 3-listfiles
```

### [4. Hidden files](./4-listmorefiles)

- Display current directory contents, including hidden files (starting with .). Use the long format.

```
$ ./4-listmorefiles
total 32
drwxr-xr-x@ 6 sylvain staff 204 Jan 25 00:29 .
drwxr-xr-x@ 43 sylvain staff 1462 Jan 25 00:19 ..
-rwxr-xr-x@ 1 sylvain staff 18 Jan 25 00:19 0-current_working_directory
-rwxr-xr-x@ 1 sylvain staff 19 Jan 25 00:23 1-listit
-rwxr-xr-x@ 1 sylvain staff 18 Jan 25 00:29 2-bring_me_home
-rwxr-xr-x@ 1 sylvain staff 18 Jan 25 00:39 3-listfiles
-rwxr-xr-x@ 1 sylvain staff 18 Jan 25 00:41 4-listmorefiles
```

### [5. I love numbers](./5-listfilesdigitonly)

- Display current directory contents.
  - Long format
  - with user and group IDs displayed numerically
  - And hidden files (starting with .)

```
$ ./5-listfilesdigitonly
total 32
drwxr-xr-x@ 6 501 20 204 Jan 25 00:29 .
drwxr-xr-x@ 43 501 20 1462 Jan 25 00:19 ..
-rwxr-xr-x@ 1 501 20 18 Jan 25 00:19 0-current_working_directory
-rwxr-xr-x@ 1 501 20 18 Jan 25 00:23 1-listfiles
-rwxr-xr-x@ 1 501 20 19 Jan 25 00:29 2-bring_me_home
-rwxr-xr-x@ 1 501 20 20 Jan 25 00:39 3-listfiles
-rwxr-xr-x@ 1 501 20 18 Jan 25 00:41 4-listmorefiles
-rwxr-xr-x@ 1 501 20 18 Jan 25 00:43 5-listfilesdigitonly
```

### [6. Welcome holberton](./6-firstdirectory)

- Create a script that creates a directory named holberton in the /tmp/ directory.

```
$ ./6-firstdirectory
$ file /tmp/holberton/
/tmp/holberton/: directory
```

### [7. Betty in Holberton](./7-movethatfile)

- Move the file betty from /tmp/ to /tmp/holberton.

```
$ ./7-movethatfile
$ ls /tmp/holberton/
betty
```

### [8. Bye bye Betty](./8-firstdelete)

- Delete the file betty.
  - The file betty is in /tmp/holberton

```
$ ./8-firstdelete
$ ls /tmp/holberton/
```

### [9. Bye bye Holberton](./9-firstdirdeletion)

- Delete the directory holberton that is in the /tmp directory.

```
$ ./9-firstdirdeletion
$ file /tmp/holberton
/tmp/holberton: cannot open `/tmp/holberton' (No such file or directory)
```

### [10. Back to the future](./10-back)

- Write a script that changes the working directory to the previous one.

```
julien@ubuntu:/tmp$ pwd
/tmp
julien@ubuntu:/tmp$ cd /var
julien@ubuntu:/var$ pwd
/var
julien@ubuntu:/var$ source ./10-back
/tmp
julien@ubuntu:/tmp$ pwd
```

### [11. Lists](./11-lists)

- Write a script that lists all files (even ones with names beginning with a period character, which are normally hidden) in the current directory and the parent of the working directory and the /boot directory (in this order), in long format.

### [12. File type](./12-file_type)

- Write a script that prints the type of the file named iamafile. The file iamafile will be in the /tmp directory when we will run your script.

```
ubuntu@ip-172-31-63-244:~$ ./12-file_type
/tmp/iamafile: ELF 64-bit LSB  executable, x86-64, version 1 (SYSV), dynamically linked (uses shared libs), for GNU/Linux 2.6.24, BuildID[sha1]=bd39c07194a778ccc066fc963ca152bdfaa3f971, stripped
```

### [13. We are symbols, and inhabit symbols](./13-symbolic_link)

- Create a symbolic link to /bin/ls, named **ls**. The symbolic link should be created in the current working directory.

```
ubuntu@ip-172-31-63-244:/tmp/sym$ ls -la
total 144
drwxrwxr-x  2 ubuntu ubuntu   4096 Sep 20 03:24 .
drwxrwxrwt 12 root   root   139264 Sep 20 03:24 ..
ubuntu@ip-172-31-63-244:/tmp/sym$./13-symbolic_link
ubuntu@ip-172-31-63-244:/tmp/sym$ ls -la
total 144
drwxrwxr-x  2 ubuntu ubuntu   4096 Sep 20 03:24 .
drwxrwxrwt 12 root   root   139264 Sep 20 03:24 ..
lrwxrwxrwx  1 ubuntu ubuntu      7 Sep 20 03:24 __ls__ -> /bin/ls
```

### [14. Copy HTML files](./14-copy_html)

- Create a script that copies all the HTML files from the current working directory to the parent of the working directory, but only copy files that did not exist in the parent of the working directory or were newer than the versions in the parent of the working directory.

### [15. Let’s move](./15-lets_move)

- Create a script that moves all files beginning with an uppercase letter to the directory /tmp/u.

```
ubuntu@ip-172-31-63-244:/tmp/sym$ ls -la
total 148
drwxrwxr-x  3 ubuntu ubuntu   4096 Sep 20 03:33 .
drwxrwxrwt 12 root   root   139264 Sep 20 03:26 ..
-rw-rw-r--  1 ubuntu ubuntu      0 Sep 20 03:32 Holberton
lrwxrwxrwx  1 ubuntu ubuntu      7 Sep 20 03:24 __ls__ -> /bin/ls
-rw-rw-r--  1 ubuntu ubuntu      0 Sep 20 03:32 Notrebloh
-rw-rw-r--  1 ubuntu ubuntu      0 Sep 20 03:32 random_file
ubuntu@ip-172-31-63-244:/tmp/sym$ ls -la /tmp/u
total 8
drwxrwxr-x 2 ubuntu ubuntu 4096 Sep 20 03:33 .
drwxrwxr-x 3 ubuntu ubuntu 4096 Sep 20 03:33 ..
ubuntu@ip-172-31-63-244:/tmp/sym$ ./15-lets_move
ubuntu@ip-172-31-63-244:/tmp/sym$ ls -la
total 148
drwxrwxr-x  3 ubuntu ubuntu   4096 Sep 20 03:33 .
drwxrwxrwt 12 root   root   139264 Sep 20 03:26 ..
lrwxrwxrwx  1 ubuntu ubuntu      7 Sep 20 03:24 __ls__ -> /bin/ls
-rw-rw-r--  1 ubuntu ubuntu      0 Sep 20 03:32 random_file
ubuntu@ip-172-31-63-244:/tmp/sym$ ls -la /tmp/u
total 8
drwxrwxr-x 2 ubuntu ubuntu 4096 Sep 20 03:33 .
drwxrwxr-x 3 ubuntu ubuntu 4096 Sep 20 03:33 ..
-rw-rw-r-- 1 ubuntu ubuntu    0 Sep 20 03:32 Holberton
-rw-rw-r-- 1 ubuntu ubuntu    0 Sep 20 03:32 Notrebloh
```

### [16. Clean Emacs](./16-clean_emacs)

- Create a script that deletes all files in the current working directory that end with the character ~.

```
ubuntu@ip-172-31-63-244:/tmp/sym$ ls
main.c  main.c~  Makefile~
ubuntu@ip-172-31-63-244:/tmp/sym$ ./16-clean_emacs
ubuntu@ip-172-31-63-244:/tmp/emacs$ ls
main.c
ubuntu@ip-172-31-63-244:/tmp/emacs$
```

### [17. Tree](./17-tree)

- Create a script that creates the directories welcome/, welcome/to/ and welcome/to/holberton in the current directory.
  - You are only allowed to use two spaces in your script, not more.

```
julien@ubuntu:/tmp/h$ ls -l
total 4
-rwxrw-r-- 1 julien julien 44 Sep 20 12:09 17-tree
julien@ubuntu:/tmp/h$ wc -l 17-tree
2 17-tree
julien@ubuntu:/tmp/h$ head -1 17-tree
#!/bin/bash
julien@ubuntu:/tmp/h$ tr -cd ' ' < 17-tree | wc -c # you do not have to understand this yet, but the result should be 2, 1 or 0
2
julien@ubuntu:/tmp/h$ ./17-tree
julien@ubuntu:/tmp/h$ ls
17-tree  welcome
julien@ubuntu:/tmp/h$ ls welcome/
to
julien@ubuntu:/tmp/h$ ls -l welcome/to
total 4
drwxrwxr-x 2 julien julien 4096 Sep 20 12:11 holberton
```

### [18. Life is a series of commas, not periods](./18-commas)

- Write a command that lists all the files and directories of the current directory, separated by commas (,).
  - Directory names should end with a slash (/)
  - Files and directories starting with a dot (.) should be listed
  - The listing should be alpha ordered, except for the directories . and .. which should be listed at the very beginning
  - Only digits and letters are used to sort; Digits should come first
  - You can assume that all the files we will test with will have at least one letter or one digit
  - The listing should end with a new line

```
ubuntu@ip-172-31-63-244:~/holbertonschool$ ls -a
.  ..  0-commas  0-commas-checks  1-empty_casks  2-gifs  3-directories  4-zeros  5-rot13  6-odd  7-sort_rot13  Makefile  quote  .test  test_dir  test.var
ubuntu@ip-172-31-63-244:~/holbertonschool$ ./18-commas
./, ../, 0-commas, 0-commas-checks/, 1-empty_casks, 2-gifs, 3-directories, 4-zeros, 5-rot13, 6-odd, 7-sort_rot13, Makefile, quote, .test, test_dir/, test.var
```

</details>

## Author

- **Bob Deprizio** -(https://github.com/BD20171998)


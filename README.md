# My-Linux-Commands

This is a repository which summarizes What I learned from [this course (Linux A-Z) on Udemy](https://www.udemy.com/course/linux-egitimi/).

## General Commands

1) Compile and run a cpp file
```
make first_c++.cpp

./first_c++
```

2) Open up a file in a browser

```
google-chrome filename.extension
```

3) To follow CPU

```
sudo apt install sysstat

mpstat -P ALL 1
```

4) Which user is using the machine

```
whoami
```

5) Add a directory to PATH

```
export PATH=$PATH:/usr/projects/mywebsite
```

6) Number of files & directories in a folder

```
ls -altr | wc -l
```

7) Unzip all files in a folder

```
unzip "*.zip"
```


8) Where a file in the system

```
locate elephant.jpg
```

9) To pass to root

```
sudo su -
```

10) To run a script in the background and get back to the terminal, add & to the command

```
./test.sh &
```

11) && is used between 2 commands. Second command runs if first command runs without error. If first command runs with error, second command doesn't run.

```
# If abc.txt is in the folder, second command runs
cat abc.txt && echo "abc.txt file found"

# If def.txt isn't in the folder, second command doesn't run.
cat def.txt && echo "abc.txt file not found"
```

12) || is the opposite of &&.  Second command runs if first command gives an error. If first command doesn't give an error, second command doesn't run.

```
# If abc.txt is in the folder, second command doesn't run
cat abc.txt && echo "abc.txt file found"

# If def.txt isn't in the folder, second command runs.
cat def.txt && echo "abc.txt file not found"
```

13)To list EV's in Linux, run ```env``` command. To see the value of an EV we want to see, run ```echo $NAME_OF_EV``` like ```echo $PATH ```. To create an EV ```export EV_NAME="EV_VALUE" ```

```
# to print all EV's
env
# To print a specific EV
echo $NAME_OF_EV
echo $PATH
echo $HOSTNAME

#To create a specific EV
export EV_NAME="EV_VALUE"
```

14) Find and replace operation is carried out with sed command

```
sed 's/unix/linux/g' geekfile.txt
```


## Virtualization

1) Download virtualbox to install a virtual ubuntu environment.

2) We can take snapshots of virtual environment. Then, we can import these snapshots into VirtualBox.

3) We can watch the statistics of Linux distributions on [this link](https://distrowatch.com/table.php?distribution=ubuntu)

4) After installation, we can upgrade the RAM of virtual machine.

5) After installing virtual box, extension pack of virtualbox should be installed.

6) Virtual Box > Devices > Insert Guest Edition CD Image. We can copy from our desktop to virtual box.

## Intro to Linux

1) User Interface > Shell > Kernel

2) Linux is a kernel; not an OS.

3) Kernel deals with RAM, CPU, Operations. It decied which program uses RAM, disc etc. 

4) Shell is a layer in which user communicate with OS.

5) For OS to be run, Kernel and Shell are enough. User Interface isn't basically required.

6) MacOS is also designed as User Interface > Shell > Kernel.

7) Terminal is an interface to run commands on shell.

8) To print a string on terminal:

```
echo string_name_printed
```

9) There isn'y only one shell; many shells exist.

10) To see which shell we have
```
echo $SHELL
```
11) To learn which shell version we have

```
echo $BASH_VERSION
```

12) Basic commans: ls, cd, echo, pwd, cat, >, >>

13) To print 2 files one under the other on Terminal.

```
cat file1 file2
```

14) To get help for a command: example cat. man represents manuel

```
man cat
```

15) To enumerate all lines of a file

```
cat -n vim_commands.txt 
```

16) To delete all things in a file and add a new line to a file

```
echo new_line > file_name.txt
```

17) To add a new line to an existent file
```
echo new_line >> file_name.txt
```

18) To find lines of a pattern in a file
```
cat file_name | grep search_pattern
```

19) To list all files in a folder
```
ls path_of_folder
```

## File & Folder Operations

1) You can check out 

![Linux Architecture](https://github.com/MuhammedBuyukkinaci/My-Unix-Commands/blob/master/img/linux_architecture.png)

2) /etc is a directory having configuration files.

3) /proc is a direcotry dealing with processes.

4) /bin means binary and it also means executable files.

5) /sbin means system binary.

6) /opt means optional and third party softwares were installed here.

7) /media is related to mounting hard disc and USB.

8) Everything in Linux has a pattern of folder and file.

9) To create a file in Linux

```
touch file_name
```

10) $ sign on Terminal means Home directory

11) To delete a folder
```
mkdir folder_name

rmdir folder_name
```

12) To list numeric user and group ID

```
ls -n
```

13) To rename a file

```
mv file_old_name file_new_name

rename file_old_name file_new_name
```

14) To move a file or a folder respectively

```
mv filename /home/muhammed/

mv my_resume/ ./URBANSTAT/
```

15) To copy a file or a folder respectively

```
cp filename /home/muhammed/

cp -r my_resume/ ./URBANSTAT/
```

16) To find a file in OS, use **find** and **locate** commands. locate is like searching on DB, find is like searching all things one by one.
To effectively use locate, update DB regularly.
```
sudo updatedb
```

17) find is more powerful, locate is more useful.

18) To search a particular file on a specific path and its roots

```
find search_path -name filename.txt
```

19) To search a text pattern on a path

```
find search_path | grep searched_pattern
```

20) To find a file with locate

```
locate file_name
```

21) To zip a file or folder using tar. c:create, v: verbose, f: file name of new tarred file.

```
tar -cvf zipped_file_name.tar zipped_file.txt

tar -cvf zipped_file_name.tar zipped_folder/
```

22) To unzip a folder

```
tar -xvf tarred_file.tar

tar -xvf tarred_file.tar -C path_of_new_unzipping_folder_that_was_created_before

tar -xvf tarred_file.tar --one-top-level=serhat

tar -xvf tarred_file.tar --one-top-level=/home/serhat/Desktop/serhat
```

23) To glance a file in Terminal. more: to look line by line, head: first 8 lines, tail: last 8 lines, cat: to see all lines, tac: to see all lines in reverse order

```
more file_name

head file_name

tail file_name

cat file_name

tac file_name
```

24) Driver and bootloader issues may cause UI not to work.

25) ^ in nano means CTRL. CTRL+o to save changes into a file; CTRL+x to exit

26) We can run shell commands on vi. This characteristic was used by CyberSecurity guys.

## User Operations

1) Linux has a multi-user OS, which means that 2 people can use the same computer simultaneously. This is mostly valid for server operations.
While I was working at Turkcell, We were logging in the same machine simultaneously.

2) To see which users are logged in right now:

```
users
```

3) There are more users in Linux than we assume. Users can be grouped into 2 groups: 1- System users 2- Logged-in users

4) Root user has 0 id number. System users' id range from 1 to 999. Logged-in users' id's start from 1000. Each user has an id. To see detailed id information of a user

```
id
```

5) Root has a right to do everything. It is impossible to remove the rights of root.

6) To see id of a specific user
```
id -u muhammed
```

uid=1000(muhammed) gid=1000(muhammed) groups=1000(muhammed),4(adm),24(cdrom),27(sudo),30(dip),46(plugdev),116(lpadmin),126(sambashare)

uid -> userid
gid -> an id which was created when user was created.
groups -> the roles which a user has

7) To list all log in users and system users on Terminal

```
cat /etc/passwd
```

8) Meanings of user components

muhammed : x : 1000:1000:muhammed,,,:/home/muhammed:/bin/bash

muhammed -> Username

1000 -> User id

1000 -> Group id

muhammed -> Name

/home/muhammed -> Home directory

/bin/bash -> Directory of shell. If not depicted, user can't use shell.

9) To know which logged-in users are logged in now

```
cat /etc/passwd | grep bash
```

10) To see which groups am I in?

```
groups
```

11) To see which groups exist in the system
```
cat /etc/group
```

12) To list users' passwords

```
sudo cat /etc/shadow
```

```
mark:$6$.n.:17736:0:99999:7:::
[--] [----] [---] - [---] ----
|      |      |   |   |   |||+-----------> 9. Unused
|      |      |   |   |   ||+------------> 8. Expiration date
|      |      |   |   |   |+-------------> 7. Inactivity period
|      |      |   |   |   +--------------> 6. Warning period
|      |      |   |   +------------------> 5. Maximum password age
|      |      |   +----------------------> 4. Minimum password age
|      |      +--------------------------> 3. Last password change
|      +---------------------------------> 2. Encrypted Password
+----------------------------------------> 1. Username
```

13)To list the groups and which users have those groups on Terminal. System groups range from 0 to 1000. User groups range from 0 to 1000.

```
sudo cat /etc/group
```

14) Ownership: User, Group, Other

    User: Owner of a file

    Group: Multiple users in the same group. They have the same rights. A user can be in many groups. A file can be owned only one group.

    Other: Any other user having access to the file.

15) Permissions: Read, Write, Execute

    Read: Authenticity to read a file and take a look

    Write: Add & remove & rename authenticity

    Execute: Ability to run a file.

16) Sudo is actually a program. To check this, run ``` sudo --version ``` to see an output below.


**Sudo version 1.8.21p2**
**Sudoers policy plugin version 1.8.21p2**
**Sudoers file grammar version 46**
**Sudoers I/O plugin version 1.8.21p2**

17) We pretend to log in as root thanks to **sudo** command. **sudo** is like run as administrator in windows.

18) sudoers is a file under /etc/sudoers directory. Configurations are in this file.

19) To create or update a password for an existent user

```
passwd user_name_we_use

# For root
sudo passwd root
```

20) It is prohibited for root user to log in from UI by default. There are many ways to change this.

21) To be root in Terminal, write the command below and enter your user password

```
sudo su
```

22)To change user on current session in Terminal

```
su muhammed2
```

23) Permission is the right to do sth or not to do sth. Permissions can be thought on top of file permissions, user permissions, group permissions. Permissions of a file can be seen with ls -al. For instance

**-rw-r--r--  1 muhammed muhammed      98 Eyl 25 21:21  temp.txt**


-rw-r--r-- has 10 characters that have these meanings:

1      -->     -          --> File(-) or directory (d)

2-3-4  -->     rw-        --> Permissions of user

5-6-7  -->     r--        --> Permissions of group

8-9-10 -->     r--        --> Permissions of other


24) To change file permisssions for user or group or other, use chmod

```
chmod u=rwx,g=rwx,o=rwx file_name

chmod u=r,g=w,o=x file_name

#To enable root only
chmod u=,g=,o= file_name
```

25) The permissions and their corresponding numbers in the base of 8. 0 means no permission.

read --> 4

write --> 2

execute --> 1

777 means (4 + 2 + 1 )(4 + 2 + 1 )(4 + 2 + 1 ) in reality.

```
chmod 777 file_name
chmod 644 file_name
chmod 755 file_name

# remove read permission from user
chmod -400 file_name
# remove execute permission from group
chmod -010 file_name
# remove write permission from other
chmod -002 file_name
# add read permission to user
chmod +400 file_name
# add execute permission to group
chmod +010 file_name
# add write permission to other
chmod +002 file_name
```

26) useradd is in all linux distros. adduser is in some of them. Ubuntu has useradd and adduser. adduser is more used and suggested. adduser is more useful in system management because it requires more info for users. When a user was created, a group user who has the same name was also created by default. To create a user to OS,

```
sudo adduser user_name_to_add
```

27) To create a group to OS,

```
sudo groupadd group_name_to_add
```

28) To change user and group user of a file

```
sudo chown new_user_name:new_group_name file_name
```

29) A user may have many groups but a file belongs to only one group. If a user has a particular group and that particular group is group user of a file, that user may edit that file even if that user isn't the user owner of that file. To add a group to a user.

```
sudo usermod -a -G group_name_to_add user_name_to_get_group
#This operation may require rebooting
```

30) To remove a group from a user

```
sudo deluser user_name group_name_to_remove
```

31) When a user was removed from OS, the files it has will have no user. Root should come and interfere in this situation. To remove a user from OS,

```
sudo userdel user_name_to_remove
```

32) When a group was removed from OS, the files it has will have no group. Root should come and interfere in this situation.  To remove a group from OS,

```
sudo groupdel group_name_to_remove
```

## Process Operations

1) Opening a program, opening a picture etc; all of them have a process id. All processes have a unique id. It is like task manager in Windows. System monitor in Linux is similar to Task Manager in Windows.

2) To see processes only logged in users has
```
ps
```

3) To see all process. x means all users, u: means user. It outputs a lot of columns. COMMAND column shows which code were run to make that process work.

```
ps -aux
```

4) When we write a Linux code on terminal, it will become a process too.

5) To kill a process from Terminal,

```
kill -9 process_id_we_want_to_kill
```

6) xkill command used to kill a process that we touch by the mouse.

7) To see processes of root and mine

```
ps -aumuhammed

ps -auroot
```

8) To kill a process with the name of the program of the process

```
killall python3

killall process_program 
```

9) To put a running program into the background, press CTRL + Z.

10) To see programs in the background

```
jobs -l
```

```
bg
```

10) To put back a program into the foreground

```
fg the_id_jobs-l_shows

fg 1
```

11) systemd is a tool to manage services in Linux. "A service is a program that runs in the background outside the interactive control of system users as they lack an interface" (from hostinger.com) . There are many types of services, special to root or special to user etc. gdm, ssh, apache server can be examples.

12) systemctl is coming by default. To see the current situation of a service.

```
sudo service gdm3 status

sudo systemctl status gdm3.service
```

13) To see the content of an example service, run below:

```
vi /lib/systemd/system/gdm.service
```

14) To list all services on Terminal. systemctl manages services, sockets, mounts, target processes.
systemctl is more comprehensive than service.

```
service --status-all

systemctl list-units --type=service
``` 

15) Some important services:

acpid: managing tools which are responsible for shut down, power off etc

alsa-utils: dealing with sound drivers

cron: Linux crontab is similar to Task Schedule of Windows.

gdm: display manager

network-manager: responsible for activating network interface.

16) To restart a service via service or systemctl managed by root, use sudo before service or systemctl commands.

``` 
sudo service service_name restart

sudo service gdm3 restart

sudo systemctl restart gdm3.service
``` 

17) To stop, start and restart a servicenot by run by root

``` 
service network-manager stop

service network-manager start

service network-manager restart
``` 

18) If we want to create a new service from scratch wiyh our user, we should put it under /etc/systemd/user directory. However, system services are under /etc/systemd/system directory.

## Shell Scripting

1) Bash is the most used shel version.

2) If you consider to be a system administrator, this part is essential.

3) How many active users exist, analyzing daily DB usages, usage of scheduled tasks (crontab), network monitoring 

4) A written shell script might be run as a startup service.

5) Some sources to use in shell scripting

- https://reddit.com/r/bash

- https://github.com/awesome-lists/awesome-bash

- https://github.com/alexanderepstein/Bash-Snippets

6) It is possible to run python code snippets in .sh code.

7) An example shell script start with:

```
#! /bin/bash


```

## Package

1) Package can be thought as setup.exe in Windows.

2) A windows package can't in installed on Linux or not.

3) Each Linux distro has different configurations for installations.

4) https://packages.ubuntu.com

5) Ubuntu and Debian have the same package management system 

6) Package extension for different linux distros 

Debian, Ubuntu --> .deb

Centos --> .yum

7) Ubuntu's package manager = dpkg; 

8) apt(advanced package tool manager) is an advanced kind of dpkg to install deb packages. apt is high level, dpkg is low level.

9) The sources apt uses should be kept up-to-date. The sources that apt uses can be listed with:

```
cat /etc/apt/sources.list
```

10) To update apt

```
sudo apt update
```

11) It is recommended to do ``` sudo apt update ``` before installing any kind of software.

12) apt is so clever that it took Ubuntu to a better place in terms of package management.


13) To install a package or many packages with apt in one line.

```
sudo apt install package_name
```

```
sudo apt install package_name1 package_name2 package_name3
```


14) To uninstall (remove) a package with apt from OS

```
sudo apt remove package_name
```

15) To search a package in Ubuntu repos

```
apt search package_name
```

16) dpkg wasn't able to deal with depenencies. Hence, apt appeared out as a solution.

17) To install a package with dpkg

```
dpkg -i package_name.deb
```

18) To liss packages installed

```
dpkg -l
```

19) To remove a package with dpkg

```
dpkg -r package_name_in_the_OS
```

20) build-essential is a package to install packages downloaded from 3rd party software.

21) At the beginning, dependencies should be installed. Then, A 3rd party software mas be configured, Then, ```make``` command should be run. Finally, ```make sudo install``` command should be run. If you want to uninstall it, ```make sudo uninstall``` command should be run.

22) 3rd party softwares should be put in /opt/ folder


## Free Section

1) It would be nice to say GNU/Linux rather than Linux because they were different projects. GNU started as a project in 1980's but it didn't perform well. Then, Linus torvalds integrated Linux kernel with GNU project and the base version of current Linux distros appeared out.

2) Linux appeared as an opposition to intellectual property.

3) Open source doesn't mean free software. Open source means being able to see source code.

4) Gnome 3 and KDE were widely used in Ubuntu Interfaces (Default: gnome 3)

5) Gnome Tweaks is a tool to configure and change gnome 3

6) Libre draw can be used as a drawing tool.

7) Remmina RDP is a remote desktop client to connect to remote windows machines.

8) Window Manager: Pencere yöneticisi, Desktop Environment: Masaüstü ortamı, Display Manager: Görüntü yöneticisi

9) Pantheon is a Desktop Environment similar to OS X.

10) For default Ubuntu, GNOME is Desktop Environment; GDM3 is a window manager.

11) To learn display manager of your desktop environment, run the following:

```
systemctl status gdm3.service
```

12) MATE (GNOME 2) can be installed.

13) Openbox is a window manager. It has no desktop. 



















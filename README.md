# Linux Commands & Bash Scripts Learning

![Bash](https://img.shields.io/badge/Bash-4EAA25?style=for-the-badge&logo=gnubash&logoColor=white)
![Linux](https://img.shields.io/badge/Linux-FCC624?style=for-the-badge&logo=linux&logoColor=black)
![Git](https://img.shields.io/badge/Git-F05032?style=for-the-badge&logo=git&logoColor=white)
![VS Code](https://img.shields.io/badge/VS_Code-007ACC?style=for-the-badge&logo=visualstudiocode&logoColor=white)
![Scripts](https://img.shields.io/badge/Scripts-29-green?style=for-the-badge)
![Learning](https://img.shields.io/badge/Purpose-Learning%20%26%20Reference-blue?style=for-the-badge)

This repository documents and stores all the concepts and fundamentals acquired throughout my learning journey on Linux commands and Bash scripting. It is a straightforward reference repository containing key concepts, commonly used commands, and a directory with 29 Bash scripts written and tested during practice sessions.

The repository also serves as a personal reference guide, since all my projects are developed on Linux and I constantly work with shell commands — making it a handy resource to look up and revisit topics whenever needed.

---

### Directories/Files
- d: directory
- r: read
- w: write
- x: execute = running a program

### Access
- u: user = myself
- g: group = can be people in the same project
- o: other = everyone on the system

### Command to change the file ownership
- chown: changes the ownership of a file
- chgrp: changes the group ownership of a file
- ch: change
- mod: mode

### File display commands
- cat: see the file content
- more: see the file content one page at a time
- less: see the file content one page at a time, but you can also - scroll up
- head: see the content at head of the file
- tail: see the content at tail of the file

### Filters / Text Processors commands
- cut: cuts columns or fields from text
- awk: processes and filters text by patterns or columns
- grep: finds lines that match a pattern
- sort: sorts lines of text
- uniq: removes consecutive duplicate lines
- wc: counts lines, words, or characters in a file

### Finding System Information
- `cat /etc/redhat-release`: shows the Linux distribution version
- uname -a: displays system and kernel information
- dmidecode: shows hardware details (needs root)
- hostname: shows or sets the system's network name

### vi Text Editor Commands
- i: insert
- esc: escape
- r: replace
- d: delete
- :q!: quit without saving
- :wq! - quit and save

### GNU NANO
- ctrl + o: write (save) the file
- Enter: confirm the file name
- ctrl + x: exit nano

### User Account Management
- useradd: creates a new user
- groupadd: creates a new group
- userdel: deletes a user
- groupdel: deletes a group
- usermod: modifies a user account

### User Account Configuration Files
- `/etc/passwd`: stores user account information
- `/etc/group`: stores group information
- `/etc/shadow`: stores encrypted user passwords

### Switch user and sudo access - commands
- su - username: switch to another user
- sudo command: run a command as superuser
- visudo: safely edit the sudoers file

### System Utility Commands
- date: shows the current date and time
- uptime: shows how long the system has been running
- hostname: shows or sets the system's network name
- uname: shows OS name
- which: shows the path of a command
- cal: displays a calendar (needs to install package to run this command: sudo apt install util-linux (Debian/Ubuntu))
- bc: command-line calculator (needs to install package to run this command: sudo apt install bc)

### Processes / Services Commands
- systemctl or service: starts, stops, or checks the status of a service
- ps: shows the processes currently running
- top: see all processes running on the system with memory info
- kill: terminates a process by its process ID
- crontab: schedules applications/services/processes to run automatically
- at: schedules a process to run once at a specific time

### System Maintenance Commands
- shutdown: powers off the system
- init 0-6: changes the system runlevel (0 = halt, 6 = reboot)
- reboot: restarts the system
- halt: stops the system immediately

### System Monitoring
- man commandName: see the command's manual
- top: shows running processes and system resource usage in real time
- df -h: shows disk space usage in a human-readable format
- dmesg: displays kernel and system boot messages
- iostat: shows CPU and disk input/output statistics
- ss -tuln: lists open network ports and connections
- free: shows the amount of free and used memory in the system
- `cat /proc/cpuinfo`: displays detailed CPU information
- `cat /proc/meminfo`: displays detailed memory information

### Bash History
- history: shows the commands terminal history

## How Linux runs programs and tasks?

### Process and Job Concepts: basic terms for understanding how Linux runs programs and tasks
- Application: Service (excel, word, etc)
- Script: shell scripts or commands are list of instructions. e.g: cd, pwd
- Process: when you run/execute an application, it generates a process ID associated with that application
- Daemon: runs in the background and is a process
- Threads: one process can have multiple threads
- Job or Workorder: runs a service or process at a scheduled time

## Network

### Interface configuration files
- `/etc/nsswitch.conf`: defines the order of name resolution (DNS, files, etc)
- `/etc/hostname`: stores the system's hostname
- `/etc/sysconfig/network`: global network settings
- `/etc/sysconfig/network-scrips/ifcfg-nic`: configuration file for a specific network interface
- `/etc/resolv.conf`: defines DNS servers used by the system

### Network Commands
- ping: tests connectivity to a host
- ifconfig: shows or configures network interfaces
- ifup or ifdown: enables or disables a network interface
- netstat: shows network connections and routing tables
- tcpdump: captures and analyzes network traffic

## Bash Scripting

A Shell Script is an executable file containing multiple shell commands that are executed sequentially.
The file can contain:
- Shell (ALWAYS starts a shell this way => #!/bin/bash) 
- Comments (# comments)
- Commands (echo, cp, grep etc.)
- Statements (if, while, for etc)

Bash script should have a executable permissions (eg. -rwx r-x r-x)
Bash script has to be called from absolute path (e.g /home/userdir/script.bash)
If called from current location then: ./script.bash

### Numerical Comparisons
- `-lt`: less than
- `-eq`: equal to
- `-ne`: not equal to
- `-gt`: greater than
- `-ge`: greater than or equal to
- `-le`: less than or equal to

## Linux/Bash Commands

- Confirm user name
```bash
whoami
```

- List of files in the directory
```bash
ls -l
```

- When the file was modified
```bash
ls -ltr
```

- Copy one file and give another name
```bash
cp existent_file_name new_file_name
```

- Create a empty file
```bash
vi scriptName
```

- See the content of a directory one page at a time on the terminal.
- Hit space to change the pages
```bash
ls -ltr | more
```

- See the button of the page
```bash
ls -l | tail -l
```

- Remove a directory
```bash
rm -r dirname
```

- Remove a file
```bash
rm file_name
```

### Change the permission of a file

- Remove (-) write permission from the group
```bash
chmod g-w file_name
```

- Remove (-) read permission from all
```bash
chmod a-r file_name
```

- Remove (-) write permission from the user
```bash
chmod u-w file_name
```

- Give back (+) read and write permission to the user
```bash
chmod u+rw file_name
```

- Give back (+) read and write permission to the group
```bash
chmod g+rw file_name
```

- Remove (-) executable permission from the directory for all
```bash
chmod a-x dir_name
```

- Add (+) executable permission to the directory for all
```bash
chmod a+x dir_name
```

- Go to root
```bash
su -
```

- Reset root password
```bash
sudo passwd root
```

- Change owner of a file
```bash
chown root file_name
```

- Change group of a file
```bash
chgrp root file_name
```

- Exit from root
```bash
exit
```

- Add text to a file (overwrites existing content)
```bash
echo "this is the text to add" > file_name
```

- Add text to the next line of a file (appends)
```bash
echo "this is the other text to add" >> file_name
```

- Print on the terminal the text added to the file
```bash
cat file_name
```

- Add current date to a file
```bash
date >> file_name
```

- Copy a file
```bash
cp file-name new-file-name
```

- Remove file
```bash
rm file_name
```

- Rename file
```bash
mv existent_file_name new_file_name
```

- Change the owner and group of a file or folder
```bash
chown weverson_barbieri:weverson_barbieri file_name/folder_name
```

- Remove an empty directory
```bash
rmdir dir_name
```

- Copy a directory to another directory
```bash
cp -r /source/path /destination/path
```

- See the first lines of a file (e.g. `head -1` = first line, `head -2` = first two lines)
```bash
head -1 file_name
```

- See the last lines of a file
```bash
tail -1 file_name
```

- Cut characters from a file (e.g. `cut -c1` = one char, `cut -c1-3` = first three chars)
```bash
cut -c1 file_name
```

- Cut characters and insert into a new file
```bash
cut -c1-2 file_name > file_to_insert_cut_chars
```

- Print the first column of a file
```bash
awk '{print $1}' file_name
```

- Search for a specific pattern in a file
```bash
grep character file_name
```

- Sort file content in alphabetical order
```bash
sort file_name
```

- Remove duplicate lines from a file
```bash
uniq file_name
```

- Count lines, words, and characters of a file
```bash
wc file_name
```

### vi Text Editor Usage

- Open a file in vi
```bash
vi file_name
```

- Enter insert mode
```bash
i
```

- Exit insert mode
```bash
esc
```

- Exit without saving
```bash
esc + ctrl+z
```

- Save and exit
```bash
esc + :wq!
```

- Delete a line
```bash
esc + dd
```

- Undo last action
```bash
esc + u
```

- Search for a word inside the text editor
```bash
esc + /word_to_search
```

### User and Group Management

- Create a user (become root first)
```bash
useradd user_name
```

- Define user password (become root first)
```bash
passwd user_name
```

- Check user creation
```bash
id user_name
```

- Create a group
```bash
groupadd group_name
```

- Check if the group was created
```bash
cat /etc/group
```

- Delete a user
```bash
userdel -r user_name
```

- Delete a group
```bash
groupdel group_name
```

- Add user to a group
```bash
usermod -G group_name user_name
```

- Change the group of a file
```bash
chgrp group_name file_name
```

- Switch to another user
```bash
su - username
```

- Show the path where a command is located
```bash
which pwd
```

- Restart a service
```bash
systemctl restart servicename
```

- Check if a process is running
```bash
ps -ef | grep systemname
```

- See all running processes
```bash
top
```

- Kill/stop a process (get the process ID first with `ps -ef | grep processname`)
```bash
kill processID
```

- Schedule a crontab job (press `i` to insert, then set time and command)
```bash
crontab -e
```

- Run a created bash script
```bash
./script-name
```

- See command history
```bash
history | more
```

- Run a specific command from history by its number (! + number of command history)
```bash
!406
```

- List all installed apt packages
```bash
dpkg -l
```

- Install a package
```bash
sudo apt install package_name -y
```

- Check the user ID of the current user
```bash
id -u
```

- Create a new user with home directory and default shell
```bash
sudo useradd -m -s /bin/bash newUser
```

- Move files to a directory
```bash
mv file1 file2 dirName/
```

- Rename a directory
```bash
mv dirname new_name
```

- Move a directory to another directory
```bash
mv dirname /destination/path
```

- Check if a directory exists
```bash
ls -d dirName
```

- Activate a Python virtual environment
```bash
source venv/bin/activate
```

- Create a Python virtual environment
```bash
python3 -m venv venv_name
```

- Create a new empty file
```bash
touch file_name
```

- List all files including hidden ones (starting with `.`)
```bash
ls -a
```

- Unhide a hidden file (remove the `.` prefix)
```bash
mv .fileName fileName
```

- Force remove a write-protected file or directory, when rm -r dirName is not allowed to remove.
```bash
rm -rf dirName
```

- Install Python dependencies from requirements.txt
```bash
pip install -r requirements.txt
```

- List all files and directories including hidden ones with details
```bash
ls -la
```

- Access the E: drive on WSL
```bash
cd /mnt/e
```

---

## License

MIT License










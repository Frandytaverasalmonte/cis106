 #!/bin/bash 
echo "-----------------------------------------------"
figlet "system"
echo -n "Date:"; date
echo -n "Hostname:"; hostname
echo -n "Uptime:"; uptime
echo -n "User:"; uname 
figlet "MEMORY"
free
figlet "DISK"
df
echo "-----------------------------------------------"

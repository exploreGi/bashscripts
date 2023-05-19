
#!/bin/bash
echo "DATE:"
date
# UPTIME  : shows how long the system has been running
echo "UPTIME:"
uptime

#w  : shows who is currently logged in and their processes
echo "CURRENTLY LOGGED IN IS:"
w

#last -a :shows a list of last logged in users
echo "Last logins: "
last -a | head -3

# show disk usage
echo "----------------------"
echo "Disk usage"
df -h | xargs | awk '{print "Free/Total Disk:" $11 " / " $9}'

# show memory usage
echo "---------------------"
free -m | xargs | awk '{print "Free/Total Memory:" $17 "/" $8 "MB"}'

#log messages
echo "----------------------"
start_log=$(head -1 /var/log/syslog | cut -c 1-2)
oom=$(grep -ci kill /var/log/syslog)
echo -n "OOM errors since $start_log is:" $oom

echo ""
echo "--------------------------"
echo "utilization and most expensive processes"
top -b | head -3

echo
top -b | head -10 | tail -4

echo "---------------------------------"
echo "OPEN TCP PORTS:"
nmap -p 80 -T4 127.0.0.1

echo "-----------------------------------"
echo "CURRENT CONNECTIONS:SOCKET STATISTICS:"
ss -s

echo "--------------------------------------"
echo "PROCESSES:"
ps auxf --width=200

echo "========================================"
echo "VMSTAT:"
vmstat 1 5

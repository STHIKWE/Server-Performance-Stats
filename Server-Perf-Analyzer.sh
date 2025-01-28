#!/bin/bash

#Function to get system uptime
get_uptime()
{
    echo "System Uptime"
    uptime -p
}
#Function to get OS Version
get_OS_version()
{
    echo "OS Version: "
    Cat /etc/os-releases | grep -E "^PRETTY_NAME" | cut -d '=' -f 2 | sed 's/"//g'
}

#Function to get Users logged in
get_user()
{
    echo "Logged in Users: "
    who
}

#Funtion to get failed login attempts
get_failed_login()
{
  echo "Failed login attempts"
  grep "Failed password" /var/log/auth.log | wc -l
}
#Function to get Total Disk Usage
get_disk_usage()
{
    echo "Disk usage: "
    df -h --total | grep total | awk '{print "used: " $3 " /Free: " $4 " (" $5 " used)"}'
}

#Function to get total CPU usage
get_cpu_usage()
{
    echo "Total CPU Usage: "
    top -bn1 | grep "Cpu(s)" | sed "s/.*, *\([0-9.]*\)%* id.*/\1/" | awk '{print 100 - $1 "%"}'
}

#Funtion to get processes that uses CPU the most
get_high_cpu()
{
    echo "Top 5 processes by CPU usage: "
    ps aux --sort=-%cpu | head -n 6 | tail -n 5
}

#Funtion to get memory usage
get_mem_usage()
{
    echo "Total memory usage: "
    free - h | grep Mem | awk '{print "Used: " $3 " / Free: " $4 " (" $3/$2 * 100.0 "% used)"}'
}
 #Function to get top 5 processing using the memory
 get_high_mem()
 {
    echo "Top 5 processes by Memory Usage: "
    ps aux --sort=-mem | head -n 6 | tail -n 5
 }

 # Function to get system load average
 get_load_average() {
     echo "Load Average:"
     uptime | awk -F'load average: ' '{print $2}'
 }

 main()
 {
    echo "=== Server Performance Stats ==="

    get_uptime
    get_OS_version
    get_user
    get_failed_login
    get_disk_usage
    get_cpu_usage
    get_high_cpu
    get_mem_usage
    get_high_mem
    get_load_average

    echo "=== End of Stats ==="

 }

 # Run the script
 main




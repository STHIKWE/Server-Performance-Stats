# Server-Performance-Stats
**Script Breakdown:**



Total CPU Usage: Uses top to get CPU idle percentage and calculates the used percentage.




Memory Usage: Uses free -h to display used and free memory with a percentage.



Disk Usage: Uses df -h to show disk space used and free with percentage.



Top 5 Processes by CPU Usage: Uses ps aux to display the top processes based on CPU usage.



Top 5 Processes by Memory Usage: Similar to the CPU usage but sorted by memory usage.


OS Version: Extracts the OS version from /etc/os-release.



Uptime: Displays the system uptime in a readable format.



Load Average: Shows the load average for the last 1, 5, and 15 minutes.



Logged-in Users: Uses who to show the currently logged-in users.



Failed Login Attempts: Checks for failed login attempts by searching the /var/log/auth.log file for "Failed password."




**Usage:**



Save the script as **./server-perf-Analyzer.sh**.



Make the script executable - **chmod +x ./server-perf-Analyzer.sh**




Run using : ./server-perf-Analyzer.sh



Project URL : https://roadmap.sh/projects/server-stats




URL:https://github.com/STHIKWE/Server-Performance-Stats

last | wc -l > "/home/formeplate/Documents/shell-exe/job8/number_connection-$(date +%d-%m-%Y-%R).txt" # Path: job8\get_logs.sh
tar -cvf "/home/formeplate/Documents/shell-exe/job8/number_connection-$(date +%d-%m-%Y-%R).tar" /home/kali/Documents/shell-exe/job8/number_connection*.txt # Path: job8\get_logs.sh
rm "/home/formeplate/Documents/shell-exe/job8/number_connection-$(date +%d-%m-%Y-%R).txt" # Path: job8\get_logs.sh
echo "job8 done" # Path: job8\get_logs.sh

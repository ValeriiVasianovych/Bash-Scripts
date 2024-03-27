#!/bin/bash

apache_log_file="apache_logs"

if [ -f "$apache_log_file" ]; then
    grep ' 404 ' "$apache_log_file" | awk '{print $1, $6, $7}' > not_found.txt
else 
    echo "Your log file not found. Please provide $apache_log_file."
fi
#!/bin/bash

hostname=$(hostname)
touch "${hostname}.report"
runtime=$(date)
echo "run time: $runtime" >> "${hostname}.report"
disk_usage=$(df -h)
echo "Report on hard drive usage status:" >> "${hostname}.report"
echo "$disk_usage" >> "${hostname}.report"
logged_in_users=$(who)
echo "List of currently logged in accounts:" >> "${hostname}.report"
echo "$logged_in_users" >> "${hostname}.report"

echo "report has been created: ${hostname}.report"

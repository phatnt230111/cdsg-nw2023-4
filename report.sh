#!/bin/bash

# Lấy thời gian hiện tại
current_time=$(date)

# Lấy danh sách các tiến trình đang chạy, sắp xếp theo bộ nhớ
process_list=$(ps -eo pid,ppid,%mem,%cpu,cmd --sort=-%mem | head -n 10)

# Lấy trạng thái sử dụng của đĩa cứng
disk_usage=$(df -h)

# Lấy tên máy chủ
hostname=$(hostname)

# Ghi thông tin vào tệp hostname.report
echo "Thời gian hiện tại: $current_time" > $hostname.report
echo "" >> $hostname.report
echo "Danh sách các tiến trình đang chạy, sắp xếp theo bộ nhớ:" >> $hostname.report
echo "$process_list" >> $hostname.report
echo "" >> $hostname.report
echo "Trạng thái sử dụng của đĩa cứng:" >> $hostname.report
echo "$disk_usage" >> $hostname.report

echo "Báo cáo đã được xuất vào tệp $hostname.report."

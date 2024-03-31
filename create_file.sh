#!/bin/bash

mkdir /home/nw-4
mkdir /home/nw-2023

# Gán quyền truy cập chia sẻ cho chủ sở hữu và nhóm sở hữu
chmod -R 660 /home/nw-4
chmod -R 622 /home/nw-2023


# Gán chủ sở hữu và nhóm sở hữu
chown -R NTPhat:nw-4 /home/nw-4
chown -R NTPhat:nw-2023 /home/nw-2023

# Hiển thị thông báo khi tạo xong
echo "Thư mục /home/nw-4 và /home/nw-2023 đã được tạo và cấu hình bảo mật thành công!"

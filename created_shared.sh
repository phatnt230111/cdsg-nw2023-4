#!/bin/bash

# if [ -d "/home/nw-4" ]; then
#        echo "folder nw-4 has been created"
# else
#        mkdir /home/nw-4
# if [ -d "/home/shared" ]; then
#        echo "folder shared has been created"
# else
#    mkdir -p /home/shared
# fi
mkdir /home/nw-4
mkdir /home/shared
chown -R NT_Phat:nw-4 /home/nw-4
chown -R NT_Phat:cdsg /home/shared
# cap quyen truy cap
chmod -R 770 /home/nw-4
# 7 = (4 la viet, 2 la doc, 1 la tuong tac) (4+2+1)
# 0 = khong co quyen
chmod -R 733 /home/shared
# 3 (2+1)

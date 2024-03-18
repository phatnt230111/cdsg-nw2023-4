#!/bin/bash

if [ -d "/home/nw-4" ]; then
        echo "folder nw-4 has been created"
else
        mkdir /home/nw-4
if [ -d "/home/shared" ]; then
        echo "folder shared has been created"
else
    mkdir -p /home/shared
fi

chown -R NT_Phat:nw-4 /home/nw-4
chown -R NT_Phat:cdsg /home/shared
chmod -R 770 /home/nw-4
chmod -R 755 /home/shared

echo "done"

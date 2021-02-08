#!/bin/bash

for serwer in $@;
do
if timeout 15  /usr/bin/sshpass -p 'whoami+z' ssh-copy-id "$serwer"; then
echo "$serwer ssh done" &>/dev/null
else
echo "$HOSTNAME $serwer ssh fail"

fi
done
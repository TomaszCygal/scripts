#!/bin/bash

FSTAB_ENTRIES=$(cat /etc/fstab | grep -v '/dev/mapper/rootvg*' | grep -v '^#' | grep -v 'swap' | grep -v '/boot' | grep -v '/dev/shm' | grep -v '/dev/pts' | grep -v '/sys' | grep -v '/proc' | awk '{ print $2 }')

#(cat /etc/fstab | grep -v '/dev/mapper/rootvg*' | grep -v '^#' | grep -v 'swap' | grep -v '/boot' | grep -v '/dev/shm' | grep -v '/dev/pts' | grep -v '/sys' | grep -v '/proc' | awk '$1 !~/#|^$|swap/ {print $2}')

for FS in ${FSTAB_ENTRIES}

do

df -hPT | grep -iq ${FS}

if [ $? -eq 0 ]
 then
  echo "${FS} OK - mounted"
 else
  /bin/echo -e "${FS} \e[1;31mNOK - not mounted\e[0m"
fi

done

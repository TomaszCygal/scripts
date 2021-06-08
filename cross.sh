#!/bin/bash
side=$(hostname | awk '{print substr($0,0,3);}');
if [ "$side" == "es1" ]; then
compare=236;
elif [ "$side" == "es6" ] ;then
compare=237;
elif [ "$side" == "il1" ];then
compare=238;
fi
error=0
for server_mounts in `mount | grep -o '[0-9]\{1,3\}\.[0-9]\{1,3\}\.[0-9]\{1,3\}\.[0-9]\{1,3\}' | sed -e "s/\.*)$//" | sed -r 's/\.*([0-9]+)\.*([0-9]+)$//' | sed -e "s/10\.//"`; do
if [ ! "$compare" == "$server_mounts" ]; then
       error=1
                break
fi
done;
if [[ "${error}" == 1 ]]; then
        echo "CROSS MOUNT";
else
        echo "OK"
fi
exit
#adding comment
#adding comment2
#!/bin/bash
limit=120000 #offset limit in miliseconds
minuta=60000 #one minute in miliseconds
service="ntpd"
ntpd_status=$(pgrep -x ntpd >/dev/null || echo $?); #ntpd service status checking
offset=$(ntpq -nc peers 2>/dev/null| tail -n +3 | tr -d '-' | awk '{print $9}' | awk -F '.' '{print $1}'  ) #finding offset value
#If ntpd is not working message will be displayed
if pgrep -x "$service" >/dev/null
    [[ "$ntpd_status" == "1" ]]
    then
    /bin/echo -e "\e[1;31mNOK:100\e[0m " | tr -d '\n'
    exit
fi
#If offset value is > then variable $limit
for offset in ${offset}; do
    if [[  ${offset:-0} -ge ${limit:-120000} ]]
    then
    /bin/echo -e "\e[1;31mNOK:\e[0m$((offset / minuta)) " | tr -d '\n'

else

offset3=$(echo print $offset / 1000. | python2)
    /bin/echo "OK:${offset3} " | tr -d '\n' && echo " "
fi
done

#FSTAB_ENTRIES=$(cat /etc/fstab | grep -v '/dev/mapper/rootvg*' | grep -v '^#' | grep -v 'swap' | grep -v '/boot' | grep -v '/dev/shm' | grep -v '/dev/pts' | grep -v '/sys' | grep -v '/proc' | awk '{ print $2 }')

#(cat /etc/fstab | grep -v '/dev/mapper/rootvg*' | grep -v '^#' | grep -v 'swap' | grep -v '/boot' | grep -v '/dev/shm' | grep -v '/dev/pts' | grep -v '/sys' | grep -v '/proc' | awk '$1 !~/#|^$|swap/ {print $2}')

#for FS in ${FSTAB_ENTRIES}

#do

#df -hPT | grep -iq ${FS}

#if [ $? -eq 0 ]
# then
 # echo  "${FS} OK - mounted"
 #else
 # /bin/echo -e "${FS} \e[1;31mNOK - not mounted\e[0m"
#fi

#done

#echo -e $'\ndone'
#side=$(hostname | awk '{print substr($0,0,3);}');
#if [ "$side" == "es1" ]; then
#compare=236;
#elif [ "$side" == "es6" ] ;then
#compare=237;
#elif [ "$side" == "il1" ];then
#compare=238;
#fi
#error=0
#for server_mounts in `mount | grep -o '[0-9]\{1,3\}\.[0-9]\{1,3\}\.[0-9]\{1,3\}\.[0-9]\{1,3\}' | sed -e "s/\.*)$//" | sed -r 's/\.*([0-9]+)\.*([0-9]+)$//' | sed -e "s/10\.//"`; do
#if [ ! "$compare" == "$server_mounts" ]; then
       error=1
#                break
#fi
#done;
#if [[ "${error}" == 1 ]]; then
#        echo "CROSS MOUNT";
#else
#        echo "OK"
#fi
#exit

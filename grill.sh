#!/bin/bash


for serwer in $@; 

do /bin/echo -e "***********" && echo $serwer && /bin/echo -e "OFFSET - " | tr -d '\n'  && ssh -T $serwer < /home/plzz030n/scripts/offset.sh | tr -d '\n' &&  /bin/echo  "  " ;
/bin/echo -e "\nCROSS - " | tr -d '\n' && ssh -T $serwer < /home/plzz030n/scripts/cross.sh |  tr -d '\n' &&  /bin/echo  "  " ; ssh -T $serwer < /home/plzz030n/scripts/fsy.sh


done

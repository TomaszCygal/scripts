#!/bin/bash


for serwer in $@; 

do /bin/echo -e "***********" && echo $serwer && /bin/echo -e "OFFSET - " | tr -d '\n'  && ssh -T $serwer < /Users/tomaszcygal/Documents/Scripts/offset.sh | tr -d '\n' &&  /bin/echo  "  " ;
/bin/echo -e "\nCROSS - " | tr -d '\n' && ssh -T $serwer < /Users/tomaszcygal/Documents/Scripts/cross.sh |  tr -d '\n' &&  /bin/echo  "  " ; ssh -T $serwer < /Users/tomaszcygal/Documents/Scripts/fsy.sh


done

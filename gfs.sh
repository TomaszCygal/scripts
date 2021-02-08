#!/bin/bash


/usr/lpp/mmfs/bin/mmrepquota -j tevagpfs --block-size 1g | awk '{print $1,$3,$5}' > /home/plzz030n/block.txt

sed -i '/|/d' /home/plzz030n/block.txt
sed -i '/GB/d' /home/plzz030n/block.txt
sed -i '/Block/d' /home/plzz030n/block.txt
sed -i '/files/d' /home/plzz030n/block.txt
sed -i '/root/d' /home/plzz030n/block.txt

#file="/home/plzz030n/block.txt"
COPYPROD=$(cat /home/plzz030n/block.txt | awk '{ PRCNT = $2 / $3 ; PRCNT2 = PRCNT * 100 ;  print int(PRCNT2) }' | head -n 1)
fcopyprod=$(cat /home/plzz030n/block.txt | awk '{ free = $3 - $2 ; print int(free) }' | head -n 1)
QAP=$(cat /home/plzz030n/block.txt | awk '{ PRCNT = $2 / $3 ; PRCNT2 = PRCNT * 100 ;  print int(PRCNT2) }' | head -n 2 | tail -n 1)
fqap=$(cat /home/plzz030n/block.txt | awk '{ free = $3 - $2 ; print int(free) }' | head -n 2 | tail -n 1)
EPIUSE=$(cat /home/plzz030n/block.txt | awk '{ PRCNT = $2 / $3 ; PRCNT2 = PRCNT * 100 ;  print int(PRCNT2) }' | head -n 3 | tail -n 1)
fepiuse=$(cat /home/plzz030n/block.txt | awk '{ free = $3 - $2 ; print int(free) }' | head -n 3 | tail -n 1)
BACKUP=$(cat /home/plzz030n/block.txt | awk '{ PRCNT = $2 / $3 ; PRCNT2 = PRCNT * 100 ;  print int(PRCNT2) }' | head -n 4 | tail -n 1)
fbackup=$(cat /home/plzz030n/block.txt | awk '{ free = $3 - $2 ; print int(free) }' | head -n 4 | tail -n 1)
PROD=$(cat /home/plzz030n/block.txt | awk '{ PRCNT = $2 / $3 ; PRCNT2 = PRCNT * 100 ;  print int(PRCNT2) }' | head -n 5 | tail -n 1)
fprod=$(cat /home/plzz030n/block.txt | awk '{ free = $3 - $2 ; print int(free) }' | head -n 5 | tail -n 1)
ARCHIVE=$(cat /home/plzz030n/block.txt | awk '{ PRCNT = $2 / $3 ; PRCNT2 = PRCNT * 100 ;  print int(PRCNT2) }' | head -n 6 | tail -n 1)
farchive=$(cat /home/plzz030n/block.txt | awk '{ free = $3 - $2 ; print int(free) }' | head -n 6 | tail -n 1)
PREPROD=$(cat /home/plzz030n/block.txt | awk '{ PRCNT = $2 / $3 ; PRCNT2 = PRCNT * 100 ;  print int(PRCNT2) }' | head -n 7 | tail -n 1)
fpreprod=$(cat /home/plzz030n/block.txt | awk '{ free = $3 - $2 ; print int(free) }' | head -n 7 | tail -n 1)
QA=$(cat /home/plzz030n/block.txt | awk '{ PRCNT = $2 / $3 ; PRCNT2 = PRCNT * 100 ;  print int(PRCNT2) }' | head -n 8 | tail -n 1)
fqa=$(cat /home/plzz030n/block.txt | awk '{ free = $3 - $2 ; print int(free) }' | head -n 8 | tail -n 1)
DEV=$(cat /home/plzz030n/block.txt | awk '{ PRCNT = $2 / $3 ; PRCNT2 = PRCNT * 100 ;  print int(PRCNT2) }' | head -n 9 | tail -n 1)
fdev=$(cat /home/plzz030n/block.txt | awk '{ free = $3 - $2 ; print int(free) }' | head -n 9 | tail -n 1)
TRAINING=$(cat /home/plzz030n/block.txt | awk '{ PRCNT = $2 / $3 ; PRCNT2 = PRCNT * 100 ;  print int(PRCNT2) }' | head -n 10 | tail -n 1)
ftraining=$(cat /home/plzz030n/block.txt | awk '{ free = $3 - $2 ; print int(free) }' | head -n 10 | tail -n 1)
SNDX=$(cat /home/plzz030n/block.txt | awk '{ PRCNT = $2 / $3 ; PRCNT2 = PRCNT * 100 ;  print int(PRCNT2) }' | head -n 11 | tail -n 1)
fsndx=$(cat /home/plzz030n/block.txt | awk '{ free = $3 - $2 ; print int(free) }' | head -n 11 | tail -n 1)
TRANSPORT=$(cat /home/plzz030n/block.txt | awk '{ PRCNT = $2 / $3 ; PRCNT2 = PRCNT * 100 ;  print int(PRCNT2) }' | head -n 12 | tail -n 1)
ftransport=$(cat /home/plzz030n/block.txt | awk '{ free = $3 - $2 ; print int(free) }' | head -n 12 | tail -n 1)
IBM_MQ=$(cat /home/plzz030n/block.txt | awk '{ PRCNT = $2 / $3 ; PRCNT2 = PRCNT * 100 ;  print int(PRCNT2) }' | head -n 13 | tail -n 1)
fibmmq=$(cat /home/plzz030n/block.txt | awk '{ free = $3 - $2 ; print int(free) }' | head -n 13 | tail -n 1)
SW_REPO=$(cat /home/plzz030n/block.txt | awk '{ PRCNT = $2 / $3 ; PRCNT2 = PRCNT * 100 ;  print int(PRCNT2) }' | head -n 14 | tail -n 1)
fswrepo=$(cat /home/plzz030n/block.txt | awk '{ free = $3 - $2 ; print int(free) }' | head -n 14 | tail -n 1)
TOOLS=$(cat /home/plzz030n/block.txt | awk '{ PRCNT = $2 / $3 ; PRCNT2 = PRCNT * 100 ;  print int(PRCNT2) }' | head -n 15 | tail -n 1)
ftools=$(cat /home/plzz030n/block.txt | awk '{ free = $3 - $2 ; print int(free) }' | head -n 15 | tail -n 1)
DEVP=$(cat /home/plzz030n/block.txt | awk '{ PRCNT = $2 / $3 ; PRCNT2 = PRCNT * 100 ;  print int(PRCNT2) }' | tail -n 1)
fdevp=$(cat /home/plzz030n/block.txt | awk '{ free = $3 - $2 ; print int(free) }' | tail -n 1)



if [ $COPYPROD -gt 85 ]; then
    echo "GPFS quota alert on COPYPROD $COPYPROD% $fcopyprod"GB" free"

fi
if [ $QAP -gt 85 ]; then
    echo "GPFS quota alert on QAP $QAP% $fqap"GB" free"

fi
if [ $EPIUSE -gt 97 ]; then
    echo "GPFS quota alert on EPIUSE $EPIUSE% $fepiuse"GB" free"

fi
if [ $BACKUP -gt 85 ]; then
    echo "GPFS quota alert on BACKUP $BACKUP% $fbackup"GB" free"

fi
if [ $PROD -gt 85 ]; then
    echo "GPFS quota alert on PROD $PROD% $fprod"GB" free"

fi
if [ $ARCHIVE -gt 85 ]; then
    echo "GPFS quota alert on ARCHIVE $ARCHIVE% $farchive"GB" free"

fi
if [ $PREPROD -gt 85 ]; then
    echo "GPFS quota alert on PREPROD $PREPROD% $fpreprod"GB" free"

fi
if [ $QA -gt 85 ]; then
    echo "GPFS quota alert on QA $QA% $fqa"GB" free"

fi
if [ $DEV -gt 85 ]; then
    echo "GPFS quota alert on DEV $DEV% $fdev"GB" free"
 
fi
if [ $TRAINING -gt 85 ]; then
    echo "GPFS quota alert on TRAINING $TRAINING% $ftraining"GB" free"

fi
if [ $SNDX -gt 85 ]; then
    echo "GPFS quota alert on SNDX $SNDX% $fsndx"GB" free"
fi
if [ $TRANSPORT -gt 95 ]; then
    echo "GPFS quota alert on TRANSPORT $TRANSPORT% $ftransport"GB" free"

fi
if [ $IBM_MQ -gt 85 ]; then
    echo "GPFS quota alert on IBM_MQ $IBM_MQ% $fibmmq"GB" free"

fi
if [ $SW_REPO -gt 85 ]; then
    echo "GPFS quota alert on SW_REPO $SW_REPO% $fswrepo"GB" free"

fi
if [ $TOOLS -gt 85 ]; then
    echo "GPFS quota alert on TOOLS $TOOLS% $ftools"GB" free"

fi
if [ $DEVP -gt 85 ]; then
    echo "GPFS quota alert on DEVP $DEVP% $fdev"GB" free"

fi

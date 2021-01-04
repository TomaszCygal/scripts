#!/bin/bash

if [ $(/usr/bin/getent passwd tevipat1) ]; then
  echo "$HOSTNAME user exist" &>/dev/null
else
  echo "$HOSTNAME user NOT EXIST"

fi

if [ $(/usr/bin/getent group playbook) ]; then
  echo "$HOSTNAME group exist" &>/dev/null
else
  echo "$HOSTNAME group NOT EXIST"

fi

#kopiuje do csv i mozna przeniesc do excelac
| sed 's/[ \t]/,/g' > list.csv


#!/bin/bash
#skrypt do sprawdzania versji pythona 

for server in $@; 

do echo $HOSTNAME && python --version

done
#!/bin/bash

for server in $@;

do ssh -T $server < /home/plzz030n/ug_check.sh

done
#!/bin/bash

side=$HOSTNAME
#side = $(side#[1-9]*)
side2=${side%[1-9]*}
echo $side2


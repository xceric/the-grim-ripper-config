#!/bin/bash

# input is mounted directory, not device
BD_MOUNT=$1
echo "Ripping Blu-Ray mounted at ${BD_MOUNT}"

# determine what device is mounted to the input directory
BD_DEVICE="$(df ${BD_MOUNT} | grep ${BD_MOUNT} | grep -o -G '/dev/sr[0123]')"
echo "Device: ${BD_DEVICE}"

# get base name of mounted path
BD_BASENAME="$(basename ${BD_MOUNT})"
BD_OUTPUT=~/Videos/$BD_BASENAME


# rip
echo "Ripping Blu-Ray to ${BD_OUTPUT}"
mkdir $BD_OUTPUT
makemkvcon --minlength=3600 -r --decrypt --directio=true mkv dev:$BD_DEVICE all $BD_OUTPUT
mv $BD_OUTPUT/title00.mkv ~/Videos/$BD_BASENAME.mkv

#eject $DVD_DEVICE

sleep 60


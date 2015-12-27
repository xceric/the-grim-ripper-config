#!/bin/bash
#DVD_DEVICE_NAME="$(grep -o -G sr[01234] <<< $1)"              # GREP the drive from CLI arguments
DVD_DEVICE=$1
#DVD_MOUNT="/mnt/dvd${DVD_DEVICE_NAME}"

#mkdir $DVD_MOUNT
#mount $DVD_DEVICE $DVD_MOUNT

# slight modification from http://arstechnica.com/civis/viewtopic.php?t=1137975
# redirect stderr to stdout, grep line with name, extract name
# vobcopy needs to work with a mounted drive, direct device path will eventually get removed
#DVD_NAME="$(vobcopy -i ${DVD_MOUNT} -I 2>&1 | grep DVD-name | sed -e 's/.*DVD-name: //')"
DVD_NAME="$(vobcopy -i ${DVD_DEVICE} -I 2>&1 | grep DVD-name | sed -e 's/.*DVD-name: //')"

# rip
#HandBrakeCLI -i $DVD_MOUNT -o ~/Videos/$DVD_NAME.mp4 --preset="Normal"
HandBrakeCLI -i $DVD_DEVICE -o ~/Videos/$DVD_NAME.mkv --preset="Normal"

#umount $DVD_MOUNT
#rmdir $DVD_MOUNT

#eject $DVD_DEVICE

sleep 3600


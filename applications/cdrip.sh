#!/bin/bash
CDDRIVE="$(grep -o -G sr[01234] <<< $1)"              # GREP the drive from CLI arguments
abcde -N -d /dev/$CDDRIVE                             # rip
sleep 60


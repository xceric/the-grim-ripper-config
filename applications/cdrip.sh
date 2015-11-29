#!/bin/bash
CDDRIVE="$(grep -o -G sr[01234] <<< $1)"              # GREP the drive from CLI arguments
abcde -N -c ~/abcde-ogg.conf -d /dev/$CDDRIVE -x                            # rip
sleep 60


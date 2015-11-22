#!/bin/bash
#
# script for installing software for The Grim Ripper machine
# run as sudo
# ELM 11/5/15
#

# add HandBrakeCLI PPA
#apt-add-repository ppa:stebbins/handbrake-releases

# add MakeMKV PPA
apt-add-repository 'deb http://ppa.launchpad.net/ubuntu-ebower/ebower/ubuntu vivid main'

apt-get update

# remove totem to be replaced by VLC
apt-get purge -y totem

# install cd rip tools
apt-get install -y abcde lame eyed3 flac oggenc vorbis-tools glyrc imagemagick
wget https://raw.githubusercontent.com/acabal/scripts/master/ogg-cover-art -O ~/ogg-cover-art
chmod +x ~/ogg-cover-art

# install dvd/bd rip tools
apt-get install -y handbrake-gtk handbrake-cli libdvdread4 vobcopy makemkv-install libav-tools vlc
/usr/share/doc/libdvdread4/install-css.sh
makemkv-install latest

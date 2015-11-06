#!/bin/bash
#
# script for installing software for The Grim Ripper machine
# run as sudo
# ELM 11/5/15
#

# add HandBrakeCLI PPA
apt-add-repository ppa:stebbins/handbrake-releases

# add MakeMKV PPA
apt-add-repository ppa:ubuntu-ebower/ebower

apt-get update

# remove totem to be replaced by VLC
apt-get purge -y totem

# install cd rip tools
apt-get install -y abcde lame eyed3 flac oggenc

# install dvd/bd rip tools
apt-get install -y HandBrake-GTK HandBrake-CLI libdvdread4 vobcopy makemkv-install vlc
/usr/share/doc/libdvdread4/install-css.sh
makemkv-install latest

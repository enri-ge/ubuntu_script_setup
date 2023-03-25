#!/bin/bash

# Author:               Enrico Alletto
# Created:              March 24, 2023
# Updated:              March 24, 2023
# Script Name:          Ubuntu Desktop Setup
# Script Description:   This script configures some aesthetic GNOME parameters

# *** favorite-apps ***

filename="favourites.txt"

echo ""
echo "-------------------------------------------------"

while read line; do
# read each line
testoBis="$line, $testoBis"
echo $line
done < $filename

echo ""
echo "DONE - Favorite applications correctly configured"
echo "-------------------------------------------------"
echo ""
#testoBis1=$($testoBis | awk '{print substr($0,1,length($0)-1)}')
testoBis1=$(echo $testoBis | awk '{print substr($0,1,length($0)-1)}')
#echo $testoBis1

gsettings reset org.gnome.shell favorite-apps

#gsettings set org.gnome.shell favorite-apps "$(gsettings get org.gnome.shell favorite-apps | sed s/.$//), 'firefox_firefox.desktop', 'org.gnome.Nautilus.desktop', 'snap-store_ubuntu-software.desktop', 'yelp.desktop', 'org.gnome.Terminal.desktop']"
gsettings set org.gnome.shell favorite-apps "$(gsettings get org.gnome.shell favorite-apps | sed s/.$//), $testoBis1]"

#******************************************
# dconf read /org/gnome/shell/favorite-apps
#******************************************

# *** favorite-apps ***

gsettings set org.gnome.shell.extensions.dash-to-dock show-apps-at-top false
gsettings set org.gnome.shell.extensions.dash-to-dock dock-position BOTTOM
gsettings set org.gnome.shell.extensions.dash-to-dock transparency-mode FIXED
gsettings set org.gnome.shell.extensions.dash-to-dock dash-max-icon-size 64
gsettings set org.gnome.shell.extensions.dash-to-dock extend-height true

lsb_release -a

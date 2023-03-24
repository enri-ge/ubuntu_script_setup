#!/bin/bash

# Author:               Enrico Alletto
# Created:              March 24, 2023
# Updated:              March 24, 2023
# Script Name:          Ubuntu Desktop Setup
# Script Description:   This script configures some aesthetic GNOME parameters

# *** favorite-apps ***
gsettings set org.gnome.shell favorite-apps "$(gsettings get org.gnome.shell favorite-apps | sed s/.$//), 'firefox_firefox.desktop', 'org.gnome.Nautilus.desktop', 'snap-store_ubuntu-software.desktop', 'yelp.desktop', 'org.gnome.Terminal.desktop']"
echo ""
echo "-------------------------------------------------"
echo "Firefox"
echo "Nautilus"
echo "Ubuntu Software"
echo "Help"
echo "Terminal"
echo ""
echo "DONE - Favorite applications correctly configured"
echo "-------------------------------------------------"
echo ""
# *** favorite-apps ***

gsettings set org.gnome.shell.extensions.dash-to-dock show-apps-at-top false
gsettings set org.gnome.shell.extensions.dash-to-dock dock-position BOTTOM
gsettings set org.gnome.shell.extensions.dash-to-dock transparency-mode FIXED
gsettings set org.gnome.shell.extensions.dash-to-dock dash-max-icon-size 64
gsettings set org.gnome.shell.extensions.dash-to-dock extend-height true

lsb_release -a

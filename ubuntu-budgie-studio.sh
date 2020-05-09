#!/bin/bash

# Install UbuntuStudio packages without Kdenlive, Darktable, or GIMP

apt update
apt -y install ubuntustudio-lowlatency-settings ubuntustudio-performance-tweaks ubuntustudio-audio ubuntustudio-audio-plugins ubuntustudio-fonts ubuntustudio-graphics ubuntustudio-photography ubuntustudio-publishing ubuntustudio-video ubuntustudio-wallpapers darktable- kdenlive- gimp-

# Install newer verisions

add-apt-repository ppa:kdenlive/kdenlive-stable

# This is Darktable from the master branch. Possibly unstable!

sh -c "echo 'deb http://download.opensuse.org/repositories/graphics:/darktable:/master/xUbuntu_20.04/ /' > /etc/apt/sources.list.d/graphics:darktable:master.list"

wget -nv https://download.opensuse.org/repositories/graphics:darktable:master/xUbuntu_20.04/Release.key -O Release.key

apt-key add - < Release.key

apt update 

apt -y install  kdenlive darktable

snap install glimpse-editor 

echo "Done! You should now reboot"



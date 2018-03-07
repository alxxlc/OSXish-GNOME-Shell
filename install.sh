#!/bin/bash

# Pre-reqs:
#	pacman -S ruby-sass ruby-bundler npm

# Credits:
# La Capitaine Icons:
#	https://github.com/keeferrourke/la-capitaine-icon-theme
#
# Gnome-OSX Theme:
#	https://www.opendesktop.org/p/1171688/
#
# Sierra GTK Theme:
#	https://github.com/vinceliuice/Sierra-gtk-theme
#
# Lato Font:
#	http://www.latofonts.com/lato-free-fonts/
#	https://fonts.google.com/specimen/Lato

echo -e "\e[96mBuilding theme files..."
chmod +x ./Sierra-gtk-theme/Install
./Sierra-gtk-theme/Install

echo -e "\e[96mSetting application theme..."
mkdir -p ~/.themes
cp ./Gnome-OSX-V-HSierra/ ~/.themes

echo -e "\e[96mSetting shell theme..."

echo -e "\e[96mSetting system fonts..."
mkdir -p ~/.local/share/fonts/
cp ./Lato/*.ttf ~/.local/share/fonts/
# Set interface font
gsettings set org.gnome.desktop.interface font-name "Lato Light 10.5"
# Set window title font
gsettings set org.gnome.desktop.wm.preferences titlebar-font "Lato Regular 11"

echo -e "\e[96mTweaking GNOME..."

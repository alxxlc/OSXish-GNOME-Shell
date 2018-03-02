#!/bin/bash

# Pre-reqs:
#	pacman -S ruby-sass ruby-bundler npm

echo -e "\e[96mSetting application theme..."
mkdir -p ~/.themes
cp ./Gnome-OSX-V-HSierra/ ~/.themes

echo -e "\e[96mSetting shell theme..."

echo -e "\e[96mSetting system fonts..."
mkdir -p ~/.local/share/fonts/

echo -e "\e[96mTweaking GNOME..."

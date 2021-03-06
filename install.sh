#!/bin/bash

# Credits:
# La Capitaine Icons:
#	https://github.com/keeferrourke/la-capitaine-icon-theme
#
# Gnome-OSX Themes:
#	https://github.com/paullinuxthemer/Mc-OS-themes
#
# Sierra GTK Theme:
#	https://github.com/vinceliuice/Sierra-gtk-theme
#
# Lato Font:
#	http://www.latofonts.com/lato-free-fonts/
#	https://fonts.google.com/specimen/Lato
#
# Install Script and Asset Tweaks:
#   Alex Coté
#   https://gitlab.com/alxxlc

# TODO:
    # Gnome Settings Tweaks:
    #     Window->Titlebar Button Placement: Left
    
    # Dash-To-Dock Tweaks:
    #     Show Window Counter Indicators: TRUE
    #         Customize Indicator Style: FALSE
    #     White background
    #     Transparent BG
    
    # Edit wallpapers
    # Copy wallapper edits to pictures folder

# Future Possibilities:
    # Allow choosing light/dark, solid/transparent, and OSX version on install
    #   OR Install them all and allow for switching on the fly.

echo -e "\e[96mSetting application theme..."
mkdir -p ~/.themes
cp -r ./Mc-OS-themes/McOS-MJV-3.30/ ~/.themes

echo -e "\e[96mSetting shell theme..."
chmod +x ./Sierra-gtk-theme/Install
./Sierra-gtk-theme/Install

echo -e "\e[96mTweaking shell theme..."
# Remove cp alias, if any.
# This is to prevent prompts for overwriting files.
unalias cp
cp -r ./AssetTweaks/assets/* ~/.themes/Sierra-light-solid/gnome-shell/assets/

echo -e "\e[96mSetting icon theme..."
mkdir -p ~/.icons
cp -r ./la-capitaine-icon-theme/ ~/.icons

echo -e "\e[96mSetting system fonts..."
mkdir -p ~/.local/share/fonts/
cp ./Lato/*.ttf ~/.local/share/fonts/

echo -e "\e[96mTweaking GNOME..."
### Set themes:
# Set application theme
gsettings set org.gnome.desktop.interface gtk-theme "McOS-MJV-3.30"
# Set shell theme
gsettings set org.gnome.shell.extensions.user-theme name "Sierra-light-solid"
# Set icon theme
gsettings set org.gnome.desktop.interface icon-theme "la-capitaine-icon-theme"
# Set interface font
gsettings set org.gnome.desktop.interface font-name "Lato Light 10.5"
# Set window title font
gsettings set org.gnome.desktop.wm.preferences titlebar-font "Lato Regular 11"

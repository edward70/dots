#!/bin/bash
# note: does not update kernel config since bad stuff could happen

# xorg config
cp .xinitrc ~

# bashrc
cp .bashrc ~
sudo cp bashrc /etc/bash

# alacritty config
mkdir -p ~/.config/alacritty
cp alacritty.yml ~/.config/alacritty

# driver/device config
sudo mkdir -p /etc/X11/xorg.conf.d
sudo cp 20-intel.conf /etc/X11/xorg.conf.d
sudo cp 40-touchpad.conf /etc/X11/xorg.conf.d
sudo cp i915.conf /etc/modprobe.d

# portage
sudo cp make.conf /etc/portage
sudo cp package.accept_keywords /etc/portage

# font config
sudo cp local.conf /etc/fonts
rm -rf ~/.local/share/fonts
mkdir -p ~/.local/share/fonts
cp fonts/* ~/.local/share/fonts
fc-cache -fv

# rofi
cp config.rasi ~/.config/rofi/config.rasi
cp roficonfig ~/.config/rofi/config

# wallpaper
cp wallpaper.jpg ~/Pictures/wallpaper.jpg

#!/bin/bash


#yay!

sudo pacman -S make git base-devel

git clone https://aur.archlinux.org/yay.git


cd yay


makepkg -si

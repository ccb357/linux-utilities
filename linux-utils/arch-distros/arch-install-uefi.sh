#!/bin/bash

#partitioning disks

cfdisk


#formatting disks

mkdir /mnt/boot/efi

mkfs.fat -F 32 /dev/sda1

mkswap /dev/sda2

mkfs.ext4 /dev/sda3

#mounting partitions
mount /dev/sda1 /mnt/boot/efi

swapon /dev/sda2

mount /dev/sda3 /mnt

# using pacstrap to install stuff.
pacstrap -K /mnt base linux linux-firmware base-devel 

#genfstab
genfstab -U /mnt >> /mnt/etc/fstab

#going into the installed os
arch-chroot /mnt

echo i cant do the timedate,so we are skipping that,if you want to make it, please run (ln -sf /usr/share/zoneinfo/Region/City /etc/localtime)

# locales
nano /etc/locale.gen

locale-gen

echo unfinished

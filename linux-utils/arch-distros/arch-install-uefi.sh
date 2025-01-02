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

echo do the rest,this is unfinished.

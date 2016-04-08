#!/bin/sh
cd /chroot/base
mount -t proc proc proc/
mount --rbind /sys sys/
mount --rbind /dev dev/
mount --rbind /run run/
cp /etc/resolv.conf etc/resolv.conf
chroot ./ /bin/bash

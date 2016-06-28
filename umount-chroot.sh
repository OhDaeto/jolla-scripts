#!/bin/sh
cd /chroot/base
umount -l run/
umount -l dev
umount -l sys/
umount -l proc/

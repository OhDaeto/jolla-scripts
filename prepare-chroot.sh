#!/bin/sh
mkdir /chroot
btrfs subvolume create /chroot/base
mkdir /chroot/base/dev
cp -a /dev/zero /chroot/base/dev/zero
mkdir /chroot/base/etc
cp -ar /etc/zypp /chroot/base/etc/
cp -a /etc/boardname /chroot/base/etc/
zypper --root /chroot/base refresh
zypper --root /chroot/base install basesystem rpm rpm-build curl vim-enhanced PackageKit tar make gcc gcc-c++ meego-rpm-config libstdc++-devel
cp /etc/rpm/platform /chroot/base/etc/rpm/

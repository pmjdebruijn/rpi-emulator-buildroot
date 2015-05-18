#!/bin/sh

if [ ! -d $1/usr/share/roms ]; then
  ln -vsf /mnt/roms $1/usr/share/roms
fi

if [ -f $1/etc/init.d/S01logging ]; then
  mv -vf $1/etc/init.d/S01logging $1/etc/init.d/S03logging
fi

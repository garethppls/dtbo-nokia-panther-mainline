#!/bin/sh
set -e
# https://learn.adafruit.com/introduction-to-the-beaglebone-black-device-tree/compiling-an-overlay
dtc -O dtb -o 07_dtbdump_fragment@0.dtb.dtbo -b 0 -@ 07_dtbdump_fragment@0.dtb.dts
./mkdtboimg.py cfg_create dtbo.img dtboimg.cfg

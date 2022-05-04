#!/bin/sh
set -e
# https://learn.adafruit.com/introduction-to-the-beaglebone-black-device-tree/compiling-an-overlay
dtc -O dtb -o 01_dtbdump_fragment@0.dtb.dtbo -b 0 -@ 01_dtbdump_fragment@0.dtb.dts
dtc -O dtb -o 02_dtbdump_fragment@0.dtb.dtbo -b 0 -@ 02_dtbdump_fragment@0.dtb.dts
dtc -O dtb -o 04_dtbdump_fragment@0.dtb.dtbo -b 0 -@ 04_dtbdump_fragment@0.dtb.dts
dtc -O dtb -o 05_dtbdump_Qualcomm_Technologies,_Inc._MSM8917-MTP.dtb.dtbo -b 0 -@ 05_dtbdump_Qualcomm_Technologies,_Inc._MSM8917-MTP.dtb.dts
dtc -O dtb -o 06_dtbdump_Qualcomm_Technologies,_Inc._APQ8017-CDP.dtb.dtbo -b 0 -@ 06_dtbdump_Qualcomm_Technologies,_Inc._APQ8017-CDP.dtb.dts
dtc -O dtb -o 07_dtbdump_fragment@0.dtb.dtbo -b 0 -@ 07_dtbdump_fragment@0.dtb.dts
./mkdtboimg.py cfg_create dtbo.img dtboimg.cfg

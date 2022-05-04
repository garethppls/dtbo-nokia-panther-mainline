#!/bin/sh
set -e
# https://learn.adafruit.com/introduction-to-the-beaglebone-black-device-tree/compiling-an-overlay
dtc -O dtb -o 01_dtbdump_fragment@0.dtb.dtbo -b 0 -@ 01_dtbdump_fragment@0.dtb.dts
dtc -O dtb -o 02_dtbdump_fragment@0.dtb.dtbo -b 0 -@ 02_dtbdump_fragment@0.dtb.dts
dtc -O dtb -o 04_dtbdump_fragment@0.dtb.dtbo -b 0 -@ 04_dtbdump_fragment@0.dtb.dts
dtc -O dtb -o 05_dtbdump_Qualcomm_Technologies,_Inc._MSM8917-MTP.dtb.dtbo -b 0 -@ 05_dtbdump_Qualcomm_Technologies,_Inc._MSM8917-MTP.dtb.dts
dtc -O dtb -o 06_dtbdump_Qualcomm_Technologies,_Inc._APQ8017-CDP.dtb.dtbo -b 0 -@ 06_dtbdump_Qualcomm_Technologies,_Inc._APQ8017-CDP.dtb.dts
dtc -O dtb -o 07_dtbdump_fragment@0.dtb.dtbo -b 0 -@ 07_dtbdump_fragment@0.dtb.dts
dtc -O dtb -o 08_dtbdump_Qualcomm_Technologies,_Inc._MSM8917_External_Audio_Codec_CDP.dtb.dtbo -b 0 -@ 08_dtbdump_Qualcomm_Technologies,_Inc._MSM8917_External_Audio_Codec_CDP.dtb.dts
dtc -O dtb -o 09_dtbdump_Qualcomm_Technologies,_Inc._MSM8940-PMI8950_CDP.dtb.dtbo -b 0 -@ 09_dtbdump_Qualcomm_Technologies,_Inc._MSM8940-PMI8950_CDP.dtb.dts
dtc -O dtb -o 10_dtbdump_Qualcomm_Technologies,_Inc._MSM8917-QRD_SKU5.dtb.dtbo -b 0 -@ 10_dtbdump_Qualcomm_Technologies,_Inc._MSM8917-QRD_SKU5.dtb.dts
dtc -O dtb -o 11_dtbdump_Qualcomm_Technologies,_Inc._MSM8917-CDP.dtbo -b 0 -@ 11_dtbdump_Qualcomm_Technologies,_Inc._MSM8917-CDP.dtb.dts
dtc -O dtb -o 12_dtbdump_fragment@0.dtb.dtbo -b 0 -@ 12_dtbdump_fragment@0.dtb.dts
dtc -O dtb -o 13_dtbdump_QRD_+_SMB1360.dtb.dtbo -b 0 -@ 13_dtbdump_QRD_+_SMB1360.dtb.dts
dtc -O dtb -o 14_dtbdump_fragment@0.dtb.dtbo -b 0 -@ 14_dtbdump_fragment@0.dtb.dts
dtc -O dtb -o 15_dtbdump_Qualcomm_Technologies,_Inc._APQ8017-MTP.dtb.dtbo -b 0 -@ 15_dtbdump_Qualcomm_Technologies,_Inc._APQ8017-MTP.dtb.dts
dtc -O dtb -o 16_dtbdump_fragment@0.dtb.dtbo -b 0 -@ 16_dtbdump_fragment@0.dtb.dts
dtc -O dtb -o 17_dtbdump_Qualcomm_Technologies,_Inc._MSM8917-RCM.dtb.dtbo -b 0 -@ 17_dtbdump_Qualcomm_Technologies,_Inc._MSM8917-RCM.dtb.dts
dtc -O dtb -o 18_dtbdump_fragment@0.dtb.dtbo -b 0 -@ 18_dtbdump_fragment@0.dtb.dts
dtc -O dtb -o 19_dtbdump_Qualcomm_Technologies,_Inc._MSM8940-MTP.dtb.dtbo -b 0 -@ 19_dtbdump_Qualcomm_Technologies,_Inc._MSM8940-MTP.dtb.dts
dtc -O dtb -o 20_dtbdump_Qualcomm_Technologies,_Inc._MSM8917-CDP_ML_Touch.dtb.dtbo -b 0 -@ 20_dtbdump_Qualcomm_Technologies,_Inc._MSM8917-CDP_ML_Touch.dtb.dts
dtc -O dtb -o 21_dtbdump_fragment@0.dtb.dtbo -b 0 -@ 21_dtbdump_fragment@0.dtb.dts
./mkdtboimg.py cfg_create dtbo.img dtboimg.cfg

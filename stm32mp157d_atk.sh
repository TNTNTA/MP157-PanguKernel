#!/bin/sh
make distclean
make stm32mp1_atk_defconfig
make menuconfig
make uImage dtbs LOADADDR=0XC2000040 -j16


cp arch/arm/boot/uImage /home/tangtao/work/tftp -rf
cp arch/arm/boot/dts/stm32mp157d-atk.dtb /home/tangtao/work/tftp -rf
echo "编译完成，请查看tftp文件夹查看编译好的目标文件"



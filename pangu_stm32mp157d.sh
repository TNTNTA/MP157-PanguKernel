#!/bin/sh
#make distclean
#make pangu_stm32mp1_defconfig
make uImage dtbs LOADADDR=0XC2000040 -j16
#make modules -j8

cp arch/arm/boot/uImage /home/tangtao/work/tftp -rf
cp arch/arm/boot/dts/stm32mp157d-atk.dtb /home/tangtao/work/tftp -rf
echo "编译完成，请查看tftp文件夹查看编译好的目标文件"



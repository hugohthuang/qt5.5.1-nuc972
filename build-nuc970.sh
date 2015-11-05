#!/bin/bash


if [ -d qtbase ]; then
	cp -R linux-arm-nuc970-g++ ./qtbase/mkspecs/devices
else
	echo Please PULL qtbase
	exit -1
fi

./configure \
-opensource \
-confirm-license \
-debug-and-release \
-verbose \
-device linux-arm-nuc970-g++ \
-device-option CROSS_COMPILE=/usr/local/arm_linux_4.8/bin/arm-linux- \
-sysroot /usr/local/arm_linux_4.8 \
-no-gcc-sysroot \
-extprefix /usr/local/qt-5.5.1-arm-nuc970 \
-rpath \
-qpa linuxfb
#-prefix /usr/local/qt-5.5.1-arm-nuc970 \


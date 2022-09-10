#!/bin/bash
set -e
cd "$(dirname "$0")"
PATH="$PWD/arm-gnu-toolchain-11.3.rel1-x86_64-arm-none-eabi/bin:$PATH"
cp -a firmware/Configuration\ Files/Aquila\ Templates/BLTouch-3x3/Configuration.h firmware/Sources/Marlin/Configuration.h
cp -a firmware/Configuration\ Files/Aquila\ Templates/BLTouch-3x3/Configuration_adv.h firmware/Sources/Marlin/Configuration_adv.h
cd firmware/Debug
make all -j$(nproc)

if [[ -d /media/$USER/AQUILA/firmware ]]; then
	cp firmware.bin /media/$USER/AQUILA/firmware
	sync
	udisksctl unmount -fb $(findmnt -nM /media/$USER/AQUILA -o SOURCE) 
fi

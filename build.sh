#!/bin/bash
set -e
PATH="$PWD/arm-gnu-toolchain-11.3.rel1-x86_64-arm-none-eabi/bin:$PATH"
cp firmware/Configuration\ Files/Aquila\ Templates/BLTouch-3x3/Configuration.h firmware/Sources/Marlin/Configuration.h
cp firmware/Configuration\ Files/Aquila\ Templates/BLTouch-3x3/Configuration_adv.h firmware/Sources/Marlin/Configuration_adv.h
cd firmware/Debug
make all -j$(nproc)
cp firmware/Debug/firmware.bin /media/$USER/AQUILA/firmware

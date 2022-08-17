################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../Sources/Marlin/src/gcode/control/M10-M11.cpp \
../Sources/Marlin/src/gcode/control/M108_M112_M410.cpp \
../Sources/Marlin/src/gcode/control/M111.cpp \
../Sources/Marlin/src/gcode/control/M120_M121.cpp \
../Sources/Marlin/src/gcode/control/M17_M18_M84.cpp \
../Sources/Marlin/src/gcode/control/M211.cpp \
../Sources/Marlin/src/gcode/control/M226.cpp \
../Sources/Marlin/src/gcode/control/M280.cpp \
../Sources/Marlin/src/gcode/control/M282.cpp \
../Sources/Marlin/src/gcode/control/M3-M5.cpp \
../Sources/Marlin/src/gcode/control/M350_M351.cpp \
../Sources/Marlin/src/gcode/control/M380_M381.cpp \
../Sources/Marlin/src/gcode/control/M400.cpp \
../Sources/Marlin/src/gcode/control/M42.cpp \
../Sources/Marlin/src/gcode/control/M605.cpp \
../Sources/Marlin/src/gcode/control/M7-M9.cpp \
../Sources/Marlin/src/gcode/control/M80_M81.cpp \
../Sources/Marlin/src/gcode/control/M85.cpp \
../Sources/Marlin/src/gcode/control/M993_M994.cpp \
../Sources/Marlin/src/gcode/control/M997.cpp \
../Sources/Marlin/src/gcode/control/M999.cpp \
../Sources/Marlin/src/gcode/control/T.cpp 

OBJS += \
./Sources/Marlin/src/gcode/control/M10-M11.o \
./Sources/Marlin/src/gcode/control/M108_M112_M410.o \
./Sources/Marlin/src/gcode/control/M111.o \
./Sources/Marlin/src/gcode/control/M120_M121.o \
./Sources/Marlin/src/gcode/control/M17_M18_M84.o \
./Sources/Marlin/src/gcode/control/M211.o \
./Sources/Marlin/src/gcode/control/M226.o \
./Sources/Marlin/src/gcode/control/M280.o \
./Sources/Marlin/src/gcode/control/M282.o \
./Sources/Marlin/src/gcode/control/M3-M5.o \
./Sources/Marlin/src/gcode/control/M350_M351.o \
./Sources/Marlin/src/gcode/control/M380_M381.o \
./Sources/Marlin/src/gcode/control/M400.o \
./Sources/Marlin/src/gcode/control/M42.o \
./Sources/Marlin/src/gcode/control/M605.o \
./Sources/Marlin/src/gcode/control/M7-M9.o \
./Sources/Marlin/src/gcode/control/M80_M81.o \
./Sources/Marlin/src/gcode/control/M85.o \
./Sources/Marlin/src/gcode/control/M993_M994.o \
./Sources/Marlin/src/gcode/control/M997.o \
./Sources/Marlin/src/gcode/control/M999.o \
./Sources/Marlin/src/gcode/control/T.o 

CPP_DEPS += \
./Sources/Marlin/src/gcode/control/M10-M11.d \
./Sources/Marlin/src/gcode/control/M108_M112_M410.d \
./Sources/Marlin/src/gcode/control/M111.d \
./Sources/Marlin/src/gcode/control/M120_M121.d \
./Sources/Marlin/src/gcode/control/M17_M18_M84.d \
./Sources/Marlin/src/gcode/control/M211.d \
./Sources/Marlin/src/gcode/control/M226.d \
./Sources/Marlin/src/gcode/control/M280.d \
./Sources/Marlin/src/gcode/control/M282.d \
./Sources/Marlin/src/gcode/control/M3-M5.d \
./Sources/Marlin/src/gcode/control/M350_M351.d \
./Sources/Marlin/src/gcode/control/M380_M381.d \
./Sources/Marlin/src/gcode/control/M400.d \
./Sources/Marlin/src/gcode/control/M42.d \
./Sources/Marlin/src/gcode/control/M605.d \
./Sources/Marlin/src/gcode/control/M7-M9.d \
./Sources/Marlin/src/gcode/control/M80_M81.d \
./Sources/Marlin/src/gcode/control/M85.d \
./Sources/Marlin/src/gcode/control/M993_M994.d \
./Sources/Marlin/src/gcode/control/M997.d \
./Sources/Marlin/src/gcode/control/M999.d \
./Sources/Marlin/src/gcode/control/T.d 


# Each subdirectory must supply rules for building sources it contributes
Sources/Marlin/src/gcode/control/%.o: ../Sources/Marlin/src/gcode/control/%.cpp Sources/Marlin/src/gcode/control/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: GNU Arm Cross C++ Compiler'
	arm-none-eabi-g++ -mcpu=cortex-m4 -mthumb -mthumb-interwork -Os -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -Wall  -g3 -DHC32F46x -DUSE_DEVICE_DRIVER_LIB -D__TARGET_FPU_VFP -D__FPU_PRESENT=1 -DARM_MATH_CM4 -DARM_MATH_MATRIX_CHECK -DARM_MATH_ROUNDING -D_MPU_PRESENT=1 -D__STM32F1__ -DSTM32_HIGH_DENSITY -DARDUINO_ARCH_STM32F1 -DRDUINO_ARCH_STM32 -I"../Sources/compoment" -I"../Sources/compoment/adc" -I"../Sources/compoment/i2c" -I"../Sources/compoment/Utility" -I"../Sources/compoment/sdio" -I"../Sources/compoment/sdio/sd_card/inc" -I"../Sources/drivers/board" -I"../Sources/drivers/library/inc" -I"../Sources/framework/cores" -I"../Sources/main" -I"../Sources/main/hdsc32core/common" -I"../Sources/main/hdsc32core/Include" -I"../Sources/Marlin" -I"../Sources/Marlin/src" -I"../Sources/Marlin/src/core" -I"../Sources/Marlin/src/feature" -I"../Sources/Marlin/src/feature/bedlevel" -I"../Sources/Marlin/src/feature/bedlevel/abl" -I"../Sources/Marlin/src/feature/bedlevel/mbl" -I"../Sources/Marlin/src/feature/bedlevel/ubl" -I"../Sources/Marlin/src/feature/digipot" -I"../Sources/Marlin/src/feature/leds" -I"../Sources/Marlin/src/gcode" -I"../Sources/Marlin/src/HAL" -I"../Sources/Marlin/src/HAL/shared" -I"../Sources/Marlin/src/HAL/shared/backtrace" -I"../Sources/Marlin/src/HAL/STM32F1" -I"../Sources/Marlin/src/HAL/STM32F1/dogm" -I"../Sources/Marlin/src/HAL/STM32F1/inc" -I"../Sources/Marlin/src/inc" -I"../Sources/Marlin/src/lcd" -I"../Sources/Marlin/src/lcd/dogm" -I"../Sources/Marlin/src/lcd/dogm/fontdata" -I"../Sources/Marlin/src/lcd/dwin" -I"../Sources/Marlin/src/lcd/language" -I"../Sources/Marlin/src/lcd/menu" -I"../Sources/Marlin/src/lcd/menu/game" -I"../Sources/Marlin/src/lcd/extui" -I"../Sources/Marlin/src/lcd/extui/lib/ftdi_eve_touch_ui" -I"../Sources/Marlin/src/lcd/extui/lib/ftdi_eve_touch_ui/screens" -I"../Sources/Marlin/src/lcd/HD44780" -I"../Sources/Marlin/src/libs" -I"../Sources/Marlin/src/libs/heatshrink" -I"../Sources/Marlin/src/libs/L64XX" -I"../Sources/Marlin/src/module" -I"../Sources/Marlin/src/module/stepper" -I"../Sources/Marlin/src/module/thermistor" -I"../Sources/Marlin/src/pins" -I"../Sources/Marlin/src/pins/stm32f1" -I"../Sources/Marlin/src/sd" -I"../Sources/Marlin/src/sd/usb_flashdrive" -I"../Sources/Marlin/src/sd/usb_flashdrive/lib-uhs2" -I"../Sources/Marlin/src/sd/usb_flashdrive/lib-uhs3" -I"../Sources/Marlin/src/sd/usb_flashdrive/lib-uhs3/dyn_SWI" -I"../Sources/Marlin/src/sd/usb_flashdrive/lib-uhs3/UHS_host" -I"../Sources/Marlin/src/sd/usb_flashdrive/lib-uhs3/UHS_host/UHS_BULK_STORAGE" -I"../Sources/Marlin/src/sd/usb_flashdrive/lib-uhs3/UHS_host/USB_HOST_SHIELD" -std=gnu++14 -fabi-version=0 -fno-use-cxa-atexit -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '



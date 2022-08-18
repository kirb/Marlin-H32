################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../Sources/Marlin/src/HAL/STM32F1/ExtInt_Z_MIN_PROBE.cpp \
../Sources/Marlin/src/HAL/STM32F1/HAL.cpp \
../Sources/Marlin/src/HAL/STM32F1/HAL_SPI.cpp \
../Sources/Marlin/src/HAL/STM32F1/MarlinSerial.cpp \
../Sources/Marlin/src/HAL/STM32F1/SPI.cpp \
../Sources/Marlin/src/HAL/STM32F1/Servo.cpp \
../Sources/Marlin/src/HAL/STM32F1/SoftwareSerial.cpp \
../Sources/Marlin/src/HAL/STM32F1/eeprom_bl24cxx.cpp \
../Sources/Marlin/src/HAL/STM32F1/eeprom_flash.cpp \
../Sources/Marlin/src/HAL/STM32F1/eeprom_if_iic.cpp \
../Sources/Marlin/src/HAL/STM32F1/eeprom_sdcard.cpp \
../Sources/Marlin/src/HAL/STM32F1/eeprom_wired.cpp \
../Sources/Marlin/src/HAL/STM32F1/msc_sd.cpp \
../Sources/Marlin/src/HAL/STM32F1/onboard_sd.cpp \
../Sources/Marlin/src/HAL/STM32F1/sdio.cpp \
../Sources/Marlin/src/HAL/STM32F1/timers.cpp 

OBJS += \
./Sources/Marlin/src/HAL/STM32F1/ExtInt_Z_MIN_PROBE.o \
./Sources/Marlin/src/HAL/STM32F1/HAL.o \
./Sources/Marlin/src/HAL/STM32F1/HAL_SPI.o \
./Sources/Marlin/src/HAL/STM32F1/MarlinSerial.o \
./Sources/Marlin/src/HAL/STM32F1/SPI.o \
./Sources/Marlin/src/HAL/STM32F1/Servo.o \
./Sources/Marlin/src/HAL/STM32F1/SoftwareSerial.o \
./Sources/Marlin/src/HAL/STM32F1/eeprom_bl24cxx.o \
./Sources/Marlin/src/HAL/STM32F1/eeprom_flash.o \
./Sources/Marlin/src/HAL/STM32F1/eeprom_if_iic.o \
./Sources/Marlin/src/HAL/STM32F1/eeprom_sdcard.o \
./Sources/Marlin/src/HAL/STM32F1/eeprom_wired.o \
./Sources/Marlin/src/HAL/STM32F1/msc_sd.o \
./Sources/Marlin/src/HAL/STM32F1/onboard_sd.o \
./Sources/Marlin/src/HAL/STM32F1/sdio.o \
./Sources/Marlin/src/HAL/STM32F1/timers.o 

CPP_DEPS += \
./Sources/Marlin/src/HAL/STM32F1/ExtInt_Z_MIN_PROBE.d \
./Sources/Marlin/src/HAL/STM32F1/HAL.d \
./Sources/Marlin/src/HAL/STM32F1/HAL_SPI.d \
./Sources/Marlin/src/HAL/STM32F1/MarlinSerial.d \
./Sources/Marlin/src/HAL/STM32F1/SPI.d \
./Sources/Marlin/src/HAL/STM32F1/Servo.d \
./Sources/Marlin/src/HAL/STM32F1/SoftwareSerial.d \
./Sources/Marlin/src/HAL/STM32F1/eeprom_bl24cxx.d \
./Sources/Marlin/src/HAL/STM32F1/eeprom_flash.d \
./Sources/Marlin/src/HAL/STM32F1/eeprom_if_iic.d \
./Sources/Marlin/src/HAL/STM32F1/eeprom_sdcard.d \
./Sources/Marlin/src/HAL/STM32F1/eeprom_wired.d \
./Sources/Marlin/src/HAL/STM32F1/msc_sd.d \
./Sources/Marlin/src/HAL/STM32F1/onboard_sd.d \
./Sources/Marlin/src/HAL/STM32F1/sdio.d \
./Sources/Marlin/src/HAL/STM32F1/timers.d 


# Each subdirectory must supply rules for building sources it contributes
Sources/Marlin/src/HAL/STM32F1/%.o: ../Sources/Marlin/src/HAL/STM32F1/%.cpp Sources/Marlin/src/HAL/STM32F1/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: GNU Arm Cross C++ Compiler'
	arm-none-eabi-g++ -mcpu=cortex-m4 -mthumb -mthumb-interwork -Os -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -Wall  -g3 -DHC32F46x -DUSE_DEVICE_DRIVER_LIB -D__TARGET_FPU_VFP -D__FPU_PRESENT=1 -DARM_MATH_CM4 -DARM_MATH_MATRIX_CHECK -DARM_MATH_ROUNDING -D_MPU_PRESENT=1 -D__STM32F1__ -DSTM32_HIGH_DENSITY -DARDUINO_ARCH_STM32F1 -DRDUINO_ARCH_STM32 -I"../Sources/compoment" -I"../Sources/compoment/adc" -I"../Sources/compoment/i2c" -I"../Sources/compoment/Utility" -I"../Sources/compoment/sdio" -I"../Sources/compoment/sdio/sd_card/inc" -I"../Sources/drivers/board" -I"../Sources/drivers/library/inc" -I"../Sources/framework/cores" -I"../Sources/main" -I"../Sources/main/hdsc32core/common" -I"../Sources/main/hdsc32core/Include" -I"../Sources/Marlin" -I"../Sources/Marlin/src" -I"../Sources/Marlin/src/core" -I"../Sources/Marlin/src/feature" -I"../Sources/Marlin/src/feature/bedlevel" -I"../Sources/Marlin/src/feature/bedlevel/abl" -I"../Sources/Marlin/src/feature/bedlevel/mbl" -I"../Sources/Marlin/src/feature/bedlevel/ubl" -I"../Sources/Marlin/src/feature/digipot" -I"../Sources/Marlin/src/feature/leds" -I"../Sources/Marlin/src/gcode" -I"../Sources/Marlin/src/HAL" -I"../Sources/Marlin/src/HAL/shared" -I"../Sources/Marlin/src/HAL/shared/backtrace" -I"../Sources/Marlin/src/HAL/STM32F1" -I"../Sources/Marlin/src/HAL/STM32F1/dogm" -I"../Sources/Marlin/src/HAL/STM32F1/inc" -I"../Sources/Marlin/src/inc" -I"../Sources/Marlin/src/lcd" -I"../Sources/Marlin/src/lcd/dogm" -I"../Sources/Marlin/src/lcd/dogm/fontdata" -I"../Sources/Marlin/src/lcd/dwin" -I"../Sources/Marlin/src/lcd/language" -I"../Sources/Marlin/src/lcd/menu" -I"../Sources/Marlin/src/lcd/menu/game" -I"../Sources/Marlin/src/lcd/extui" -I"../Sources/Marlin/src/lcd/extui/lib/ftdi_eve_touch_ui" -I"../Sources/Marlin/src/lcd/extui/lib/ftdi_eve_touch_ui/screens" -I"../Sources/Marlin/src/lcd/HD44780" -I"../Sources/Marlin/src/libs" -I"../Sources/Marlin/src/libs/heatshrink" -I"../Sources/Marlin/src/libs/L64XX" -I"../Sources/Marlin/src/module" -I"../Sources/Marlin/src/module/stepper" -I"../Sources/Marlin/src/module/thermistor" -I"../Sources/Marlin/src/pins" -I"../Sources/Marlin/src/pins/stm32f1" -I"../Sources/Marlin/src/sd" -I"../Sources/Marlin/src/sd/usb_flashdrive" -I"../Sources/Marlin/src/sd/usb_flashdrive/lib-uhs2" -I"../Sources/Marlin/src/sd/usb_flashdrive/lib-uhs3" -I"../Sources/Marlin/src/sd/usb_flashdrive/lib-uhs3/dyn_SWI" -I"../Sources/Marlin/src/sd/usb_flashdrive/lib-uhs3/UHS_host" -I"../Sources/Marlin/src/sd/usb_flashdrive/lib-uhs3/UHS_host/UHS_BULK_STORAGE" -I"../Sources/Marlin/src/sd/usb_flashdrive/lib-uhs3/UHS_host/USB_HOST_SHIELD" -std=gnu++14 -fabi-version=0 -fno-use-cxa-atexit -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '



################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../Sources/Marlin/src/HAL/shared/Delay.cpp \
../Sources/Marlin/src/HAL/shared/HAL.cpp \
../Sources/Marlin/src/HAL/shared/HAL_spi_L6470.cpp \
../Sources/Marlin/src/HAL/shared/MinSerial.cpp \
../Sources/Marlin/src/HAL/shared/eeprom_api.cpp \
../Sources/Marlin/src/HAL/shared/eeprom_if_i2c.cpp \
../Sources/Marlin/src/HAL/shared/eeprom_if_spi.cpp \
../Sources/Marlin/src/HAL/shared/esp_wifi.cpp \
../Sources/Marlin/src/HAL/shared/servo.cpp 

OBJS += \
./Sources/Marlin/src/HAL/shared/Delay.o \
./Sources/Marlin/src/HAL/shared/HAL.o \
./Sources/Marlin/src/HAL/shared/HAL_spi_L6470.o \
./Sources/Marlin/src/HAL/shared/MinSerial.o \
./Sources/Marlin/src/HAL/shared/eeprom_api.o \
./Sources/Marlin/src/HAL/shared/eeprom_if_i2c.o \
./Sources/Marlin/src/HAL/shared/eeprom_if_spi.o \
./Sources/Marlin/src/HAL/shared/esp_wifi.o \
./Sources/Marlin/src/HAL/shared/servo.o 

CPP_DEPS += \
./Sources/Marlin/src/HAL/shared/Delay.d \
./Sources/Marlin/src/HAL/shared/HAL.d \
./Sources/Marlin/src/HAL/shared/HAL_spi_L6470.d \
./Sources/Marlin/src/HAL/shared/MinSerial.d \
./Sources/Marlin/src/HAL/shared/eeprom_api.d \
./Sources/Marlin/src/HAL/shared/eeprom_if_i2c.d \
./Sources/Marlin/src/HAL/shared/eeprom_if_spi.d \
./Sources/Marlin/src/HAL/shared/esp_wifi.d \
./Sources/Marlin/src/HAL/shared/servo.d 


# Each subdirectory must supply rules for building sources it contributes
Sources/Marlin/src/HAL/shared/%.o: ../Sources/Marlin/src/HAL/shared/%.cpp Sources/Marlin/src/HAL/shared/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: GNU Arm Cross C++ Compiler'
	arm-none-eabi-g++ -mcpu=cortex-m4 -mthumb -mthumb-interwork -Os -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -Wall  -g3 -DHC32F46x -DUSE_DEVICE_DRIVER_LIB -D__TARGET_FPU_VFP -D__FPU_PRESENT=1 -DARM_MATH_CM4 -DARM_MATH_MATRIX_CHECK -DARM_MATH_ROUNDING -D_MPU_PRESENT=1 -D__STM32F1__ -DSTM32_HIGH_DENSITY -DARDUINO_ARCH_STM32F1 -DRDUINO_ARCH_STM32 -I"../Sources/compoment" -I"../Sources/compoment/adc" -I"../Sources/compoment/i2c" -I"../Sources/compoment/Utility" -I"../Sources/compoment/sdio" -I"../Sources/compoment/sdio/sd_card/inc" -I"../Sources/drivers/board" -I"../Sources/drivers/library/inc" -I"../Sources/framework/cores" -I"../Sources/main" -I"../Sources/main/hdsc32core/common" -I"../Sources/main/hdsc32core/Include" -I"../Sources/Marlin" -I"../Sources/Marlin/src" -I"../Sources/Marlin/src/core" -I"../Sources/Marlin/src/feature" -I"../Sources/Marlin/src/feature/bedlevel" -I"../Sources/Marlin/src/feature/bedlevel/abl" -I"../Sources/Marlin/src/feature/bedlevel/mbl" -I"../Sources/Marlin/src/feature/bedlevel/ubl" -I"../Sources/Marlin/src/feature/digipot" -I"../Sources/Marlin/src/feature/leds" -I"../Sources/Marlin/src/gcode" -I"../Sources/Marlin/src/HAL" -I"../Sources/Marlin/src/HAL/shared" -I"../Sources/Marlin/src/HAL/shared/backtrace" -I"../Sources/Marlin/src/HAL/STM32F1" -I"../Sources/Marlin/src/HAL/STM32F1/dogm" -I"../Sources/Marlin/src/HAL/STM32F1/inc" -I"../Sources/Marlin/src/inc" -I"../Sources/Marlin/src/lcd" -I"../Sources/Marlin/src/lcd/dogm" -I"../Sources/Marlin/src/lcd/dogm/fontdata" -I"../Sources/Marlin/src/lcd/dwin" -I"../Sources/Marlin/src/lcd/language" -I"../Sources/Marlin/src/lcd/menu" -I"../Sources/Marlin/src/lcd/menu/game" -I"../Sources/Marlin/src/lcd/extui" -I"../Sources/Marlin/src/lcd/extui/lib/ftdi_eve_touch_ui" -I"../Sources/Marlin/src/lcd/extui/lib/ftdi_eve_touch_ui/screens" -I"../Sources/Marlin/src/lcd/HD44780" -I"../Sources/Marlin/src/libs" -I"../Sources/Marlin/src/libs/heatshrink" -I"../Sources/Marlin/src/libs/L64XX" -I"../Sources/Marlin/src/module" -I"../Sources/Marlin/src/module/stepper" -I"../Sources/Marlin/src/module/thermistor" -I"../Sources/Marlin/src/pins" -I"../Sources/Marlin/src/pins/stm32f1" -I"../Sources/Marlin/src/sd" -I"../Sources/Marlin/src/sd/usb_flashdrive" -I"../Sources/Marlin/src/sd/usb_flashdrive/lib-uhs2" -I"../Sources/Marlin/src/sd/usb_flashdrive/lib-uhs3" -I"../Sources/Marlin/src/sd/usb_flashdrive/lib-uhs3/dyn_SWI" -I"../Sources/Marlin/src/sd/usb_flashdrive/lib-uhs3/UHS_host" -I"../Sources/Marlin/src/sd/usb_flashdrive/lib-uhs3/UHS_host/UHS_BULK_STORAGE" -I"../Sources/Marlin/src/sd/usb_flashdrive/lib-uhs3/UHS_host/USB_HOST_SHIELD" -std=gnu++14 -fabi-version=0 -fno-use-cxa-atexit -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '



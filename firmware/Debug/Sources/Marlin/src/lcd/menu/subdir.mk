################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../Sources/Marlin/src/lcd/menu/menu.cpp \
../Sources/Marlin/src/lcd/menu/menu_advanced.cpp \
../Sources/Marlin/src/lcd/menu/menu_backlash.cpp \
../Sources/Marlin/src/lcd/menu/menu_bed_corners.cpp \
../Sources/Marlin/src/lcd/menu/menu_bed_leveling.cpp \
../Sources/Marlin/src/lcd/menu/menu_cancelobject.cpp \
../Sources/Marlin/src/lcd/menu/menu_configuration.cpp \
../Sources/Marlin/src/lcd/menu/menu_delta_calibrate.cpp \
../Sources/Marlin/src/lcd/menu/menu_filament.cpp \
../Sources/Marlin/src/lcd/menu/menu_game.cpp \
../Sources/Marlin/src/lcd/menu/menu_info.cpp \
../Sources/Marlin/src/lcd/menu/menu_job_recovery.cpp \
../Sources/Marlin/src/lcd/menu/menu_language.cpp \
../Sources/Marlin/src/lcd/menu/menu_led.cpp \
../Sources/Marlin/src/lcd/menu/menu_main.cpp \
../Sources/Marlin/src/lcd/menu/menu_media.cpp \
../Sources/Marlin/src/lcd/menu/menu_mixer.cpp \
../Sources/Marlin/src/lcd/menu/menu_mmu2.cpp \
../Sources/Marlin/src/lcd/menu/menu_motion.cpp \
../Sources/Marlin/src/lcd/menu/menu_password.cpp \
../Sources/Marlin/src/lcd/menu/menu_power_monitor.cpp \
../Sources/Marlin/src/lcd/menu/menu_probe_offset.cpp \
../Sources/Marlin/src/lcd/menu/menu_spindle_laser.cpp \
../Sources/Marlin/src/lcd/menu/menu_temperature.cpp \
../Sources/Marlin/src/lcd/menu/menu_tmc.cpp \
../Sources/Marlin/src/lcd/menu/menu_touch_screen.cpp \
../Sources/Marlin/src/lcd/menu/menu_tramming.cpp \
../Sources/Marlin/src/lcd/menu/menu_tune.cpp \
../Sources/Marlin/src/lcd/menu/menu_ubl.cpp \
../Sources/Marlin/src/lcd/menu/menu_x_twist.cpp 

OBJS += \
./Sources/Marlin/src/lcd/menu/menu.o \
./Sources/Marlin/src/lcd/menu/menu_advanced.o \
./Sources/Marlin/src/lcd/menu/menu_backlash.o \
./Sources/Marlin/src/lcd/menu/menu_bed_corners.o \
./Sources/Marlin/src/lcd/menu/menu_bed_leveling.o \
./Sources/Marlin/src/lcd/menu/menu_cancelobject.o \
./Sources/Marlin/src/lcd/menu/menu_configuration.o \
./Sources/Marlin/src/lcd/menu/menu_delta_calibrate.o \
./Sources/Marlin/src/lcd/menu/menu_filament.o \
./Sources/Marlin/src/lcd/menu/menu_game.o \
./Sources/Marlin/src/lcd/menu/menu_info.o \
./Sources/Marlin/src/lcd/menu/menu_job_recovery.o \
./Sources/Marlin/src/lcd/menu/menu_language.o \
./Sources/Marlin/src/lcd/menu/menu_led.o \
./Sources/Marlin/src/lcd/menu/menu_main.o \
./Sources/Marlin/src/lcd/menu/menu_media.o \
./Sources/Marlin/src/lcd/menu/menu_mixer.o \
./Sources/Marlin/src/lcd/menu/menu_mmu2.o \
./Sources/Marlin/src/lcd/menu/menu_motion.o \
./Sources/Marlin/src/lcd/menu/menu_password.o \
./Sources/Marlin/src/lcd/menu/menu_power_monitor.o \
./Sources/Marlin/src/lcd/menu/menu_probe_offset.o \
./Sources/Marlin/src/lcd/menu/menu_spindle_laser.o \
./Sources/Marlin/src/lcd/menu/menu_temperature.o \
./Sources/Marlin/src/lcd/menu/menu_tmc.o \
./Sources/Marlin/src/lcd/menu/menu_touch_screen.o \
./Sources/Marlin/src/lcd/menu/menu_tramming.o \
./Sources/Marlin/src/lcd/menu/menu_tune.o \
./Sources/Marlin/src/lcd/menu/menu_ubl.o \
./Sources/Marlin/src/lcd/menu/menu_x_twist.o 

CPP_DEPS += \
./Sources/Marlin/src/lcd/menu/menu.d \
./Sources/Marlin/src/lcd/menu/menu_advanced.d \
./Sources/Marlin/src/lcd/menu/menu_backlash.d \
./Sources/Marlin/src/lcd/menu/menu_bed_corners.d \
./Sources/Marlin/src/lcd/menu/menu_bed_leveling.d \
./Sources/Marlin/src/lcd/menu/menu_cancelobject.d \
./Sources/Marlin/src/lcd/menu/menu_configuration.d \
./Sources/Marlin/src/lcd/menu/menu_delta_calibrate.d \
./Sources/Marlin/src/lcd/menu/menu_filament.d \
./Sources/Marlin/src/lcd/menu/menu_game.d \
./Sources/Marlin/src/lcd/menu/menu_info.d \
./Sources/Marlin/src/lcd/menu/menu_job_recovery.d \
./Sources/Marlin/src/lcd/menu/menu_language.d \
./Sources/Marlin/src/lcd/menu/menu_led.d \
./Sources/Marlin/src/lcd/menu/menu_main.d \
./Sources/Marlin/src/lcd/menu/menu_media.d \
./Sources/Marlin/src/lcd/menu/menu_mixer.d \
./Sources/Marlin/src/lcd/menu/menu_mmu2.d \
./Sources/Marlin/src/lcd/menu/menu_motion.d \
./Sources/Marlin/src/lcd/menu/menu_password.d \
./Sources/Marlin/src/lcd/menu/menu_power_monitor.d \
./Sources/Marlin/src/lcd/menu/menu_probe_offset.d \
./Sources/Marlin/src/lcd/menu/menu_spindle_laser.d \
./Sources/Marlin/src/lcd/menu/menu_temperature.d \
./Sources/Marlin/src/lcd/menu/menu_tmc.d \
./Sources/Marlin/src/lcd/menu/menu_touch_screen.d \
./Sources/Marlin/src/lcd/menu/menu_tramming.d \
./Sources/Marlin/src/lcd/menu/menu_tune.d \
./Sources/Marlin/src/lcd/menu/menu_ubl.d \
./Sources/Marlin/src/lcd/menu/menu_x_twist.d 


# Each subdirectory must supply rules for building sources it contributes
Sources/Marlin/src/lcd/menu/%.o: ../Sources/Marlin/src/lcd/menu/%.cpp Sources/Marlin/src/lcd/menu/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: GNU Arm Cross C++ Compiler'
	arm-none-eabi-g++ -mcpu=cortex-m4 -mthumb -mthumb-interwork -Os -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -Wall  -g3 -DHC32F46x -DUSE_DEVICE_DRIVER_LIB -D__TARGET_FPU_VFP -D__FPU_PRESENT=1 -DARM_MATH_CM4 -DARM_MATH_MATRIX_CHECK -DARM_MATH_ROUNDING -D_MPU_PRESENT=1 -D__STM32F1__ -DSTM32_HIGH_DENSITY -DARDUINO_ARCH_STM32F1 -DRDUINO_ARCH_STM32 -I"../Sources/compoment" -I"../Sources/compoment/adc" -I"../Sources/compoment/i2c" -I"../Sources/compoment/Utility" -I"../Sources/compoment/sdio" -I"../Sources/compoment/sdio/sd_card/inc" -I"../Sources/drivers/board" -I"../Sources/drivers/library/inc" -I"../Sources/framework/cores" -I"../Sources/main" -I"../Sources/main/hdsc32core/common" -I"../Sources/main/hdsc32core/Include" -I"../Sources/Marlin" -I"../Sources/Marlin/src" -I"../Sources/Marlin/src/core" -I"../Sources/Marlin/src/feature" -I"../Sources/Marlin/src/feature/bedlevel" -I"../Sources/Marlin/src/feature/bedlevel/abl" -I"../Sources/Marlin/src/feature/bedlevel/mbl" -I"../Sources/Marlin/src/feature/bedlevel/ubl" -I"../Sources/Marlin/src/feature/digipot" -I"../Sources/Marlin/src/feature/leds" -I"../Sources/Marlin/src/gcode" -I"../Sources/Marlin/src/HAL" -I"../Sources/Marlin/src/HAL/shared" -I"../Sources/Marlin/src/HAL/shared/backtrace" -I"../Sources/Marlin/src/HAL/STM32F1" -I"../Sources/Marlin/src/HAL/STM32F1/dogm" -I"../Sources/Marlin/src/HAL/STM32F1/inc" -I"../Sources/Marlin/src/inc" -I"../Sources/Marlin/src/lcd" -I"../Sources/Marlin/src/lcd/dogm" -I"../Sources/Marlin/src/lcd/dogm/fontdata" -I"../Sources/Marlin/src/lcd/dwin" -I"../Sources/Marlin/src/lcd/language" -I"../Sources/Marlin/src/lcd/menu" -I"../Sources/Marlin/src/lcd/menu/game" -I"../Sources/Marlin/src/lcd/extui" -I"../Sources/Marlin/src/lcd/extui/lib/ftdi_eve_touch_ui" -I"../Sources/Marlin/src/lcd/extui/lib/ftdi_eve_touch_ui/screens" -I"../Sources/Marlin/src/lcd/HD44780" -I"../Sources/Marlin/src/libs" -I"../Sources/Marlin/src/libs/heatshrink" -I"../Sources/Marlin/src/libs/L64XX" -I"../Sources/Marlin/src/module" -I"../Sources/Marlin/src/module/stepper" -I"../Sources/Marlin/src/module/thermistor" -I"../Sources/Marlin/src/pins" -I"../Sources/Marlin/src/pins/stm32f1" -I"../Sources/Marlin/src/sd" -I"../Sources/Marlin/src/sd/usb_flashdrive" -I"../Sources/Marlin/src/sd/usb_flashdrive/lib-uhs2" -I"../Sources/Marlin/src/sd/usb_flashdrive/lib-uhs3" -I"../Sources/Marlin/src/sd/usb_flashdrive/lib-uhs3/dyn_SWI" -I"../Sources/Marlin/src/sd/usb_flashdrive/lib-uhs3/UHS_host" -I"../Sources/Marlin/src/sd/usb_flashdrive/lib-uhs3/UHS_host/UHS_BULK_STORAGE" -I"../Sources/Marlin/src/sd/usb_flashdrive/lib-uhs3/UHS_host/USB_HOST_SHIELD" -std=gnu++14 -fabi-version=0 -fno-use-cxa-atexit -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '



/**
 * Marlin 3D Printer Firmware
 *
 * Copyright (c) 2020 MarlinFirmware [https://github.com/MarlinFirmware/Marlin]
 * Copyright (c) 2016 Bob Cousins bobcousins42@googlemail.com
 * Copyright (c) 2017 Victor Perez
 *
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program.  If not, see <https://www.gnu.org/licenses/>.
 *
 */
#pragma once

/**
 * HAL for stm32duino.com based on Libmaple and compatible (STM32F1)
 */

#include <stdint.h>
#include "../board/startup.h"
#include "../../inc/MarlinConfig.h"
#include "HAL.h"

// ------------------------
// Defines
// ------------------------

/**
 * TODO: Check and confirm what timer we will use for each Temps and stepper driving.
 * We should probable drive temps with PWM.
 */

typedef uint16_t hal_timer_t;
#define HAL_TIMER_TYPE_MAX 0xFFFF

#define HAL_TIMER_RATE uint32_t(F_CPU)  // frequency of timers peripherals

#ifndef STEP_TIMER_CHAN
  #define STEP_TIMER_CHAN 1 // Channel of the timer to use for compare and interrupts
#endif
#ifndef TEMP_TIMER_CHAN
  #define TEMP_TIMER_CHAN 1 // Channel of the timer to use for compare and interrupts
#endif

/**
 * Note: Timers may be used by platforms and libraries
 *
 * FAN PWMs:
 *   With FAN_SOFT_PWM disabled the Temperature class uses
 *   FANx_PIN timers to generate FAN PWM signals.
 *
 * Speaker:
 *   When SPEAKER is enabled, one timer is allocated by maple/tone.cpp.
 *   - If BEEPER_PIN has a timer channel (and USE_PIN_TIMER is
 *     defined in tone.cpp) it uses the pin's own timer.
 *   - Otherwise it uses Timer 8 on boards with STM32_HIGH_DENSITY
 *     or Timer 4 on other boards.
 */
#ifndef MF_TIMER_STEP
  #define MF_TIMER_STEP 		2 // TIMER0 CHB
#endif
#ifndef MF_TIMER_TEMP
  #define MF_TIMER_TEMP 	1    // TIMER0 CHA
#endif
#ifndef MF_TIMER_PULSE
  #define MF_TIMER_PULSE 	MF_TIMER_STEP
#endif

#if MB(BTT_SKR_MINI_E3_V1_0, BTT_SKR_E3_DIP, BTT_SKR_MINI_E3_V1_2, MKS_ROBIN_LITE, MKS_ROBIN_E3D, MKS_ROBIN_E3)
  // SKR Mini E3 boards use PA8 as FAN_PIN, so TIMER 1 is used for Fan PWM.
  #ifdef STM32_HIGH_DENSITY
    #define MF_TIMER_SERVO0  8  // tone.cpp uses Timer 4
  #else
    #define MF_TIMER_SERVO0  3  // tone.cpp uses Timer 8
  #endif
#else
  #define MF_TIMER_SERVO0  1  // SERVO0 or BLTOUCH
#endif

#define STEP_TIMER_IRQ_PRIO 2
#define TEMP_TIMER_IRQ_PRIO 3
#define SERVO0_TIMER_IRQ_PRIO 1

#define TEMP_TIMER_PRESCALE     1000 // prescaler for setting Temp timer, 72Khz
#define TEMP_TIMER_FREQUENCY    1000 // temperature interrupt frequency

#define STEPPER_TIMER_PRESCALE      18                                          // prescaler for setting stepper timer, 4Mhz
#define STEPPER_TIMER_RATE          (HAL_TIMER_RATE / STEPPER_TIMER_PRESCALE)   // frequency of stepper timer
#define STEPPER_TIMER_TICKS_PER_US  ((STEPPER_TIMER_RATE) / 1000000)            // stepper timer ticks per µs

#define PULSE_TIMER_RATE            STEPPER_TIMER_RATE   // frequency of pulse timer
#define PULSE_TIMER_PRESCALE        STEPPER_TIMER_PRESCALE
#define PULSE_TIMER_TICKS_PER_US    STEPPER_TIMER_TICKS_PER_US


#define ENABLE_STEPPER_DRIVER_INTERRUPT() timer_enable_irq(MF_TIMER_STEP)
#define DISABLE_STEPPER_DRIVER_INTERRUPT() timer_disable_irq(MF_TIMER_STEP)
#define STEPPER_ISR_ENABLED() HAL_timer_interrupt_enabled(MF_TIMER_STEP)

#define ENABLE_TEMPERATURE_INTERRUPT() timer_enable_irq(MF_TIMER_TEMP)
#define DISABLE_TEMPERATURE_INTERRUPT() timer_disable_irq(MF_TIMER_TEMP)

#define HAL_timer_get_count(timer_num) timer_get_count(timer_num)

// ------------------------
// Public Variables
// ------------------------

//static HardwareTimer StepperTimer(MF_TIMER_STEP);
//static HardwareTimer TempTimer(MF_TIMER_TEMP);

// ------------------------
// Public functions
// ------------------------

void HAL_timer_start(const uint8_t timer_num, const uint32_t frequency);
void HAL_timer_enable_interrupt(const uint8_t timer_num);
void HAL_timer_disable_interrupt(const uint8_t timer_num);
bool HAL_timer_interrupt_enabled(const uint8_t timer_num);

/**
 * NOTE: By default libmaple sets ARPE = 1, which means the Auto reload register is preloaded (will only update with an update event)
 * Thus we have to pause the timer, update the value, refresh, resume the timer.
 * That seems like a big waste of time and may be better to change the timer config to ARPE = 0, so ARR can be updated any time.
 * We are using a Channel in each timer in Capture/Compare mode. We could also instead use the Time Update Event Interrupt, but need to disable ARPE
 * so we can change the ARR value on the fly (without calling refresh), and not get an interrupt right there because we caused an UEV.
 * This mode pretty much makes 2 timers unusable for PWM since they have their counts updated all the time on ISRs.
 * The way Marlin manages timer interrupts doesn't make for an efficient usage in STM32F1
 * Todo: Look at that possibility later.
 */

void HAL_timer_set_compare(const uint8_t timer_num, const hal_timer_t compare);


#define HAL_timer_isr_prologue(TIMER_NUM)
#define HAL_timer_isr_epilogue(TIMER_NUM)
#define TIMER_OC_NO_PRELOAD 0 // Need to disable preload also on compare registers.

/**
 * Marlin 3D Printer Firmware
 *
 * Copyright (c) 2020 MarlinFirmware [https://github.com/MarlinFirmware/Marlin]
 * Copyright (c) 2016 Bob Cousins bobcousins42@googlemail.com
 * Copyright (c) 2015-2016 Nico Tonnhofer wurstnase.reprap@gmail.com
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

/**
 * HAL for stm32duino.com based on Libmaple and compatible (STM32F1)
 */

#ifdef __STM32F1__

#include "../../inc/MarlinConfig.h"
#include "HAL.h"
#include "timers.h"

// ------------------------
// Local defines
// ------------------------

// ------------------------
// Public functions
// ------------------------

/**
 * Timer_clock1: Prescaler   2 ->  36    MHz
 * Timer_clock2: Prescaler   8 ->   9    MHz
 * Timer_clock3: Prescaler  32 ->   2.25 MHz
 * Timer_clock4: Prescaler 128 -> 562.5  kHz
 */

/**
 * TODO: Calculate Timer prescale value, so we get the 32bit to adjust
 */

void HAL_timer_set_interrupt_priority(uint_fast8_t timer_num, uint_fast8_t priority) {
  nvic_irq_num irq_num;
  switch (timer_num) {
    case 1: irq_num = NVIC_TIMER1_CC; break;
    case 2: irq_num = NVIC_TIMER2; break;
    case 3: irq_num = NVIC_TIMER3; break;
    case 4: irq_num = NVIC_TIMER4; break;
    case 5: irq_num = NVIC_TIMER5; break;
    #ifdef STM32_HIGH_DENSITY
      // 6 & 7 are basic timers, avoid them
      case 8: irq_num = NVIC_TIMER8_CC; break;
    #endif
    default:
      /**
       * This should never happen. Add a Sanitycheck for timer number.
       * Should be a general timer since basic timers have no CC channels.
       */
      return;
  }

  nvic_irq_set_priority(irq_num, priority);
}

void HAL_timer_start(const uint8_t timer_num, const uint32_t frequency) {
 	 switch (timer_num) {
    		case STEP_TIMER_NUM: setup_time2B(frequency);break;
    		case TEMP_TIMER_NUM: setup_time2A(frequency);break;
 	 }
}

void HAL_timer_enable_interrupt(const uint8_t timer_num) {
  switch (timer_num) {
    case MF_TIMER_STEP: ENABLE_STEPPER_DRIVER_INTERRUPT(); break;
    case MF_TIMER_TEMP: ENABLE_TEMPERATURE_INTERRUPT(); break;
  }
}

void HAL_timer_disable_interrupt(const uint8_t timer_num) {
  switch (timer_num) {
    case MF_TIMER_STEP: DISABLE_STEPPER_DRIVER_INTERRUPT(); break;
    case MF_TIMER_TEMP: DISABLE_TEMPERATURE_INTERRUPT(); break;
  }
}

static inline bool HAL_timer_irq_enabled(const timer_dev * const dev, const uint8_t interrupt) {
  return bool(*bb_perip(&(dev->regs).gen->DIER, interrupt));
}

bool HAL_timer_interrupt_enabled(const uint8_t timer_num) {
  switch (timer_num) {
    case MF_TIMER_STEP: return HAL_timer_irq_enabled(STEP_TIMER_DEV, STEP_TIMER_CHAN);
    case MF_TIMER_TEMP: return HAL_timer_irq_enabled(TEMP_TIMER_DEV, TEMP_TIMER_CHAN);
  }
  return false;
}

#endif // __STM32F1__

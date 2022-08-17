/**
 * Marlin 3D Printer Firmware
 * Copyright (c) 2020 MarlinFirmware [https://github.com/MarlinFirmware/Marlin]
 *
 * Based on Sprinter and grbl.
 * Copyright (c) 2011 Camiel Gubbels / Erik van der Zalm
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
#ifdef ARDUINO_ARCH_STM32F1

// #include "../../inc/MarlinConfig.h" // Allow pins/pins.h to set density

// #if EITHER(STM32_HIGH_DENSITY, STM32_XL_DENSITY)

// #include "sdio.h"

// SDIO_CardInfoTypeDef SdCard;

bool SDIO_Init() {
  return (steup_sdio());
}

bool SDIO_ReadBlock(uint32_t blockAddress, uint8_t *data) {
  uint32_t retries = SDIO_READ_RETRIES;
  while (retries--) if (SDIO_ReadBlock_DMA(blockAddress, data)) return true;
  return false;
}

bool SDIO_WriteBlock(uint32_t blockAddress, const uint8_t *data) {
  return SDIO_WriteBlockDMA(blockAddress,data);
}

inline uint32_t SDIO_GetCardState() { return SDIO_CmdSendStatus(SdCard.RelCardAdd << 16U) ? (SDIO_GetResponse(SDIO_RESP1) >> 9U) & 0x0FU : SDIO_CARD_ERROR; }

// No F1 board with SDIO + MSC using Maple, that I aware of...
bool SDIO_IsReady() { return true; }
uint32_t SDIO_GetCardSize() { return 0; }

// ------------------------
// SD Commands and Responses
// ------------------------

// void SDIO_SendCommand(uint16_t command, uint32_t argument) { SDIO->ARG = argument; SDIO->CMD = (uint32_t)(SDIO_CMD_CPSMEN | command); }
// uint8_t SDIO_GetCommandResponse() { return (uint8_t)(SDIO->RESPCMD); }
// uint32_t SDIO_GetResponse(uint32_t response) { return SDIO->RESP[response]; }

// bool SDIO_CmdGoIdleState() { SDIO_SendCommand(CMD0_GO_IDLE_STATE, 0); return SDIO_GetCmdError(); }
// bool SDIO_CmdSendCID() { SDIO_SendCommand(CMD2_ALL_SEND_CID, 0); return SDIO_GetCmdResp2(); }
// bool SDIO_CmdSetRelAdd(uint32_t *rca) { SDIO_SendCommand(CMD3_SET_REL_ADDR, 0); return SDIO_GetCmdResp6(SDMMC_CMD_SET_REL_ADDR, rca); }
// bool SDIO_CmdSelDesel(uint32_t address) { SDIO_SendCommand(CMD7_SEL_DESEL_CARD, address); return SDIO_GetCmdResp1(SDMMC_CMD_SEL_DESEL_CARD); }
// bool SDIO_CmdOperCond() { SDIO_SendCommand(CMD8_HS_SEND_EXT_CSD, SDMMC_CHECK_PATTERN); return SDIO_GetCmdResp7(); }
// bool SDIO_CmdSendCSD(uint32_t argument) { SDIO_SendCommand(CMD9_SEND_CSD, argument); return SDIO_GetCmdResp2(); }
// bool SDIO_CmdSendStatus(uint32_t argument) { SDIO_SendCommand(CMD13_SEND_STATUS, argument); return SDIO_GetCmdResp1(SDMMC_CMD_SEND_STATUS); }
// bool SDIO_CmdReadSingleBlock(uint32_t address) { SDIO_SendCommand(CMD17_READ_SINGLE_BLOCK, address); return SDIO_GetCmdResp1(SDMMC_CMD_READ_SINGLE_BLOCK); }
// bool SDIO_CmdWriteSingleBlock(uint32_t address) { SDIO_SendCommand(CMD24_WRITE_SINGLE_BLOCK, address); return SDIO_GetCmdResp1(SDMMC_CMD_WRITE_SINGLE_BLOCK); }
// bool SDIO_CmdAppCommand(uint32_t rsa) { SDIO_SendCommand(CMD55_APP_CMD, rsa); return SDIO_GetCmdResp1(SDMMC_CMD_APP_CMD); }

// bool SDIO_CmdAppSetBusWidth(uint32_t rsa, uint32_t argument) {
//   if (!SDIO_CmdAppCommand(rsa)) return false;
//   SDIO_SendCommand(ACMD6_APP_SD_SET_BUSWIDTH, argument);
//   return SDIO_GetCmdResp2();
// }

// bool SDIO_CmdAppOperCommand(uint32_t sdType) {
//   if (!SDIO_CmdAppCommand(0)) return false;
//   SDIO_SendCommand(ACMD41_SD_APP_OP_COND , SDMMC_VOLTAGE_WINDOW_SD | sdType);
//   return SDIO_GetCmdResp3();
// }

// bool SDIO_CmdAppSetClearCardDetect(uint32_t rsa) {
//   if (!SDIO_CmdAppCommand(rsa)) return false;
//   SDIO_SendCommand(ACMD42_SD_APP_SET_CLR_CARD_DETECT, 0);
//   return SDIO_GetCmdResp2();
// }

// // Wait until given flags are unset or till timeout
// #define SDIO_WAIT(FLAGS) do{ \
//   uint32_t count = 1 + (SDIO_CMDTIMEOUT) * ((F_CPU) / 8U / 1000U); \
//   do { if (!--count) return false; } while (!SDIO_GET_FLAG(FLAGS)); \
// }while(0)

// bool SDIO_GetCmdError() {
//   SDIO_WAIT(SDIO_STA_CMDSENT);

//   SDIO_CLEAR_FLAG(SDIO_ICR_CMD_FLAGS);
//   return true;
// }

// bool SDIO_GetCmdResp1(uint8_t command) {
//   SDIO_WAIT(SDIO_STA_CCRCFAIL | SDIO_STA_CMDREND | SDIO_STA_CTIMEOUT);

//   if (SDIO_GET_FLAG(SDIO_STA_CCRCFAIL | SDIO_STA_CTIMEOUT)) {
//     SDIO_CLEAR_FLAG(SDIO_STA_CCRCFAIL | SDIO_STA_CTIMEOUT);
//     return false;
//   }
//   if (SDIO_GetCommandResponse() != command) return false;

//   SDIO_CLEAR_FLAG(SDIO_ICR_CMD_FLAGS);
//   return (SDIO_GetResponse(SDIO_RESP1) & SDMMC_OCR_ERRORBITS) == SDMMC_ALLZERO;
// }

// bool SDIO_GetCmdResp2() {
//   SDIO_WAIT(SDIO_STA_CCRCFAIL | SDIO_STA_CMDREND | SDIO_STA_CTIMEOUT);

//   if (SDIO_GET_FLAG(SDIO_STA_CCRCFAIL | SDIO_STA_CTIMEOUT)) {
//     SDIO_CLEAR_FLAG(SDIO_STA_CCRCFAIL | SDIO_STA_CTIMEOUT);
//     return false;
//   }

//   SDIO_CLEAR_FLAG(SDIO_ICR_CMD_FLAGS);
//   return true;
// }

// bool SDIO_GetCmdResp3() {
//   SDIO_WAIT(SDIO_STA_CCRCFAIL | SDIO_STA_CMDREND | SDIO_STA_CTIMEOUT);

//   if (SDIO_GET_FLAG(SDIO_STA_CTIMEOUT)) {
//     SDIO_CLEAR_FLAG(SDIO_STA_CTIMEOUT);
//     return false;
//   }

//   SDIO_CLEAR_FLAG(SDIO_ICR_CMD_FLAGS);
//   return true;
// }

// bool SDIO_GetCmdResp6(uint8_t command, uint32_t *rca) {
//   SDIO_WAIT(SDIO_STA_CCRCFAIL | SDIO_STA_CMDREND | SDIO_STA_CTIMEOUT);

//   if (SDIO_GET_FLAG(SDIO_STA_CCRCFAIL | SDIO_STA_CTIMEOUT)) {
//     SDIO_CLEAR_FLAG(SDIO_STA_CCRCFAIL | SDIO_STA_CTIMEOUT);
//     return false;
//   }
//   if (SDIO_GetCommandResponse() != command) return false;

//   SDIO_CLEAR_FLAG(SDIO_ICR_CMD_FLAGS);
//   if (SDIO_GetResponse(SDIO_RESP1) & (SDMMC_R6_GENERAL_UNKNOWN_ERROR | SDMMC_R6_ILLEGAL_CMD | SDMMC_R6_COM_CRC_FAILED)) return false;

//   *rca = SDIO_GetResponse(SDIO_RESP1) >> 16;
//   return true;
// }

// bool SDIO_GetCmdResp7() {
//   SDIO_WAIT(SDIO_STA_CCRCFAIL | SDIO_STA_CMDREND | SDIO_STA_CTIMEOUT);

//   if (SDIO_GET_FLAG(SDIO_STA_CTIMEOUT)) {
//     SDIO_CLEAR_FLAG(SDIO_STA_CTIMEOUT);
//     return false;
//   }

//   if (SDIO_GET_FLAG(SDIO_STA_CMDREND)) { SDIO_CLEAR_FLAG(SDIO_STA_CMDREND); }
//   return true;
// }

// #endif // STM32_HIGH_DENSITY || STM32_XL_DENSITY
#endif // ARDUINO_ARCH_STM32F1

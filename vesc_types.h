/* 
 * This file is part of the arduino vesc library (https://github.com/arduino_vesc)
 * 
 * Copyright (c) 2019 Gianmarco Vitelli
 * 
 * This program is free software: you can redistribute it and/or modify  
 * it under the terms of the GNU General Public License as published by  
 * the Free Software Foundation, version 3.
 *
 * This program is distributed in the hope that it will be useful, but 
 * WITHOUT ANY WARRANTY; without even the implied warranty of 
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU 
 * General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License 
 * along with this program. If not, see <http://www.gnu.org/licenses/>.
 */

struct Version {
  major: uint8_t;
  minor: uint8_t;
  hw_name: char[20];
  stm32_uid: uint8_t[12];
  pairing_done: bool;
}

struct Values {
  fet_temp: float16_t;
  motor_temp: float16_t;
  avg_motor_current: float32_t;
  avg_input_current: float32_t;
  reset_avg_id: float32_t;
  reset_avg_iq: float32_t;
  duty_cycle_now: float16_t;
  rpm: float32_t;
  input_voltage: float16_t;
  amp_hours: float32_t;
  amp_hours_charged: float32_t;
  watt_hours: float32_t;
  watt_hours_charged: float32_t;
  tachometer_value: int32_t;
  tachometer_abs_value: int32_t;
  fault: unit8_t;
  pid_pos_now: float32_t;
  controller_id: unit8_t;
  mos1_temp: float16_t;
  mos2_temp: float16_t;
  mos3_temp: float16_t;
  reset_avg_vd: float32_t;
  reset_avg_vq: float32_t; 
}

typedef enum {
  COMM_FW_VERSION = 0,
  COMM_JUMP_TO_BOOTLOADER,
  COMM_ERASE_NEW_APP,
  COMM_WRITE_NEW_APP_DATA,
  COMM_GET_VALUES,
  COMM_SET_DUTY,
  COMM_SET_CURRENT,
  COMM_SET_CURRENT_BRAKE,
  COMM_SET_RPM,
  COMM_SET_POS,
  COMM_SET_HANDBRAKE,
  COMM_SET_DETECT,
  COMM_SET_SERVO_POS,
  COMM_SET_MCCONF,
  COMM_GET_MCCONF,
  COMM_GET_MCCONF_DEFAULT,
  COMM_SET_APPCONF,
  COMM_GET_APPCONF,
  COMM_GET_APPCONF_DEFAULT,
  COMM_SAMPLE_PRINT,
  COMM_TERMINAL_CMD,
  COMM_PRINT,
  COMM_ROTOR_POSITION,
  COMM_EXPERIMENT_SAMPLE,
  COMM_DETECT_MOTOR_PARAM,
  COMM_DETECT_MOTOR_R_L,
  COMM_DETECT_MOTOR_FLUX_LINKAGE,
  COMM_DETECT_ENCODER,
  COMM_DETECT_HALL_FOC,
  COMM_REBOOT,
  COMM_ALIVE,
  COMM_GET_DECODED_PPM,
  COMM_GET_DECODED_ADC,
  COMM_GET_DECODED_CHUK,
  COMM_FORWARD_CAN,
  COMM_SET_CHUCK_DATA,
  COMM_CUSTOM_APP_DATA,
  COMM_NRF_START_PAIRING,
  COMM_GPD_SET_FSW,
  COMM_GPD_BUFFER_NOTIFY,
  COMM_GPD_BUFFER_SIZE_LEFT,
  COMM_GPD_FILL_BUFFER,
  COMM_GPD_OUTPUT_SAMPLE,
  COMM_GPD_SET_MODE,
  COMM_GPD_FILL_BUFFER_INT8,
  COMM_GPD_FILL_BUFFER_INT16,
  COMM_GPD_SET_BUFFER_INT_SCALE,
  COMM_GET_VALUES_SETUP,
  COMM_SET_MCCONF_TEMP,
  COMM_SET_MCCONF_TEMP_SETUP,
  COMM_GET_VALUES_SELECTIVE,
  COMM_GET_VALUES_SETUP_SELECTIVE,
  COMM_EXT_NRF_PRESENT,
  COMM_EXT_NRF_ESB_SET_CH_ADDR,
  COMM_EXT_NRF_ESB_SEND_DATA,
  COMM_EXT_NRF_ESB_RX_DATA,
  COMM_EXT_NRF_SET_ENABLED,
  COMM_DETECT_MOTOR_FLUX_LINKAGE_OPENLOOP,
  COMM_DETECT_APPLY_ALL_FOC,
  COMM_JUMP_TO_BOOTLOADER_ALL_CAN,
  COMM_ERASE_NEW_APP_ALL_CAN,
  COMM_WRITE_NEW_APP_DATA_ALL_CAN,
  COMM_PING_CAN,
  COMM_APP_DISABLE_OUTPUT,
  COMM_TERMINAL_CMD_SYNC,
  COMM_GET_IMU_DATA,
  COMM_BM_CONNECT,
  COMM_BM_ERASE_FLASH_ALL,
  COMM_BM_WRITE_FLASH,
  COMM_BM_REBOOT,
  COMM_BM_DISCONNECT,
  COMM_BM_MAP_PINS_DEFAULT,
  COMM_BM_MAP_PINS_NRF5X,
  COMM_ERASE_BOOTLOADER,
  COMM_ERASE_BOOTLOADER_ALL_CAN,
  COMM_PLOT_INIT,
  COMM_PLOT_DATA,
  COMM_PLOT_ADD_GRAPH,
  COMM_PLOT_SET_GRAPH,
  COMM_GET_DECODED_BALANCE,
} COMM_PACKET_ID;
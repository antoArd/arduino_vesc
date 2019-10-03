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

#include <Arduino.h>
#include <HardwareSerial.h>
#include "vesc_crc.h"
#include "vesc_packet.h"

  void VescPacket::packet_send_packet(HardwareSerial* port, unsigned char *data, unsigned int len) {
  uint8_t tx_buffer[600];

  if (len == 0 || len > 255) {
    return;
  }

  int b_ind = 0;

  if (len <= 512) {
    tx_buffer[b_ind++] = 2;
    tx_buffer[b_ind++] = len;
  } else if (len <= 65535) {
    tx_buffer[b_ind++] = 3;
    tx_buffer[b_ind++] = len >> 8;
    tx_buffer[b_ind++] = len & 0xFF;
  } else {
    tx_buffer[b_ind++] = 4;
    tx_buffer[b_ind++] = len >> 16;
    tx_buffer[b_ind++] = (len >> 8) & 0x0F;
    tx_buffer[b_ind++] = len & 0xFF;
  }

  memcpy(tx_buffer + b_ind, data, len);
  b_ind += len;

  unsigned short crc = crc16(data, len);
  tx_buffer[b_ind++] = (uint8_t)(crc >> 8);
  tx_buffer[b_ind++] = (uint8_t)(crc & 0xFF);
  tx_buffer[b_ind++] = 3;

  port->write(tx_buffer, b_ind);
}

bool VescPacket::packet_receive_packet(HardwareSerial* port, unsigned char *data) {
  uint8_t rx_buffer[600];
  int b_ind = 0;
  int type = rx_buffer[b_ind++] = port->read();

  uint8_t len;
  switch (type) {
    case 2:
      len = rx_buffer[b_ind++] = port->read();
      break;
    case 3:
      len = (rx_buffer[b_ind++] = port->read()) << 8 |
            (rx_buffer[b_ind++] = port->read());
      break;
    case 4:
      len = (rx_buffer[b_ind++] = port->read()) << 16 |
            (rx_buffer[b_ind++] = port->read()) << 8 |
            (rx_buffer[b_ind++] = port->read());
      break;
    default:
      return false;
  }

  for (int i = 0; i < len ; i++) {
    rx_buffer[b_ind++] = port->read();
  }

  unsigned short crc_calc = crc16(rx_buffer+type, len);
  unsigned short crc_rx = (unsigned short)(rx_buffer[len + 1] = port->read()) << 8
                        | (unsigned short)(rx_buffer[len + 2] = port->read());
  unsigned short packet_end = (rx_buffer[len + 3] = port->read());
  if(crc_calc == crc_rx && packet_end == 3) {
    memcpy(data, rx_buffer+type, len);
    return true;
  }
  
  return false;
}
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
#include "vesc.h"
#include "vesc_packet.h"
#include "vesc_types.h"
#include "vesc_utility.h"


Vesc::Vesc(void) {
}

void Vesc::init(HardwareSerial* uart, HardwareSerial* debug)  {
    uartPort = uart;
    debugPort = debug;
}

void Vesc::setDuty(float duty)  {
    uint8_t send_buffer[5];
    int32_t ind = 0;
    send_buffer[ind++] = COMM_SET_DUTY;
    VescUtility::utility_append_int32(send_buffer, (int32_t) (duty * 100000), &ind);
    sendPacket(send_buffer, ind);
}

void Vesc::setCurrent(float current)  {
    uint8_t send_buffer[5];
    int32_t ind = 0;
    send_buffer[ind++] = COMM_SET_CURRENT;
    VescUtility::utility_append_int32(send_buffer, (int32_t) (current * 1000), &ind);
    sendPacket(send_buffer, ind);
}

void Vesc::setBrakeCurrent(float current)  {
}

void Vesc::sendPacket(unsigned char *data, unsigned int len)  {
    VescPacket::packet_send_packet(uartPort, data, len);
}

uint8_t Vesc::receivePacket(unsigned char *data) {
    return VescPacket::packet_receive_packet(uartPort, data);
}

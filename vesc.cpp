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
    uint8_t send_buffer[5];
    int32_t ind = 0;
    send_buffer[ind++] = COMM_SET_CURRENT_BRAKE;
    VescUtility::utility_append_int32(send_buffer, (int32_t) (current * 1000), &ind);
    sendPacket(send_buffer, ind);
}

void Vesc::setRPM(int32_t rpm)  {
    uint8_t send_buffer[5];
    int32_t ind = 0;
    send_buffer[ind++] = COMM_SET_CURRENT_BRAKE;
    VescUtility::utility_append_int32(send_buffer, rpm, &ind);
    sendPacket(send_buffer, ind);
}

void Vesc::setPosition(float position)  {
    uint8_t send_buffer[5];
    int32_t ind = 0;
    send_buffer[ind++] = COMM_SET_POS;
    VescUtility::utility_append_int32(send_buffer,  (int32_t) (current * 1000000), &ind);
    sendPacket(send_buffer, ind);
}

void Vesc::setHandbrake(float current)  {
    uint8_t send_buffer[5];
    int32_t ind = 0;
    send_buffer[ind++] = COMM_SET_HANDBRAKE;
    VescUtility::utility_append_float32(send_buffer,  current, 1e3, &ind);
    sendPacket(send_buffer, ind);
}

Version Vesc::getFirmwareVersion() {
    uint8_t send_buffer[5];
    uint8_t receive_buffer[50];
    int32_t ind = 0;
    send_buffer[ind++] = COMM_FW_VERSION;
    sendPacket(send_buffer, ind);
    delay(1);
    if (receivePacket(receive_buffer) && receive_buffer[0] == COMM_FW_VERSION) {
        char* index_pointer = strchr(receive_buffer+3, '\0');
        int index = index_pointer - receive_buffer+3;
        ind = 1;

        Version version;
        version.major = receive_buffer[ind++];
        version.minor = receive_buffer[ind++];

        memcpy(version.hw_name, receive_buffer+ind, index);
        ind += index;

        memcpy(version.stm32_uid, ind, 12);
        ind += 12;

        version.pairing_done = receive_buffer[ind++];
        return version;
    }

    return NULL;
}

Values Vesc::getRealtimeValues() {
    uint8_t send_buffer[1];
    uint8_t receive_buffer[600];
    int32_t ind = 0;
    send_buffer[ind++] = COMM_GET_VALUES;
    sendPacket(send_buffer, ind);
    delay(1);
    if (receivePacket(receive_buffer) && receive_buffer[0] == COMM_GET_VALUES) {
        ind = 0;
        Values values;
        values.fet_temp: VescUtility::utility_get_float16(receive_buffer, 1e1, ind++);
        values.motor_temp: VescUtility::utility_get_float16(receive_buffer, 1e1, ind++);
        values.avg_motor_current: VescUtility::utility_get_float32(receive_buffer, 1e2, ind++);
        values.avg_input_current: VescUtility::utility_get_float32(receive_buffer, 1e2, ind++);
        values.reset_avg_id: VescUtility::utility_get_float32(receive_buffer, 1e2, ind++);
        values.reset_avg_iq: VescUtility::utility_get_float32(receive_buffer, 1e2, ind++);
        values.duty_cycle_now: VescUtility::utility_get_float16(receive_buffer, 1e3, ind++);
        values.rpm: VescUtility::utility_get_float32(receive_buffer, 1e0, ind++);
        values.input_voltage: VescUtility::utility_get_float16(receive_buffer, 1e1, ind++);
        values.amp_hours: VescUtility::utility_get_float32(receive_buffer, 1e4, ind++);
        values.amp_hours_charged: VescUtility::utility_get_float32(receive_buffer, 1e4, ind++);
        values.watt_hours: VescUtility::utility_get_float32(receive_buffer, 1e4, ind++);
        values.watt_hours_charged: VescUtility::utility_get_float32(receive_buffer, 1e4, ind++);
        values.tachometer_value: VescUtility::utility_get_int32(receive_buffer, ind++);
        values.tachometer_abs_value: VescUtility::utility_get_int32(receive_buffer, ind++);
        values.fault: receive_buffer[ind++];
        values.pid_pos_now: VescUtility::utility_get_float32(receive_buffer, 1e6, ind++);
        values.controller_id: receive_buffer[ind++];
        values.mos1_temp: VescUtility::utility_get_float16(receive_buffer, 1e1, ind++);
        values.mos2_temp: VescUtility::utility_get_float16(receive_buffer, 1e1, ind++);
        values.mos3_temp: VescUtility::utility_get_float16(receive_buffer, 1e1, ind++);
        values.reset_avg_vd: VescUtility::utility_get_float32(receive_buffer, 1e3, ind++);
        values.reset_avg_vq: VescUtility::utility_get_float32(receive_buffer, 1e3, ind++);
        return values;
    }

    return NULL;
}

float16_t Vesc::getFetTemperature() {
    uint8_t receive_buffer[10];
    if (getRealtimeValuesSelective(receive_buffer, 0)) {
        return VescUtility::utility_get_float16(receive_buffer, 1e1, 2);
    }

    return 0;
}

float16_t Vesc::getMotorTemperature()  {
    uint8_t receive_buffer[10];
    if (getRealtimeValuesSelective(receive_buffer, 1)) {
        return VescUtility::utility_get_float16(receive_buffer, 1e1, 2);
    }

    return 0;
}

float32_t Vesc::getAvgMotorCurrent()  {
    uint8_t receive_buffer[10];
    if (getRealtimeValuesSelective(receive_buffer, 2)) {
        return VescUtility::utility_get_float32(receive_buffer, 1e2, 2);
    }

    return 0;
}

float32_t Vesc::getAvgInputCurrent()  {
    uint8_t receive_buffer[10];
    if (getRealtimeValuesSelective(receive_buffer, 3)) {
        return VescUtility::utility_get_float32(receive_buffer, 1e2, 2);
    }

    return 0;
}

float32_t Vesc::getResetAvgId()  {
    uint8_t receive_buffer[10];
    if (getRealtimeValuesSelective(receive_buffer, 4)) {
        return VescUtility::utility_get_float32(receive_buffer, 1e2, 2);
    }

    return 0;
}

float32_t Vesc::getResetAvgIq()  {
    uint8_t receive_buffer[10];
    if (getRealtimeValuesSelective(receive_buffer, 5)) {
        return VescUtility::utility_get_float32(receive_buffer, 1e2, 2);
    }

    return 0;
}

float16_t Vesc::getDutyCycleNow()  {
    uint8_t receive_buffer[10];
    if (getRealtimeValuesSelective(receive_buffer, 6)) {
        return VescUtility::utility_get_float16(receive_buffer, 1e3, 2);
    }

    return 0;
}

float32_t Vesc::getRPM()  {
    uint8_t receive_buffer[10];
    if (getRealtimeValuesSelective(receive_buffer, 7)) {
        return VescUtility::utility_get_float32(receive_buffer, 1e0, 2);
    }

    return 0;
}

float16_t Vesc::getInputVoltage()  {
    uint8_t receive_buffer[10];
    if (getRealtimeValuesSelective(receive_buffer, 8)) {
        return VescUtility::utility_get_float16(receive_buffer, 1e1, 2);
    }

    return 0;
}

float32_t Vesc::getAmpHours()  {
    uint8_t receive_buffer[10];
    if (getRealtimeValuesSelective(receive_buffer, 9)) {
        return VescUtility::utility_get_float32(receive_buffer, 1e4, 2);
    }

    return 0;
}

float32_t Vesc::getaAmpHoursCharged()  {
    uint8_t receive_buffer[10];
    if (getRealtimeValuesSelective(receive_buffer, 10)) {
        return VescUtility::utility_get_float32(receive_buffer, 1e4, 2);
    }

    return 0;
}

float32_t Vesc::getWattHours()  {
    uint8_t receive_buffer[10];
    if (getRealtimeValuesSelective(receive_buffer, 11)) {
        return VescUtility::utility_get_float32(receive_buffer, 1e4, 2);
    }

    return 0;
}

float32_t Vesc::getWattHoursCharged()  {
    uint8_t receive_buffer[10];
    if (getRealtimeValuesSelective(receive_buffer, 12)) {
        return VescUtility::utility_get_float32(receive_buffer, 1e4, 2);
    }

    return 0;
}

int32_t Vesc::getTachometerValue()  {
    uint8_t receive_buffer[10];
    if (getRealtimeValuesSelective(receive_buffer, 13)) {
        return VescUtility::utility_get_int32(receive_buffer, 2);
    }

    return 0;
}

int32_t Vesc::getTachometerAbsValue()  {
    uint8_t receive_buffer[10];
    if (getRealtimeValuesSelective(receive_buffer, 14)) {
        return VescUtility::utility_get_(receive_buffer, 2);
    }

    return 0;
}

unit8_t Vesc::getFault()  {
    uint8_t receive_buffer[10];
    if (getRealtimeValuesSelective(receive_buffer, 15)) {
        return receive_buffer[2];
    }

    return 0;
}

float32_t Vesc::getPidPosNow()  {
    uint8_t receive_buffer[10];
    if (getRealtimeValuesSelective(receive_buffer, 16)) {
        return VescUtility::utility_get_float32(receive_buffer, 1e6, 2);
    }

    return 0;
}

unit8_t Vesc::getControllerId()  {
    uint8_t receive_buffer[10];
    if (getRealtimeValuesSelective(receive_buffer, 17)) {
        return receive_buffer[2];
    }

    return 0;
}

float16_t[] Vesc::getMosfetsTemperature()  {
    uint8_t receive_buffer[10];
    if (getRealtimeValuesSelective(receive_buffer, 18)) {
        int32_t ind = 2;
        float16_t values[3];
        values[0] = VescUtility::utility_get_float16(receive_buffer, 1e1, ind++);
        values[1] = VescUtility::utility_get_float16(receive_buffer, 1e1, ind++);
        values[2] = VescUtility::utility_get_float16(receive_buffer, 1e1, ind++);
    }

    return [];
}

float32_t Vesc::getResetAvgVd()  {
    uint8_t receive_buffer[10];
    if (getRealtimeValuesSelective(receive_buffer, 19)) {
        return VescUtility::utility_get_float32(receive_buffer, 1e3, 2);
    }

    return 0;
}

float32_t Vesc::getResetAvgVq() {
    uint8_t receive_buffer[10];
    if (getRealtimeValuesSelective(receive_buffer, 20)) {
        return VescUtility::utility_get_float32(receive_buffer, 1e3, 2);
    }

    return 0;
}

bool Vesc::getRealtimeValuesSelective(unsigned char *data, unsigned int index) {
    uint8_t send_buffer[2];
    int32_t ind = 0;
    send_buffer[ind++] = COMM_GET_VALUES_SELECTIVE;
    VescUtility::utility_append_int32(send_buffer,  (int32_t)(((uint32_t)1 << index, &ind);
    sendPacket(send_buffer, ind);
    delay(1);
    return receivePacket(data) && data[0] == COMM_GET_VALUES_SELECTIVE;
}

void Vesc::sendPacket(unsigned char *data, unsigned int len)  {
    VescPacket::packet_send_packet(uartPort, data, len);
}

uint8_t Vesc::receivePacket(unsigned char *data) {
    return VescPacket::packet_receive_packet(uartPort, data);
}


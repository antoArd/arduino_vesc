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
#ifndef Vesc_h
#define Vesc_h

#include <Arduino.h>
#include "vesc_types.h"
#include "vesc_packet.h"

class Vesc {

    public:
        Vesc(void);
        void init(HardwareSerial* uartPort, HardwareSerial* debugPort);
        void setDuty(float duty);
        void setCurrent(float current);
        void setBrakeCurrent(float current);
        void setRPM(int32_t rpm);
        void setPosition(float position);
        void setHandbrake(float current);
        vesc_version getFirmwareVersion();
        vesc_values getRealtimeValues();
        mc_configuration getMotorConfiguration();
        float getFetTemperature();
        float getMotorTemperature();
        float getAvgMotorCurrent();
        float getAvgInputCurrent();
        float getResetAvgId();
        float getResetAvgIq();
        float getDutyCycleNow();
        float getRPM();
        float getInputVoltage();
        float getAmpHours();
        float getaAmpHoursCharged();
        float getWattHours();
        float getWattHoursCharged();
        int32_t getTachometerValue();
        int32_t getTachometerAbsValue();
        uint8_t getFault();
        float getPidPosNow();
        uint8_t getControllerId();
        float* getMosfetsTemperature();
        float getResetAvgVd();
        float getResetAvgVq(); 

    private:
		HardwareSerial* uartPort = NULL;
        HardwareSerial* debugPort = NULL;

        void sendPacket(unsigned char *data, unsigned int len);
        uint8_t receivePacket(unsigned char *data);
        bool getRealtimeValuesSelective(unsigned char *data, unsigned int index);
};

#endif
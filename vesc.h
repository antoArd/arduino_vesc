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

class Vesc {

    public:
        Vesc(void);
        void init(HardwareSerial* uartPort, HardwareSerial* debugPort);
        void setDuty(float duty);
        void setCurrent(float current);
        void setBrakeCurrent(float current);
        void setRPM(int32_t rpm);
        void setPosition(float position);
        void setHandbrake(float current)
        Version getFirmwareVersion();
        Values getRealtimeValues();
        MotorConfiguration getMotorConfiguration();
        float16_t getFetTemperature();
        float16_t getMotorTemperature();
        float32_t getAvgMotorCurrent();
        float32_t getAvgInputCurrent();
        float32_t getResetAvgId();
        float32_t getResetAvgIq();
        float16_t getDutyCycleNow();
        float32_t getRPM();
        float16_t getInputVoltage();
        float32_t getAmpHours();
        float32_t getaAmpHoursCharged();
        float32_t getWattHours();
        float32_t getWattHoursCharged();
        int32_t getTachometerValue();
        int32_t getTachometerAbsValue();
        unit8_t getFault();
        float32_t getPidPosNow();
        unit8_t getControllerId();
        float16_t getMosfet1Temperature();
        float16_t getMosfet2Temperature();
        float16_t getMosfet3Temperature();
        float32_t getResetAvgVd();
        float32_t getResetAvgVq(); 

    private:
		HardwareSerial* uartPort = NULL;
        HardwareSerial* debugPort = NULL;

        void sendPacket(unsigned char *data, unsigned int len);
        uint8_t receivePacket(unsigned char *data);
        bool getRealtimeValuesSelective(unsigned char *data, unsigned int index);
};

#endif
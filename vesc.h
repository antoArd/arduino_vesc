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

    private:
		HardwareSerial* uartPort = NULL;
        HardwareSerial* debugPort = NULL;

        void sendPacket(unsigned char *data, unsigned int len);
        uint8_t receivePacket(unsigned char *data);
};

#endif
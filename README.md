# arduino_vesc
An Arduino library for interfacing with the VESC over UART

## Usage
clone this repository and put it into the arduino/library folder

Connect Arduino 
(ESP32..) rx -> vesc tx
(ESP32..) tx -> vesc rx

Set in vesc tool app "ADC / UART" or "UART" and enjoy

## Vesc Command pattern
![alt text](https://raw.githubusercontent.com/gianmarcov/arduino_vesc/develop/assets/vesc_tx.png)

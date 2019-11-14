#define RXD2 16
#define TXD2 17
#include "vesc.h"

Vesc vesc;
 
void setup() {
  Serial.begin(115200);
  Serial2.begin(115200, SERIAL_8N1, RXD2, TXD2);
  vesc.init(&Serial2, &Serial);
}
 
void loop() { //Choose Serial1 or Serial2 as required
  vesc_version version = vesc.getFirmwareVersion();
  Serial.println("FW mayor: " + String(version.major));
  Serial.println("FW minor: " + String(version.minor));
  Serial.println("HW Version: " + String(version.hw_name));
  Serial.write(version.stm32_uid, sizeof(version.stm32_uid));
  Serial.println("");
  Serial.println("Pairing done: " + String(version.pairing_done));
  
  delay(10000);
}
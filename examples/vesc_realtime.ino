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
  vesc_values values = vesc.getRealtimeValues();
  Serial.println("duty cycle: " + String(values.duty_cycle_now));
  Serial.println("voltage: " + String(values.input_voltage));
  Serial.println("rpm: " + String(values.rpm));
  vesc.setDuty(0.2);
  delay(100);
}
#include <nRF24L01.h>
#include <RF24.h>
#include <RF24_config.h>
#include <SPI.h>
#include "Bitcraze_PMW3901.h"
#include <Wire.h>
#include <VL53L0X.h>



// ------------ CONSTANTS ------------ //
// Radio
const int pinCE = 7;
const int pinCSN = 8;
RF24 radio(pinCE, pinCSN);
const uint64_t pipe = 0xE8E8F0F0E1LL;
// Flow Sensor
Bitcraze_PMW3901 flow(10);  // pin 10 for chip select


// ------------ TYPE DEFINES ------------ //
struct TxFrame
{ 
  int16_t H_disp_front; // Frontal displacement counts
  int16_t H_disp_side;  // Side displacement counts
  int altitude;     // Altitude counts
};


// ------------ VARIABLES ------------ //
// Radio
TxFrame frame;
// Flow Sensor
VL53L0X rangeSensor;
int16_t deltaX,deltaY;
int16_t deltaX_acumm=0,deltaY_acumm=0;


// ------------ INITIALIZATION ------------ //
void setup(void)
{
  // Radio
  radio.begin();
  radio.setChannel(0x66);
  radio.setDataRate(RF24_2MBPS);
  radio.openWritingPipe(pipe);
  // Init Values
  frame.H_disp_front = 0;
  frame.H_disp_side = 0;
  frame.altitude = 0;
  // Serial
  Serial.begin(2000000);
  // Flow Sensor
  flow.begin();
  Wire.begin();
  rangeSensor.init();
  rangeSensor.setTimeout(500);
}


// ------------ MAIN CODE ------------ //
void loop(void)
{
  // Flow Sensor + Framing full Speed:
  flow.readMotionCount(&frame.H_disp_side, &deltaY);
  frame.H_disp_front = -deltaY;
  frame.altitude = rangeSensor.readRangeSingleMillimeters();
  // Rework under measures of 60
  if (frame.altitude < 60){
    frame.H_disp_side = 0;
    frame.H_disp_front = 0;
    frame.altitude = 60;
  }
  /*
  Serial.print("X: ");
  Serial.print(frame.H_disp_front);
  Serial.print(", Y: ");
  Serial.print(frame.H_disp_side);
  Serial.print(", Range: ");
  Serial.print(frame.altitude);
  Serial.print("\n");
  */
  // Tx Calls
  radio.write(&frame, sizeof frame);
  delay(10);
}

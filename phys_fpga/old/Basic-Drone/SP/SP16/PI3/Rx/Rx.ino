#include <nRF24L01.h>
#include <RF24.h>
#include <RF24_config.h>
#include <SPI.h>


// ------------ CONSTANTS ------------ //
const int pinCE = 7;
const int pinCSN = 8;
RF24 radio(pinCE, pinCSN);
const uint64_t pipe = 0xE8E8F0F0E1LL;


// ------------ TYPE DEFINES ------------ //
struct TxFrame
{ 
  int H_disp_front; // Frontal displacement counts
  int H_disp_side;  // Side displacement counts
  int altitude;     // Altitude counts
};


// ------------ VARIABLES ------------ //
char data[16];
TxFrame frame;


// ------------ INITIALIZATION ------------ //
void setup(void)
{
   Serial.begin(2000000);
   radio.begin();
   radio.openReadingPipe(1,pipe);
   radio.setChannel(0x66);
   radio.setDataRate(RF24_2MBPS);
   radio.startListening();
   Serial.println("Rx Waiting");
}


// ------------ MAIN CODE ------------ //
void loop(void)
{
  if (radio.available())
  {
    radio.read(&frame, sizeof frame); 
    Serial.println(frame.H_disp_front);
    Serial.println(frame.H_disp_side);
    Serial.println(frame.altitude);
  }
}




//radio.setChannel(0x66);

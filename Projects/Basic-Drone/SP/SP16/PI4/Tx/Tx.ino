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
char data[16]="Hola mundo" ;
TxFrame frame;



// ------------ INITIALIZATION ------------ //
void setup(void)
{
   radio.begin();
   radio.setChannel(0x66);
   radio.setDataRate(RF24_2MBPS);
   radio.openWritingPipe(pipe);
   frame.H_disp_front = 5000;
   frame.H_disp_side = 98;
   frame.altitude = 99;
   Serial.begin(2000000);
}


// ------------ MAIN CODE ------------ //
void loop(void)
{
  if (frame.H_disp_front < 10) {
    frame.H_disp_front++;
  }else{
    frame.H_disp_front=1;
  }
  //Serial.println(frame.H_disp_front);
  radio.write(&frame.H_disp_front, sizeof frame.H_disp_front);
  delay(1);
}




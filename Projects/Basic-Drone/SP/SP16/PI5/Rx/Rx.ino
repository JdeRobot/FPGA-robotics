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
union Frame_Byte
{
  char disp_byte [2];
  int16_t disp;
};
struct TxFrame
{ 
  Frame_Byte H_disp_front;  // Frontal displacement counts
  Frame_Byte H_disp_side;   // Side displacement counts
  Frame_Byte altitude;      // Altitude counts
};


// ------------ VARIABLES ------------ //
char data[16];
TxFrame frame;
char STX1 = 255;
char STX2 = 165;


// ------------ INITIALIZATION ------------ //
void setup(void)
{
   Serial.begin(500000);
   radio.begin();
   radio.openReadingPipe(1,pipe);
   radio.setChannel(0x66);
   radio.setDataRate(RF24_1MBPS);
   radio.startListening();
}


// ------------ MAIN CODE ------------ //
void loop(void)
{
  if (radio.available())
  {
    radio.read(&frame, sizeof frame);
    /*
    Serial.print("X: ");
    Serial.print(frame.H_disp_front.disp);
    Serial.print(", Y: ");
    Serial.print(frame.H_disp_side.disp);
    Serial.print(", Range: ");
    Serial.print(frame.altitude.disp);
    Serial.print("\n");
    //*/
    
    Serial.print(STX1);  // 0xFF
    Serial.print(STX2);  // 0xA5
    Serial.print(frame.H_disp_front.disp_byte[1]);  //MSB
    Serial.print(frame.H_disp_front.disp_byte[0]);  //LSB
    Serial.print(frame.H_disp_side.disp_byte[1]);   //MSB
    Serial.print(frame.H_disp_side.disp_byte[0]);   //LSB
    Serial.print(frame.altitude.disp_byte[1]);      //MSB
    Serial.print(frame.altitude.disp_byte[0]);      //LSB
    //*/
  }
}

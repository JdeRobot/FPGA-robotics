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
TxFrame frame_old;
TxFrame frame_new;
bool flag=0;
int errors=0;


// ------------ INITIALIZATION ------------ //
void setup(void)
{
   Serial.begin(2000000);
   radio.begin();
   radio.openReadingPipe(1,pipe);
   radio.setChannel(0x66);
   radio.setDataRate(RF24_2MBPS);
   radio.startListening();
   frame_old.H_disp_front = 10;
   frame_new.H_disp_front = 1;
   Serial.println("Rx Waiting");
}


// ------------ MAIN CODE ------------ //
void loop(void)
{
  if (radio.available())
  {
    radio.read(&frame_new.H_disp_front, sizeof frame_new.H_disp_front);
    flag=!flag;
    Serial.print(flag);
    Serial.print(" Errores de recepción: ");
    Serial.println(errors);
    
    if (frame_new.H_disp_front > 1){
      if (frame_new.H_disp_front == (frame_old.H_disp_front+1)){
        frame_old.H_disp_front++;
      }else{
        errors++;
        frame_old.H_disp_front=frame_new.H_disp_front;
      }
    }else{
      if (frame_old.H_disp_front==10){
        frame_old.H_disp_front=1;
      }else{
        errors++;
        frame_old.H_disp_front=frame_new.H_disp_front;
      }
    }
  }
}




//radio.setChannel(0x66);

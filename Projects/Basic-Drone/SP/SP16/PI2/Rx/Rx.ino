#include <nRF24L01.h>
#include <RF24.h>
#include <RF24_config.h>
#include <SPI.h>
 
const int pinCE = 7;
const int pinCSN = 8;
RF24 radio(pinCE, pinCSN);
 
// Single radio pipe address for the 2 nodes to communicate.
const uint64_t pipe = 0xE8E8F0F0E1LL;
 
char data[16];
 
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
 
void loop(void)
{
   if (radio.available())
   {
      radio.read(data, sizeof data); 
      Serial.println(data);
   }
}




//radio.setChannel(0x66);

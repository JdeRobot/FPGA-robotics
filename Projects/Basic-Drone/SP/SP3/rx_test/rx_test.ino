//LED = 13;

void setup() {
  // put your setup code here, to run once:
  Serial.begin(54600);
  pinMode(13,OUTPUT);
  digitalWrite(13,LOW);
}

void loop() {
  // put your main code here, to run repeatedly:
  if (Serial.available())
  {
    switch(Serial.read()){
      case 'a': digitalWrite(13,LOW);
        break;
      case 'd': digitalWrite(13,HIGH);
        break;
      case 'w': 
        digitalWrite(13,HIGH);
        delay(500);
        digitalWrite(13,LOW);
        delay(500);
        break;
      case 's': 
        digitalWrite(13,LOW);
        delay(500);
        digitalWrite(13,HIGH);
        delay(500);
        break;
      default:  break;
    }
  }
}

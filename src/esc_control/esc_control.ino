/*
        Arduino Brushless Motor Control
     by Dejan, https://howtomechatronics.com
*/
#include <Servo.h>
Servo ESC;     // create servo object to control the ESC 

int incomingByte = 0; // for incoming serial data
String readString;

void setup() {
  // Attach the ESC on pin 13
  Serial.begin(115200);
  while(!Serial)
    delay(100);
  Serial.println("hello");
  ESC.attach(13,1000,2000); // (pin, min pulse width, max pulse width in microseconds) 
}

void loop() {
   while (Serial.available()) {
    delay(2);  //delay to allow byte to arrive in input buffer
    char c = Serial.read();
    readString += c;
  }
  int value = readString.toInt();
  if (readString.length() >0) {
   Serial.println(value);
    if(value<0 || value > 1023){
      Serial.println("invalid value");
    }else{
      value = map(value, 0, 1023, 0, 180);   // scale it to use it with the servo library (value between 0 and 180)
      ESC.write(value);    // Send the signal to the ESC
    }
   readString="";
  } 
}

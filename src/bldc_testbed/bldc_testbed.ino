#include "A1335Utils.h"
#include "BLDCmotor.h"
#include "ardprintf.h"

int INHA = 2, INLA = 3,INHB = 6,INLB = 7,INHC = 8,INLC = 9;

int phase0 = A0, phase1 = A1;
int ledPin = 13;
long int motor_position = 0, motor_position_prev = 0, motor_pos_absolute = 0;
int analogValue[] = {0,0};
int rev_counter = 0;
int counter = 0;
int32_t frequency = 3100; //frequency (in Hz)

void setup() {
  
  pinMode(ledPin, OUTPUT);
  
  pinMode(INHA, OUTPUT);
  pinMode(INLA, OUTPUT);
  pinMode(INHB, OUTPUT);
  pinMode(INLB, OUTPUT);
  pinMode(INHC, OUTPUT);
  pinMode(INLC, OUTPUT);  

  digitalWrite(INHA,0);
  digitalWrite(INLA,0);
  digitalWrite(INHB,0);
  digitalWrite(INLB,0);
  digitalWrite(INHC,0);
  digitalWrite(INLC,0);
  
  Serial.begin(115200);
}

char commute_state = '0';

void loop() {
  analogValue[0] = analogRead(phase0);
  analogValue[1] = analogRead(phase1);
  analogValue[2] = analogRead(A2);
  A1335State state;
  readDeviceState(0xd,&state);
  motor_position = state.angle_raw - (analogValue[2]-235);
  if(motor_position_prev<1000 && motor_position > 3096)
    rev_counter--;
  if(motor_position_prev>3096 && motor_position < 1000)
    rev_counter++;
  
  motor_pos_absolute = rev_counter*4096 + motor_position;
  motor_position_prev = motor_position;

  if((counter++%100)==0){
    ardprintf("commute_state %c phase0 %d\t phase1 %d\t poti %d \t motor_pos %d\n", commute_state, analogValue[0], analogValue[1], analogValue[2], motor_pos_absolute);
    analogWrite(INHA,0);
    analogWrite(INLA,0);
    analogWrite(INHB,0);
    analogWrite(INLB,0);
    analogWrite(INHC,0);
    analogWrite(INLC,0);
    delay(10);
    switch(commute_state){
      case '0': { // B->C
        analogWrite(INHA,0);
        analogWrite(INLA,0);
        analogWrite(INHB,2);
        analogWrite(INLB,0);
        analogWrite(INHC,0);
        analogWrite(INLC,255);
        break;
      }
      case '1': { // A->C
        analogWrite(INHA,2);
        analogWrite(INLA,0);
        analogWrite(INHB,0);
        analogWrite(INLB,0);
        analogWrite(INHC,0);
        analogWrite(INLC,255);
        break;
      }
      case '2': { // A->B
        analogWrite(INHA,2);
        analogWrite(INLA,0);
        analogWrite(INHB,0);
        analogWrite(INLB,255);
        analogWrite(INHC,0);
        analogWrite(INLC,0);
        break;
      }
      case '3': { // C->B
        analogWrite(INHA,0);
        analogWrite(INLA,0);
        analogWrite(INHB,0);
        analogWrite(INLB,255);
        analogWrite(INHC,2);
        analogWrite(INLC,0);
        break;
      }
      case '4': { // C->A
        analogWrite(INHA,0);
        analogWrite(INLA,255);
        analogWrite(INHB,0);
        analogWrite(INLB,0);
        analogWrite(INHC,2);
        analogWrite(INLC,0);
        break;
      }
      case '5': { // B->A
        analogWrite(INHA,0);
        analogWrite(INLA,255);
        analogWrite(INHB,2);
        analogWrite(INLB,0);
        analogWrite(INHC,0);
        analogWrite(INLC,0);
        break;
      }
      default:{
        Serial.println("driver disabled");
        analogWrite(INHA,0);
        analogWrite(INLA,0);
        analogWrite(INHB,0);
        analogWrite(INLB,0);
        analogWrite(INHC,0);
        analogWrite(INLC,0);
      }
    }
    if (Serial.available() > 0) {
      int new_commute_state = Serial.read();
      if(new_commute_state!=commute_state){
        ardprintf("changing state %c -> %c\n", commute_state, new_commute_state);
        analogWrite(INHA,0);
        analogWrite(INLA,0);
        analogWrite(INHB,0);
        analogWrite(INLB,0);
        analogWrite(INHC,0);
        analogWrite(INLC,0);
        delay(100);
        commute_state = new_commute_state;
      }
    }
    
  }

//  motor.setVelocity(velocity_sp);
}

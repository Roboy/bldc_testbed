#include "A1335Utils.h"
#include "BLDCmotor.h"
#include "ardprintf.h"

int INHA = 2, INLA = 3,INHB = 4,INLB = 5,INHC = 6,INLC = 7;

int phase0 = A0, phase1 = A1;
int ledPin = 13;
long int motor_position = 0, motor_position_prev = 0, motor_pos_absolute = 0;
int analogValue[] = {0,0};
int rev_counter = 0;
int counter = 0;

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

int commute_state = 0;

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
    ardprintf("commute_state %d phase0 %d\t phase1 %d\t poti %d \t motor_pos %d\n", commute_state, analogValue[0], analogValue[1], analogValue[2], motor_pos_absolute);
    digitalWrite(INHA,0);
    digitalWrite(INLA,0);
    digitalWrite(INHB,0);
    digitalWrite(INLB,0);
    digitalWrite(INHC,0);
    digitalWrite(INLC,0);
    delay(100);
    switch(commute_state){
      case 0: { // B->C
        digitalWrite(INHA,0);
        digitalWrite(INLA,0);
        digitalWrite(INHB,true);
        digitalWrite(INLB,0);
        digitalWrite(INHC,0);
        digitalWrite(INLC,true);
        break;
      }
      case 1: { // A->C
        digitalWrite(INHA,true);
        digitalWrite(INLA,0);
        digitalWrite(INHB,0);
        digitalWrite(INLB,0);
        digitalWrite(INHC,0);
        digitalWrite(INLC,true);
        break;
      }
      case 2: { // A->B
        digitalWrite(INHA,true);
        digitalWrite(INLA,0);
        digitalWrite(INHB,0);
        digitalWrite(INLB,true);
        digitalWrite(INHC,0);
        digitalWrite(INLC,0);
        break;
      }
      case 3: { // C->B
        digitalWrite(INHA,0);
        digitalWrite(INLA,0);
        digitalWrite(INHB,0);
        digitalWrite(INLB,true);
        digitalWrite(INHC,true);
        digitalWrite(INLC,0);
        break;
      }
      case 4: { // C->A
        digitalWrite(INHA,0);
        digitalWrite(INLA,true);
        digitalWrite(INHB,0);
        digitalWrite(INLB,0);
        digitalWrite(INHC,true);
        digitalWrite(INLC,0);
        break;
      }
      case 5: { // B->A
        digitalWrite(INHA,0);
        digitalWrite(INLA,true);
        digitalWrite(INHB,true);
        digitalWrite(INLB,0);
        digitalWrite(INHC,0);
        digitalWrite(INLC,0);
        break;
      }
    }
    commute_state++;
    if(commute_state>6)
      commute_state = 0;
  }

//  motor.setVelocity(velocity_sp);
}

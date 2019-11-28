#include <Wire.h>
#include "Rotary_Encoder_Settings.h"
#define FS(x) (__FlashStringHelper*)(x)

struct A1335State {
  uint8_t address;
  bool isOK;
  float angle; // in deg
  int angle_raw; // in ticks
  uint8_t angle_flags : 2; // error, new
  uint8_t status_flags : 4;
  uint16_t err_flags : 12;
  uint16_t xerr_flags : 12;
  float temp; // in °C
  float fieldStrength; // in mT

  byte rawData[8][2];
};

bool readMemory(uint8_t deviceaddress, uint8_t eeaddress, byte* rdata, uint8_t num);
bool writeMemory(uint8_t deviceaddress, uint8_t eeaddress, byte* wdata);
bool writeMemoryCheck(uint8_t deviceaddress, uint8_t eeaddress, byte* wdata);

const uint8_t FLAGS_STRLEN = 10;


bool readDeviceState(uint8_t deviceaddress, A1335State* state);
bool checkDefaultSettings(A1335State* state);

void SerialPrintFlags(uint16_t flags, char meanings[][FLAGS_STRLEN], uint8_t num);
void SerialPrintAlignLeft(String s, uint16_t l);

const char ANGLE_FLAGS[][FLAGS_STRLEN] = {
  "NEW",
  "ERR"
};

const char STATUS_FLAGS[][FLAGS_STRLEN] = {
  "ERR",
  "NEW",
  "Soft_Rst",
  "PwON_Rst"
};

const char ERROR_FLAGS[][FLAGS_STRLEN] = {
  "MagLow",
  "MagHigh",
  "UnderVolt",
  "OverVolt",
  "AngleLow",
  "AngleHigh",
  "ProcError",
  "NoRunMode",
  "(CRC_Err)",
  "(INTFErr)",
  "(XOV)",
  "XERR"
};

const char XERROR_FLAGS[][FLAGS_STRLEN] = {
  "SelfTest",
  "MemAddr",
  "Execute",
  "ResetCond",
  "WTD_Timer",
  "WTD_Halt",
  "EEPR_Hard",
  "SRAM_Hard",
  "Temp_Err",
  "AngleWarn",
  "EEPR_Soft",
  "SRAM_Soft"
};




bool readMemory(uint8_t deviceaddress, uint8_t eeaddress, byte* rdata, uint8_t num)
{
  Wire.beginTransmission(deviceaddress);
  Wire.write(eeaddress);
  if(Wire.endTransmission(false) != 0){ // Restart Line for request
    Wire.endTransmission(true);
    return false;
  }

  Wire.requestFrom(deviceaddress, num, (uint8_t) true);
  for(uint8_t i = 0; i < num; i++){
    rdata[i] = Wire.read();
  }
  return true;
}

bool writeMemory(uint8_t deviceaddress, uint8_t eeaddress, byte* wdata)
{
  Wire.beginTransmission(deviceaddress);
  Wire.write(eeaddress); // LSB
  Wire.write(wdata, 2); // LSB
  if(Wire.endTransmission(true) != 0){
    return false;
  }
  return true;
}

bool writeMemoryCheck(uint8_t deviceaddress, uint8_t eeaddress, byte* wdata)
{
  if(!writeMemory(deviceaddress, eeaddress, wdata)){
    return false;
  }
  byte rdata[2];
  delay(30);
  if(!readMemory(deviceaddress, eeaddress, rdata, 2)){
    return false;
  }
  return (rdata[0] == wdata[0] && rdata[1] == wdata[1]);
}



bool clearStatusRegisters(uint8_t deviceaddress){
  byte data[] = {
    0b00000111, // Clear STA, ERR & XERR
    0x46        // Keycode to activate this command
  };
  return writeMemory(deviceaddress, 0x1E, data);
}



bool checkDefaultSettings(A1335State* state){
  for(uint8_t i = 0; i < 8; i++){
    if((state->rawData[i][0] & expected_registers_mask[i][0]) != expected_registers[i][0])
      return false;
    if((state->rawData[i][1] & expected_registers_mask[i][1]) != expected_registers[i][1])
      return false;
  }
  return true;
}


bool readDeviceState(uint8_t deviceaddress, A1335State* state){

  for(uint8_t i = 0; i < num_registers; i++){
    if(!readMemory(deviceaddress, start_register+(i<<1), state->rawData[i], 2)){
      return false;
    }
  }
  for(uint8_t i = 0; i < num_registers2; i++){
    if(!readMemory(deviceaddress, start_register2+(i<<1), state->rawData[num_registers+i], 2)){
      return false;
    }
  }

  state->isOK = checkDefaultSettings(state);

  state->angle_raw = (uint16_t)(((state->rawData[0][0] & 0xf) << 8) | state->rawData[0][1]);
  state->angle = (float)(state->angle_raw * 360.0f / 4096) ;
  
  state->angle_flags = (state->rawData[0][0] >> 5) & 0b11;

  state->status_flags = state->rawData[1][0] & 0xf;

  state->err_flags = ((state->rawData[2][0] & 0xf) << 8) | state->rawData[2][1];
  state->xerr_flags = ((state->rawData[3][0] & 0xf) << 8) | state->rawData[3][1];

  state->temp =
    (float)((uint16_t)((state->rawData[4][0] & 0xf) << 8) | state->rawData[4][1])
     / 8.0 - 273.145; // 8th Kelvin to °C
  state->fieldStrength =
    (float)((uint16_t)((state->rawData[5][0] & 0xf) << 8) | state->rawData[5][1])
     / 10.0; // Gauss to milliTesla


  return true;
}


void SerialPrintFlags(uint16_t flags, char meanings[][FLAGS_STRLEN], uint8_t num){
  bool first = true;
  for(uint8_t i = 0; i < num; i++){
    if((flags >> i) & 1){
      if(!first){
        Serial.print(", ");
      }
      Serial.print(meanings[i]);
      first = false;
    }
  }
}

void SerialPrintAlignLeft(String s, uint16_t l){
  Serial.print(s);
  l -= s.length();
  for(; l > 0; l--){
    Serial.print(' ');
  }
}




//String commandIn = "";
//bool line = false;

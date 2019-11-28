


const uint8_t start_register = 0x20;
const uint8_t num_registers = 6;
const uint8_t start_register2 = 0x34; // Error Mask registers
const uint8_t num_registers2 = 2;

/**
 * Content of the registers that should be on every chip
 * Starts on ANG register (0x20:21)
 */
const byte expected_registers[][2] = {
  {0b00000000, 0b00000000}, // ANG: Excpect RID & EF to be 0
  {0b10000000, 0b00010001}, // STA: RIDC, Error:0, Status Processing
  {0b10100000, 0b00000000}, // ERR: RIDC, all errors 0
  {0b10110000, 0b00000000}, // XERR: RIDC, all errors 0
  {0b11110000, 0b00000000}, // TSEN: RIDC
  {0b11100000, 0b00000000}, // FIELD: RIDC
  {0b11000000, 0b00000000}, // ERM: RIDC & All Errors enabled
  {0b11010000, 0b00000000}  // XERM: RIDC & All Errors enabled
};

/**
 * 1 marks the bits that belong to the expected values
 * (to check the expected content)
 */
const byte expected_registers_mask[][2] = {
  {0b11000000, 0b00000000}, // ANG: RIDC & EF
  {0b11110001, 0b11111111}, // STA: RIDC, Error & Status
  {0b11111100, 0b11111111}, // ERR: All except Interface & CRC Errors
  {0b11111111, 0b11111111}, // XERR: Check all errors
  {0b11110000, 0b00000000}, // TSEN: Only RIDC (Register IDentifier Code)
  {0b11110000, 0b00000000}, // FIELD: RIDC
  {0b11110100, 0b01111111}, // ERM: RIDC & All Errors except Protocol Erros
  {0b11111111, 0b11111111}  // XERM: RIDC & All Errors
};

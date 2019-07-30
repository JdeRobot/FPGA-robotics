uint8_t bit_reverse(uint8_t b_in);
uint16_t crc16_update(uint16_t crc, unsigned char a);
void XN297_SetTXAddr(const uint8_t* addr, uint8_t len);
void XN297_SetRXAddr(const uint8_t* addr, uint8_t len);
void XN297_Configure(uint8_t flags);
uint8_t XN297_WritePayload(uint8_t* msg, uint8_t len);
uint8_t XN297_ReadPayload(uint8_t* msg, uint8_t len);
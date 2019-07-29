void Read_Packet(uint8_t *data, uint8_t length);
uint8_t spi_write(uint8_t command);
void spi_write_address(uint8_t address, uint8_t data);
uint8_t spi_read();
uint8_t spi_read_address(uint8_t address);
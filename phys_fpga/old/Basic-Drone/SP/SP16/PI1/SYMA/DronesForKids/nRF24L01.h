/*
 This program is free software: you can redistribute it and/or modify
 it under the terms of the GNU General Public License as published by
 the Free Software Foundation, either version 3 of the License, or
 (at your option) any later version.

 This program is distributed in the hope that it will be useful,
 but WITHOUT ANY WARRANTY; without even the implied warranty of
 MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 GNU General Public License for more details.

 You should have received a copy of the GNU General Public License.
 If not, see <http://www.gnu.org/licenses/>.
 */



uint8_t NRF24L01_WriteReg(uint8_t address, uint8_t data);
void NRF24L01_WriteRegisterMulti(uint8_t address, const uint8_t data[], uint8_t len);
void NRF24L01_Initialize();
uint8_t NRF24L01_FlushTx();
uint8_t NRF24L01_FlushRx();
uint8_t Strobe(uint8_t state);
uint8_t NRF24L01_WritePayload(uint8_t *data, uint8_t length);
uint8_t NRF24L01_ReadPayload(uint8_t *data, uint8_t length);
uint8_t NRF24L01_ReadReg(uint8_t reg);
uint8_t NRF24L01_Activate(uint8_t code);
void NRF24L01_SetTxRxMode(enum TXRX_State mode);
uint8_t NRF24L01_Reset();
uint8_t NRF24L01_SetPower(enum TX_Power power);
uint8_t NRF24L01_SetBitrate(uint8_t bitrate);
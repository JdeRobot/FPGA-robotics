#include "sccb.h"
#include "sensor.h"
#include "log.h"
#include <stddef.h>
#include <libbase/i2c.h>

static int sccb_i2c_port;

int SCCB_Init(int i2c_num)
{
    if (i2c_num < 0 || i2c_num > get_i2c_devs_count()) {
        return -1;
    }
    set_i2c_active_dev(i2c_num);
    sccb_i2c_port = i2c_num;
    i2c_reset();

    return 0;
}

int SCCB_Deinit(void)
{
    return 0;
}

uint8_t SCCB_Probe(uint8_t slv_addr)
{
    if(i2c_poll(slv_addr)) {
        return slv_addr;
    }

    return 0;
}

uint8_t SCCB_Read(uint8_t slv_addr, uint8_t reg)
{
    uint8_t data=0;

    if (!i2c_read(slv_addr, reg, &data, 1, true)) {
        debug_print("SCCB_Read Failed addr:0x%02x, reg:0x%02x, data:0x%02x\n", slv_addr, reg, data);
        return -1;
    }

    return data;
}

uint8_t SCCB_Write(uint8_t slv_addr, uint8_t reg, uint8_t data)
{
    if (!i2c_write(slv_addr, reg, &data, 1)) {
        debug_print("SCCB_Write Failed addr:0x%02x, reg:0x%02x, data:0x%02x\n", slv_addr, reg, data);
        return -1;
    }

    return 0;
}

uint8_t SCCB_Read16(uint8_t slv_addr, uint16_t reg)
{
    return 0;//not implemented
}

uint8_t SCCB_Write16(uint8_t slv_addr, uint16_t reg, uint8_t data)
{
    return 0;//not implemented
}
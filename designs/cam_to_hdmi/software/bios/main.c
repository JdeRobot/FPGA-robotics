#include <stdint.h>
#include <stdbool.h>
#include <stdio.h>
#include <string.h>
#include <assert.h>
#include <inttypes.h>

#include <irq.h>
#include <libbase/uart.h>
#include <libbase/console.h>
#include <generated/csr.h>
#include "sensor.h"
#include "ov7670.h"
#include "sccb.h"
#include "log.h"


//-------------------------------------------------
//  main - program entry point
//-------------------------------------------------

int main(int argc, char *argv[]) {
#ifdef CONFIG_CPU_HAS_INTERRUPT
    irq_setmask(0);
    irq_setie(1);
#endif
    uart_init();

    debug_print("sccb init\n");
    SCCB_Init(0);

    debug_print("probing bus\n");
    uint8_t slv_addr = SCCB_Probe(OV7670_SCCB_ADDR);
    debug_print("found device at %"PRIx8"\n", slv_addr);

    sensor_t ov7670_sensor;
    ov7670_detect(slv_addr, &(ov7670_sensor.id));
    ov7670_sensor.slv_addr = slv_addr;
    ov7670_init(&ov7670_sensor);

    debug_print("initializing ov7670 sensor\n");
    ov7670_sensor.reset(&ov7670_sensor);
    ov7670_sensor.set_framesize(&ov7670_sensor, FRAMESIZE_QQVGA);
    ov7670_sensor.set_pixformat(&ov7670_sensor, PIXFORMAT_RGB565);

    return 0;
}
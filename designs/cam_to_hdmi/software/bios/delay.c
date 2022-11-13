#include "delay.h"
#include "generated/soc.h"

#define MS_PERIOD_CYCLES (CONFIG_CLOCK_FREQUENCY / 1000)


static inline void cdelay(int i)
{
	while(i > 0) {
		__asm__ volatile(CONFIG_CPU_NOP);
		i--;
	}
}

void delay(unsigned int ms)
{
    cdelay(MS_PERIOD_CYCLES*ms);
}
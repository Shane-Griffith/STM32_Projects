#include "../inc/gps.h"

#define DEFAULT_BAUD 115200
#define DEFAULT_CLK_FREQ 42000000

void usart_init(usart_config_t *gps_inst)
{
	gps_inst->baud_rate = DEFAULT_BAUD;
	gps_inst->clk_freq  =DEFAULT_CLK_FREQ;
}

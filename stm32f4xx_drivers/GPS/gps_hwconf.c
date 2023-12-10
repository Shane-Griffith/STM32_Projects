/*
 * gps_hwconf.c
 *
 *  Created on: Dec 1, 2023
 *      Author: shane
 */

usart_config_t *gps_module = {
		.baud_rate 	 = 115200,
		.clk_freq    = 0,
		.cpha      	 = 0,
		.cpol      	 = 0,
		.device_mode = DEVICE_RX,
		.over8 		 =

};

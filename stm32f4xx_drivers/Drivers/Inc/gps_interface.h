/*
 * gps_interface.h
 *
 *  Created on: Sep 12, 2023
 *      Author: shane
 */

#ifndef SRC_GPS_INTERFACE_H_
#define SRC_GPS_INTERFACE_H_

#include "stm32f4xx.h"
#include "stm32f407_usart_driver.h"

typedef struct
{
	char messageID[6];
	char time[6];
	char latitude[10];
	char hemisphere;
	char longitude[11];
	char east_west;
	char fix_quality;
	char num_sats;
	char horizonal_dilution;
	char altitude;
	char altitude_uint;
	char geoidal_separation;
	char geoidal_separationUnit;
	char diff_correction_age;
	char reference_station_id[4];

} gps_message_gaa;

void gps_init(usart_handle_t usart_device);
void parse_data(char *buffer, gps_message_gaa *gps_msg);
#endif /* SRC_GPS_INTERFACE_H_ */

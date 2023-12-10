/*
 * gps_interace.c
 *
 *  Created on: Sep 12, 2023
 *      Author: shane
 */

#include "gps_interface.h"
#include "stm32f407xx_gpio_driver.h"

#include <stdio.h>
#include <string.h>

//load the struct with the message
void parse_data(char *buffer, gps_message_gaa *gps_msg)
{
	memcpy(gps_msg->messageID, buffer, 6);
	memcpy(gps_msg->time, buffer + 6, 6);
	memcpy(gps_msg->latitude, buffer + 12, 10);
	gps_msg->hemisphere = buffer[22];
	memcpy(gps_msg->longitude, buffer + 23, 11);
	gps_msg->east_west = buffer[34];
	gps_msg->fix_quality = buffer[35];
	gps_msg->num_sats = buffer[36];
	gps_msg->horizonal_dilution = buffer[37];
	gps_msg->altitude = buffer[38];
	gps_msg->altitude_uint = buffer[39];
	gps_msg->geoidal_separation = buffer[40];
	gps_msg->geoidal_separationUnit = buffer[41];
	gps_msg->diff_correction_age = buffer[42];
	memcpy(gps_msg->reference_station_id, buffer + 43, 4);
}


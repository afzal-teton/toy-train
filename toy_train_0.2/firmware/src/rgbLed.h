/* 
 * File:   rgbLed.h
 * Author: afzal
 *
 * Created on December 22, 2021, 3:00 PM
 */

#ifndef RGBLED_H
#define	RGBLED_H

#include<stdint.h>

#define NO_COLOR         0
#define RED              1
#define GREEN            2
#define BLUE             3
#define WHITE            4
#define YELLOW           5



void initRGBPeripheral();
void RGBcolorWrite (uint8_t red, uint8_t green, uint8_t blue);
void RGBsetColor(uint8_t color);


#endif	/* RGBLED_H */


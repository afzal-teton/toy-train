/* 
 * File:   colorDetect.h
 * Author: afzal
 *
 * Created on December 22, 2021, 12:35 PM
 */

#ifndef COLORDETECT_H
#define	COLORDETECT_H

#include <stdint.h>

#define RED              1
#define GREEN            2
#define BLUE             3
#define WHITE            4
#define YELLOW           5
#define NO_COLOR         6




extern uint8_t lastColor; 
extern uint8_t readCount;
extern uint32_t lastMillis;
extern uint32_t colorCount;

extern uint16_t red ;         
extern uint16_t green;       
extern uint16_t blue;   
extern uint16_t ambient;
extern uint16_t white;

////------------------- Initialize Color Sensor starts ------------------//
void initColorDetection(uint8_t redPin, uint8_t greenPin, uint8_t bluePin, uint8_t pdPin);
////------------------- Initialize Color Sensor ends ------------------//
////------------------- Color Sensing function starts ------------------//
void colorWrite (uint8_t red, uint8_t green, uint8_t blue);
uint8_t getColor();
uint8_t reading();

#endif	/* COLORDETECT_H */


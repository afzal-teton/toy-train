#include "rgbLed.h"

#include"rgbLed.h"



void initRgbLedPin(uint8_t redPin, uint8_t greenPin, uint8_t bluePin){
//  //pinMode(redPin,OUTPUT);
//  //pinMode(greenPin,OUTPUT);
//  //pinMode(bluePin,OUTPUT);
//  redLed = redPin;
//  greenLed = greenPin;
//  blueLed = bluePin;
}

void RGBcolorWrite (uint8_t red, uint8_t green, uint8_t blue){
//  analogWrite(redLed,red);  // pwm for red led
//  analogWrite(greenLed,green);  //pwm for green led
//  analogWrite(blueLed,blue); // pwm for blue led 
}
/*
void LedDriver :: colorWrite (uint8_t red, uint8_t green, uint8_t blue)
{
  analogWrite(redLed, 255-red);
  analogWrite(greenLed, 255-green);
  analogWrite(blueLed, 255-blue);
}*/
void setColor(uint8_t color){
  switch (color) {
    case RED:
      RGBcolorWrite(255,0,0);
      break;
    case GREEN:
      RGBcolorWrite(0,255,0);
      break;
    case BLUE:
      RGBcolorWrite(0,0,255);
      break;
    case WHITE:
      RGBcolorWrite(255,255,255);
      break;
    case YELLOW:
      RGBcolorWrite(255,200,0);
      break;
    default:
      RGBcolorWrite(0,0,0);
      break;
  }
}

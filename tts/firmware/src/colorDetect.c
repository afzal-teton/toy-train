#include "colorDetect.h"
#include "AppGlobals.h"


uint8_t lastColor = 0; 
uint8_t readCount = 0;
uint32_t lastMillis = 0;
uint32_t colorCount = 0;

uint16_t red = 0;         
uint16_t green = 0;       
uint16_t blue = 0;   
uint16_t ambient = 0;
uint16_t white = 0;

//------------------- Initialize Color Sensor starts ------------------//
void initColorDetection(uint8_t redPin, uint8_t greenPin, uint8_t bluePin, uint8_t pdPin)
{
//    pinMode(redPin,OUTPUT);
//    pinMode(greenPin,OUTPUT);
//    pinMode(bluePin,OUTPUT);
//    pinMode(pdPin,INPUT);
//
//    redLed = redPin;
//    greenLed = greenPin;
//    blueLed = bluePin;
//    photoDiode = pdPin;
//
//    colorWrite(OFF, OFF, OFF);
}
//------------------- Initialize Color Sensor ends ------------------//

//------------------- Color Sensing function starts ------------------//
void colorWrite (uint8_t red, uint8_t green, uint8_t blue){
//  digitalWrite(redLed, red);
//  digitalWrite(greenLed, green);
//  digitalWrite(blueLed, blue);
}

uint8_t getColor(){
    red = ambient > red ? 0 : (red - ambient);
    green = ambient > green ? 0 : (green - ambient);
    blue = ambient > blue ? 0 : (blue - ambient);
    white = ambient > white ? 0 : (white - ambient);
    red = (red*100)/white;
    green = (green*100)/white;
    blue = (blue*100)/white;
    if(white < 40)
    {
        return NO_COLOR;
    }
    else if(green < red && 2*blue < red )
    {
        if(lastColor == RED)
        {
            colorCount++;
        }
        else
        {
            colorCount = 0;
        }
        if(colorCount > 5)
        {
            return RED;
        }
        lastColor = RED;
    }
    else if(2*blue < red && 3*blue < green && white > 100)
    {        
        if(lastColor == YELLOW)
        {
            colorCount++;
        }
        else
        {
            colorCount = 0;
        }
        if(colorCount > 5)
        {
            return YELLOW;
        }
        lastColor = YELLOW;
    }
    else if(green > 3*red && 2*blue < green && white < 80)
    {
        if(lastColor == GREEN)
        {
            colorCount++;
        }
        else
        {
            colorCount = 0;
        }
        if(colorCount > 5)
        {
            return GREEN;
        }
        lastColor = GREEN;
    }
    else if(blue > 2*red && 4*blue > 2*green)
    {
        if(lastColor == BLUE)
        {
            colorCount++;
        }
        else
        {
            colorCount = 0;
        }
        if(colorCount > 5)
        {
            return BLUE;
        }
        lastColor = BLUE;
    }
    else if(2*blue > red && blue < 2*red && green < 4*red && white > 200)
    {
        if(lastColor == WHITE)
        {
            colorCount++;
        }
        else
        {
            colorCount = 0;
        }
        if(colorCount > 5)
        {
            return WHITE;
        }
        lastColor = WHITE;
    }
    return NO_COLOR;
}

uint8_t reading()
{
    if(100)
    {
        readCount = 0;
        lastMillis = 0;
    }
    if(1)
    {
        lastMillis = 0;
        switch(readCount)
        {
            case(0):
                colorWrite(OFF, OFF, OFF);
            break;
            case(1):
                //ambient = analogRead(photoDiode);
                colorWrite(ON, OFF, OFF);
            break;
            case(2):
                //red = analogRead(photoDiode);
                colorWrite(OFF, ON, OFF);
            break;
            case(3):
                //green = analogRead(photoDiode);
                colorWrite(OFF, OFF, ON);
            break;
            case(4):
                //blue = analogRead(photoDiode);
                colorWrite(ON, ON, ON);
            break;
            case(5):
                //white = analogRead(photoDiode);
                colorWrite(OFF, OFF, OFF);
                readCount = 1;
                return getColor();
            break;
            default:
                colorWrite(ON, ON, ON);
            break;
        }
        readCount++;
    }
    return 0;
}
//------------------- Color Sensing function ends ------------------//
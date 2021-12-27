#include "colorDetect.h"
#include "AppGlobals.h"
#include "definitions.h"

uint8_t lastColor = 0; 
uint32_t colorCount = 0;

//uint16_t red = 0;         
//uint16_t green = 0;       
//uint16_t blue = 0;   
//uint16_t ambient = 0;
//uint16_t white = 0;


PDColor pdColor ;

//------------------- Initialize Color Sensor starts ------------------//
void PDInit(){

}
//------------------- Initialize Color Sensor ends ------------------//

//------------------- Color Sensing function starts ------------------//
void PDColorWrite (uint8_t red, uint8_t green, uint8_t blue){
    red ?   pd_red_Clear()  : pd_red_Set();
    blue ?  pd_blue_Clear() : pd_blue_Set() ;
    green ? pd_green_Clear() : pd_green_Set() ;
}

uint8_t generateColor(){
    pdColor.red = pdColor.ambient > pdColor.red ? 0 : (pdColor.red - pdColor.ambient);
    pdColor.green = pdColor.ambient > pdColor.green ? 0 : (pdColor.green - pdColor.ambient);
    pdColor.blue = pdColor.ambient > pdColor.blue ? 0 : (pdColor.blue - pdColor.ambient);
    pdColor.white = pdColor.ambient > pdColor.white ? 0 : (pdColor.white - pdColor.ambient);
    pdColor.red = (pdColor.red*100)/pdColor.white;
    pdColor.green = (pdColor.green*100)/pdColor.white;
    pdColor.blue = (pdColor.blue*100)/pdColor.white;
    if(pdColor.white < 200)
    {
        return NO_COLOR;
    }
    else if(pdColor.green < pdColor.red && 2*pdColor.blue < pdColor.red )
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
    else if(2*pdColor.blue < pdColor.red && 3*pdColor.blue < pdColor.green && pdColor.white > 400)
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
    else if(pdColor.green > 3*pdColor.red && 2*pdColor.blue < pdColor.green)
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
    else if(pdColor.blue > 2*pdColor.red && 4*pdColor.blue > 2*pdColor.green)
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
    else if(2*pdColor.blue > pdColor.red && pdColor.blue < 2*pdColor.red && pdColor.green < 4*pdColor.red && pdColor.white > 600)
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

uint8_t PDColourRead(){
    static readCount = 0 ;
    static pdLastRead = 0;
    if(global_photoDiodeLastReadInterval >= PHOTO_DIODE_INTERVAL_FROM_LAST_READ_10MS){
        readCount = 0;
    }
    if(global_photoDiodeLastReadInterval != pdLastRead){
        pdLastRead = global_photoDiodeLastReadInterval;
        switch(readCount){
            case(0):
                PDColorWrite(OFF, OFF, OFF);
                break;
            case(1):
                pdColor.ambient = adcValue ;
                PDColorWrite(ON, OFF, OFF);
                break;
            case(2):
                pdColor.red = adcValue;
                PDColorWrite(OFF, ON, OFF);
                break;
            case(3):
                pdColor.green = adcValue;
                PDColorWrite(OFF, OFF, ON);
                break;
            case(4):
                pdColor.blue = adcValue;
                PDColorWrite(ON, ON, ON);
                break;
            case(5):
                pdColor.white = adcValue;
                PDColorWrite(OFF, OFF, OFF);
                break;
            default:
                PDColorWrite(OFF, OFF, OFF);
            break;
        }
        if(readCount == 5){
            global_photoDiodeLastReadInterval = 0 ;
            readCount = 0;
            return generateColor();
        }
        readCount++;
    }
    return 0;
}
//------------------- Color Sensing function ends ------------------//
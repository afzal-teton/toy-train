/* 
 * File:   AppGlobals.h
 * Author: afzal
 *
 * Created on December 22, 2021, 12:13 PM
 */

#ifndef APPGLOBALS_H
#define	APPGLOBALS_H

#include<stdint.h>

#define ON               1
#define OFF              0

#define RED              1
#define GREEN            2
#define BLUE             3
#define WHITE            4
#define YELLOW           5
#define NO_COLOR         6

#define HALL_SENSOR_IDLE_TIME                               200
#define HALL_SENSOR_INERTIA                                 200
#define PHOTO_DIODE_INTERVAL_FROM_LAST_READ_10MS            10000

#define CAR_WASH_WAIT_TIME                                  5000





extern volatile uint16_t adcValue ;   
extern volatile uint8_t global_hallReasultWaitCounter ;
extern volatile uint8_t global_hallSensorInertiaCounter ;
extern volatile uint16_t global_photoDiodeLastReadInterval ;
extern volatile uint16_t global_carWashWaitTime ;
    
   
    



#endif	/* APPGLOBALS_H */


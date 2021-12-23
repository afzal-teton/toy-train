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


#define HALL_SENSOR_IDLE_TIME    200
#define HALL_SENSOR_INERTIA      200

    
extern volatile uint8_t global_hallReasultWaitCounter ;
extern volatile uint8_t global_hallSensorInertiaCounter ;
    
void testFunc();    
    



#endif	/* APPGLOBALS_H */


/* 
 * File:   motorControl.h
 * Author: afzal
 *
 * Created on December 22, 2021, 12:48 PM
 */

#ifndef MOTORCONTROL_H
#define	MOTORCONTROL_H

#include<stdint.h>

#define FORWARD 1
#define REVERSE 0



#define max_speed 255
#define mid_speed 200
#define min_speed 150


typedef struct MotorParams{
    uint8_t fowrard_pin ;
    uint8_t reverse_pin;
    uint8_t direction_flag;
    uint8_t speed_flag;
} Motor;


extern Motor motor ;

extern uint8_t getMotorDirection();
extern uint8_t getMotorSpeed();


extern void motorInit(uint8_t forward, uint8_t beverse);
extern void motorDirection(int8_t direction);
extern void motorSpeed (uint8_t speed);
extern void motorControl(int8_t direction, uint8_t speed);
extern void accelerateMotor();
extern void decelerateMotor();
extern void reverseMotor();
extern void stopMotor();



#endif	/* MOTORCONTROL_H */


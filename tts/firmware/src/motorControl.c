#include "motorControl.h"

Motor motor ;


void motorInit(uint8_t forward, uint8_t beverse){
//  motor.fowrard_pin = direction; 
//  motor.reverse_pin = speed;
//  motor.direction_flag = FORWARD;
//  motor.speed_flag = 0;
}

void motorDirection(int8_t direction){
  switch (direction){
    case FORWARD : 
      motorControl(FORWARD, motor.speed_flag);
    break;
    case REVERSE : 
      motorControl(REVERSE, motor.speed_flag);
    break;
    default : 
      stopMotor();
    break; 
  }
}

void motorSpeed (uint8_t speed){
  motorControl(motor.direction_flag, speed);
}

void motorControl(int8_t direction, uint8_t speed){
  motor.direction_flag = direction;
  motor.speed_flag = speed;
  if (direction == FORWARD){
  
    //direction pin will be ground and speed pin will be pwm.  
  }
  else if(direction == REVERSE){
    //direction pin will be ground and speed pin will be pwm. 
  } 
}



void accelerateMotor(){
  if (motor.direction_flag == FORWARD){
    switch (motor.speed_flag){
      case (mid_speed):
        control(motor.direction_flag, max_speed);
      break;
      case(min_speed):
        control(motor.direction_flag, mid_speed);
      break;
      case(0):
        control(motor.direction_flag, min_speed);
      break;
        default:
      break;
    }
  }
  else{
    control(FORWARD, min_speed);
  }
}

void decelerateMotor(){
  switch (motor.speed_flag){
    case (max_speed):
      motorControl(motor.direction_flag, mid_speed);
    break;
    case(mid_speed):
      motorControl(motor.direction_flag, min_speed);
    break;
    case(min_speed):
      stopMotor();
    break;
    default:
    break;
  }
}

void reverseMotor(){
  motorControl(REVERSE, min_speed);
}

void stopMotor(){
  motorControl(FORWARD, 0);
}

uint8_t getMotorDirection(){
  return motor.direction_flag;
}

uint8_t getMotorSpeed(){
  return motor.speed_flag;
}
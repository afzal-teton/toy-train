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
    case MOTOR_FORWARD : 
      motorControl(MOTOR_FORWARD, motor.speed_flag);
    break;
    case MOTOR_REVERSE : 
      motorControl(MOTOR_REVERSE, motor.speed_flag);
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
  if (direction == MOTOR_FORWARD){
  
    //direction pin will be ground and speed pin will be pwm.  
  }
  else if(direction == MOTOR_REVERSE){
    //direction pin will be ground and speed pin will be pwm. 
  } 
}



void accelerateMotor(){
  if (motor.direction_flag == MOTOR_FORWARD){
    switch (motor.speed_flag){
      case (MOTOR_SPEED_MID):
        control(motor.direction_flag, MOTOR_SPEED_MAX);
      break;
      case(MOTOR_SPEED_MIN):
        control(motor.direction_flag, MOTOR_SPEED_MID);
      break;
      case(0):
        control(motor.direction_flag, MOTOR_SPEED_MIN);
      break;
        default:
      break;
    }
  }
  else{
    control(MOTOR_FORWARD, MOTOR_SPEED_MIN);
  }
}

void decelerateMotor(){
  switch (motor.speed_flag){
    case (MOTOR_SPEED_MAX):
      motorControl(motor.direction_flag, MOTOR_SPEED_MID);
    break;
    case(MOTOR_SPEED_MID):
      motorControl(motor.direction_flag, MOTOR_SPEED_MIN);
    break;
    case(MOTOR_SPEED_MIN):
      stopMotor();
    break;
    default:
    break;
  }
}

void reverseMotor(){
  motorControl(MOTOR_REVERSE, MOTOR_SPEED_MIN);
}

void stopMotor(){
  motorControl(MOTOR_FORWARD, 0);
}

uint8_t getMotorDirection(){
  return motor.direction_flag;
}

uint8_t getMotorSpeed(){
  return motor.speed_flag;
}
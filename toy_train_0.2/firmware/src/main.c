/*******************************************************************************
  Main Source File

  Company:
    Microchip Technology Inc.

  File Name:
    main.c

  Summary:
    This file contains the "main" function for a project.

  Description:
    This file contains the "main" function for a project.  The
    "main" function calls the "SYS_Initialize" function to initialize the state
    machines of all modules in the system
 *******************************************************************************/

// *****************************************************************************
// *****************************************************************************
// Section: Included Files
// *****************************************************************************
// *****************************************************************************

#include <stddef.h>                     // Defines NULL
#include <stdbool.h>                    // Defines true
#include <stdlib.h>                     // Defines EXIT_FAILURE
#include <string.h>
#include "definitions.h"                // SYS function prototypes
#include "AppGlobals.h"
#include "hallSensor.h"
#include "motorControl.h"
#include "string.h"
#include "rgbLed.h"
#include "colorDetect.h"
#include "bluetooth.h"
#include "audio.h"

// *****************************************************************************
// *****************************************************************************
// Section: Main Entry Point
// *****************************************************************************
// *****************************************************************************



void systickCallback(uintptr_t context)
{
    if(global_hallReasultWaitCounter > 0){
        global_hallReasultWaitCounter--;
    }
    if(global_hallSensorInertiaCounter > 0){
        global_hallSensorInertiaCounter--;
    }
	if(global_photoDiodeLastReadInterval < 25000){
        global_photoDiodeLastReadInterval++;
    }
    if(global_carWashWaitTime > 0 ){
        global_carWashWaitTime--;
    }
    if(global_defaultMusicTimeout < DEFAULT_MUSIC_TIMEOUT_MS ){
        global_defaultMusicTimeout++ ;
    }
}
void adcCallBack(uintptr_t context){
    adcValue = ADC_ConversionResultGet();
}


int main ( void ){
    uint8_t hallSensorRes = 0 ;
    uint8_t PDColorRes = 0;
    uint8_t PDNoColorCount = 0 ;
    uint8_t PDLastColor = 0 ;
    
    /* Initialize all modules */
    SYS_Initialize ( NULL );
    SYSTICK_TimerCallbackSet(&systickCallback, (uintptr_t) NULL);
    SYSTICK_TimerStart();
    
    
    ADC_CallbackRegister(&adcCallBack, 0);
    ADC_Enable();
    ADC_ChannelSelect(ADC_POSINPUT_PIN2, ADC_NEGINPUT_GND);
    
    
    initRGBPeripheral();
    initMotorPeripheral();
    initBluetoothSerial();
    initAudioPeripheral();
    
    while ( true ) {
       //SYSTICK_DelayMs(1000);
       switch(checkBlutoothCommand()){
            SERCOM0_USART_Write("ble\n", 4);
            case BL_COMMMAND_MOTOR_TASK:
                switch(bluetooth.motorControl){
                    case(0):
                        stopMotor();
                        setHallSensorReadDelay();
                        break;
                    case(1):
                        accelerateMotor();
                        setHallNoReasultInterval();
                        setHallSensorReadDelay();
                        break;
                    case(2):
                        decelerateMotor();
                        setHallSensorReadDelay();
                        break;
                    case(3):
                        reverseMotor();
                        setHallNoReasultInterval();
                        setHallSensorReadDelay();
                        break;
                    default:
                        break;
                }
                break;
            case BL_COMMMAND_SOUND_TASK:
                playAudio(bluetooth.music);
                break;
            case BL_COMMMAND_LED_TASK:
                RGBcolorWrite(bluetooth.red, bluetooth.green, bluetooth.blue);
                break;
            default:
                break;
        
        }
       
        hallSensorRes = measureHallSensorValue();
        switch(hallSensorRes){
            case(HALL_SENSE_FORWRD):
                if(hallSensor.previousStatus != HALL_SENSE_FORWRD){
                    hallSensor.previousStatus = HALL_SENSE_FORWRD;
                }
                else if(motor.speed_flag == MOTOR_SPEED_NULL){
                    motorControl(MOTOR_FORWARD, MOTOR_SPEED_MIN);        
                }
                else if(motor.direction_flag == MOTOR_REVERSE){
                    stopMotor();  
                }
                break;
            case(HALL_SENSE_REVERSE):
                if(hallSensor.previousStatus != HALL_SENSE_REVERSE){
                    hallSensor.previousStatus = HALL_SENSE_REVERSE;
                }
                else if(motor.speed_flag == MOTOR_SPEED_NULL){
                    motorControl(MOTOR_REVERSE,MOTOR_SPEED_MIN);       
                }
                else if(motor.direction_flag == MOTOR_FORWARD){
                    stopMotor();    
                }
                break;
            case(HALL_SENSE_STOP):
                if(motor.speed_flag != MOTOR_SPEED_NULL){
                    stopMotor();                                   
                }
                break;
            default:
                break;
        }
      
        PDColorRes = PDColourRead();
        if(PDColorRes){
            if(PDColorRes == NO_COLOR){
                if(PDNoColorCount++ > 50){
                    PDLastColor = 0;
                    PDColorRes = 0;
                }
            }
            else{
                PDNoColorCount = 0;
                if(PDLastColor != PDColorRes){
                    RGBsetColor(PDColorRes);
                    PDLastColor = PDColorRes;
                    global_carWashWaitTime = CAR_WASH_WAIT_TIME ;
                    switch(PDColorRes){
                        case RED:
                            stopMotor();
                            setHallSensorReadDelay();
                            playAudio(MUSIC_HORN);
                            break;
                        case GREEN:
                            accelerateMotor();
                            setHallNoReasultInterval();
                            setHallSensorReadDelay();
                            playAudio(MUSIC_SAMPLE_ONE);
                            break;
                        case BLUE:
                            reverseMotor();
                            setHallNoReasultInterval();
                            setHallSensorReadDelay();
                            playAudio(MUSIC_BELL);
                            global_defaultMusicTimeout = 0 ;
                            break;
                        case WHITE:
                            stopMotor();
                            setHallSensorReadDelay();
                            playAudio(MUSIC_CAR_WASH);
                            break;
                        case YELLOW:
                            decelerateMotor();
                            setHallSensorReadDelay();
                            playAudio(MUSIC_SAMPLE_TWO);
                            break;
                        default:
                            break;
                    }
                }
                else if(PDColorRes == WHITE && global_carWashWaitTime==0){                   
                    accelerateMotor();
                    setHallNoReasultInterval();
                    setHallSensorReadDelay();
                    global_carWashWaitTime = CAR_WASH_WAIT_TIME;
                }
            }
            if(PDLastColor == BLUE  &&  getMotorDirection() == MOTOR_REVERSE){
                PDNoColorCount = 0;
                if(global_defaultMusicTimeout >= DEFAULT_MUSIC_TIMEOUT_MS){
                    global_defaultMusicTimeout = 0 ;
                    playAudio(MUSIC_BELL);
                }
            }
        } 
    }
    return ( EXIT_FAILURE );
}


/*******************************************************************************
 End of File
*/


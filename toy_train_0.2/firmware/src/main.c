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
#include "definitions.h"                // SYS function prototypes
#include "AppGlobals.h"
#include "hallSensor.h"
#include "motorControl.h"
#include "string.h"
#include "rgbLed.h"
#include "colorDetect.h"
#include "bluetooth.h"
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
}
void adcCallBack(uintptr_t context){
    adcValue = ADC_ConversionResultGet();
}

uint8_t ble_dbg_str[8]="kakbkc\r\n";
uint8_t ble_read_buffer[10];
uint8_t dbg_adc_str_value[6];
uint8_t dbgCounter = 0;
uint8_t dbg_str_red[6]; 
uint8_t dbg_str_green[6]; 
uint8_t dbg_str_blue[6]; 
uint8_t dbg_str_white[6]; 
uint8_t dbg_str_ambient[6]; 
volatile uint8_t dbg_buffer[22];

int main ( void ){
    uint8_t hallSensorRes = 0 ;
    uint8_t  PDColorRes = 0;
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
    
    while ( true ) {
        switch(checkBlutoothCommand()){
            case BL_COMMMAND_MOTOR_TASK:
                switch(bluetooth.task){
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
                //TODO :: SOUND TASK ... audio.setAudio(bluetooth.getTask());
                break;
            case BL_COMMMAND_LED_TASK:
                RGBcolorWrite(bluetooth.red, bluetooth.green, bluetooth.blue);
                break;
            default:
                break;
        
        }
        
//        SYSTICK_DelayMs(1000);
//        
//        
    



//        memset(dbg_adc_str_value, 0, sizeof(dbg_adc_str_value));
//        itoa(adc_value, dbg_adc_str_value, 10);
////        SERCOM0_USART_Write("adc : ", 6);
//        strcat(dbg_adc_str_value, "\n");
//        SERCOM0_USART_Write(dbg_adc_str_value, sizeof(dbg_adc_str_value));

        
        hallSensorRes = measureHallSensorValue();
        switch(hallSensorRes){
            case(HALL_SENSE_FORWRD):
               // SERCOM0_USART_Write("hall test res : 1 \n", 19);
                if(hallSensor.previousStatus != HALL_SENSE_FORWRD){
                    hallSensor.previousStatus = HALL_SENSE_FORWRD;
                }
                else if(motor.speed_flag == MOTOR_SPEED_NULL){
                    motorControl(MOTOR_FORWARD, MOTOR_SPEED_MIN);        //SERCOM0_USART_Write("forward : 1 \n", 13);
                }
                else if(motor.direction_flag == MOTOR_REVERSE){
                    stopMotor();  
                }
                break;
            case(HALL_SENSE_REVERSE):
               // SERCOM0_USART_Write("hall test res : 2 \n", 19);
                if(hallSensor.previousStatus != HALL_SENSE_REVERSE){
                    hallSensor.previousStatus = HALL_SENSE_REVERSE;
                }
                else if(motor.speed_flag == MOTOR_SPEED_NULL){
                    motorControl(MOTOR_REVERSE,MOTOR_SPEED_MIN);       //SERCOM0_USART_Write("reverse : 1 \n", 13);
                }
                else if(motor.direction_flag == MOTOR_FORWARD){
                    stopMotor();    
                }
                break;
            case(HALL_SENSE_STOP):
               // SERCOM0_USART_Write("hall test res : 3 \n", 19);
                if(motor.speed_flag != MOTOR_SPEED_NULL){
                    stopMotor();                                   // SERCOM0_USART_Write("stop : 1 \n", 10);
                }
                break;
            default:
                //SERCOM0_USART_Write("hall test res : -1 \n", 19);
                break;
        }
       
 //       PDColorRes = PDColourRead();
//        if(PDColorRes){
            //RGBsetColor(PDColorRes);
//             SYSTICK_DelayMs(100);
//            memset(dbg_buffer, 0, sizeof(dbg_buffer));
//            memset(dbg_str_red, '\0', sizeof(dbg_str_red));
//            memset(dbg_str_green, 0, sizeof(dbg_str_green));
//            memset(dbg_str_blue, 0, sizeof(dbg_str_blue));
//            memset(dbg_str_white, 0, sizeof(dbg_str_white));
//            memset(dbg_str_ambient, 0, sizeof(dbg_str_ambient));
//                     
//            itoa(pdColor.red,dbg_str_red,10);
//            itoa(pdColor.green,dbg_str_green,10);
//            itoa(pdColor.blue,dbg_str_blue,10);
//            itoa(pdColor.white,dbg_str_white,10);
//            itoa(pdColor.ambient,dbg_str_ambient,10);
//            
//            
//            strcpy(dbg_buffer, dbg_str_red);     strcat(dbg_buffer,", ");   
//            strcat(dbg_buffer, dbg_str_green);   strcat(dbg_buffer,", "); 
//            strcat(dbg_buffer, dbg_str_blue);    strcat(dbg_buffer,", "); 
//            strcat(dbg_buffer, dbg_str_white);   strcat(dbg_buffer,", "); 
//            strcat(dbg_buffer, dbg_str_ambient); strcat(dbg_buffer,"\n"); 
//            SERCOM0_USART_Write(dbg_buffer, sizeof(dbg_buffer)); 
//             SYSTICK_DelayMs(100);
 //       }
       
    
     
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
                            //TODO : AUDIO TASK .... audio.setAudio(horn);
                            break;
                        case GREEN:
                            accelerateMotor();
                            setHallNoReasultInterval();
                            setHallSensorReadDelay();
                            // TODO : audio.setAudio(music_1);
                            break;
                        case BLUE:
                            reverseMotor();
                            setHallNoReasultInterval();
                            setHallSensorReadDelay();
                            //TODO : audio.setAudio(bell);
                            break;
                        case WHITE:
                            stopMotor();
                            setHallSensorReadDelay();
                            //TODO :: audio.setAudio(car_wash);
                            break;
                        case YELLOW:
                            decelerateMotor();
                            setHallSensorReadDelay();
                            //TODO :: audio.setAudio(music_2);
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
//                if(millis() - color_time > 1000){
//                    audio.setAudio(bell);
//                    color_time = millis();
//                }
                //TODO :: RING THE BELL AT 1S INTERVAL .. 
            }
        }     
    }

    /* Execution should not come here during normal operation */

    return ( EXIT_FAILURE );
}


/*******************************************************************************
 End of File
*/


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
#include <string.h>
#include "AppGlobals.h"
#include "hallSensor.h"
#include "motorControl.h"



#define ADC_VREF                (1650)   //1650 mV (1.65V)
#define DAC_COUNT_INCREMENT     (31U)    // equivalent to 0.1V (0.1 / (3.3 / ((2^10) - 1))) 
#define DAC_COUNT_MAX           (511)

// *****************************************************************************
// *****************************************************************************
// Section: Main Entry Point
// *****************************************************************************
// *****************************************************************************


volatile uint16_t adcValue ;
volatile uint16_t flag_led = 0;
void timeout_handler(uintptr_t context){
    if(global_hallReasultWaitCounter > 0){
        global_hallReasultWaitCounter--;
    }
    if(global_hallSensorInertiaCounter > 0){
        global_hallSensorInertiaCounter--;
    }
}
void APP_WriteCallback(uintptr_t context){
   
}

void APP_ReadCallback(uintptr_t context){
  
}
void APP_ADCCallback(uintptr_t context){

    adcValue = ADC_ConversionResultGet();
}

char ble_str[]="hello ... \r\n";
char debug_str[]="test string ... \r\n";
char adc_str[]="v:::";


uint16_t adc_count;
uint16_t input_voltage;

char adc_str_value[6];

int main ( void )
{
    testFunc();
    
    /* Initialize all modules */
    SYS_Initialize ( NULL );
    SYSTICK_TimerCallbackSet(&timeout_handler, (uintptr_t) NULL);
    SYSTICK_TimerRestart();
    
    //SERCOM0_USART_WriteCallbackRegister(APP_WriteCallback, 0);
    //SERCOM0_USART_ReadCallbackRegister(APP_ReadCallback, 0);
 
    ADC_CallbackRegister(APP_ADCCallback, 0);
    ADC_Enable();
    while ( true )
    {
        /* Maintain state machines of all polled MPLAB Harmony modules. */
       // SYS_Tasks ( );
        LED_GREEN_Toggle();
        SYSTICK_DelayMs(500);
    hallSensor.directionFlag = hall_dir_sense_Get();
    hallSensor.speedFlag  = hall_speed_sense_Get()  ;
    
    if (hall_dir_sense_Get() == 0) SERCOM2_USART_Write("md: 0 \n", 6);
    else   SERCOM2_USART_Write("md: 1 \n", 6);
    
    
    if(hall_speed_sense_Get() == 0)   SERCOM2_USART_Write("ms: 0 \n", 6);
    else   SERCOM2_USART_Write("ms: 1 \n", 6);
        
//        RED_LED_Toggle()  ;
//        SYSTICK_DelayMs(300);
//        LED_GREEN_Toggle() ;
//        SYSTICK_DelayMs(300);
//        BLIUE_LED_Toggle();
        
        
        //SERCOM0_USART_Write(&ble_str[0], sizeof(ble_str));
        //SERCOM2_USART_Write(&debug_str[0], sizeof(debug_str));

       // ADC_ChannelSelect(ADC_POSINPUT_PIN2, ADC_NEGINPUT_GND);
        //ADC_ConversionStart();
        // Wait till ADC conversion result is available 
        //while(!ADC_ConversionStatusGet());
         //Read the ADC result 
        //adc_count = ADC_ConversionResultGet();
       // input_voltage = adc_count ;// * ADC_VREF / 1023;
        
//        
//        if(systick_counter_t >= 1000){
//            systick_counter_t = 0;
//            //RED_LED_Toggle()  ;
//            //SYSTICK_DelayMs(100);
//            LED_GREEN_Toggle() ;
//            //SYSTICK_DelayMs(100);
//            //BLIUE_LED_Toggle();
//        }

        //memset(adc_str_value, 0, sizeof(adc_str_value));
        //itoa(adcValue,adc_str_value,10);
        // snprintf(adc_str, 50, (long)input_voltage);
        //SERCOM0_USART_Write("adc : ", 6);
        //strcat(adc_str_value, "\n");
        //SERCOM2_USART_Write(&adc_str_value[0], sizeof(adc_str_value));
        //printf("ADC Count = 0x%x, ADC Input Voltage = %d.%03d V \r", adc_count, (int)(input_voltage/1000), (int)(input_voltage%1000));
   
        
        
        //SERCOM2_USART_Write(debug_str, sizeof(debug_str));
        
        
       switch(measureHallSensorValue()){
            case(1):
                SERCOM2_USART_Write("hall test res : 1 \n", 19);
                if(hallSensor.lastRead != 1){
                    hallSensor.lastRead = 1;
                }
                else if(motor.speed_flag == 0){
                    motorControl(FORWARD,mid_speed);
                }
                else if(motor.direction_flag == REVERSE){
                    stopMotor();
                }
                break;
            case(2):
                SERCOM2_USART_Write("hall test res : 2 \n", 19);
                if(hallSensor.lastRead != 2){
                    hallSensor.lastRead = 2;
                }
                else if(motor.speed_flag == 0){
                    motorControl(REVERSE,mid_speed);
                }
                else if(motor.direction_flag == FORWARD)
                {
                    stopMotor();
                }
                break;
            case(3):
                SERCOM2_USART_Write("hall test res : 3 \n", 19);
                if(motor.speed_flag != 0){
                    stopMotor();
                }
                break;
            default:
                SERCOM2_USART_Write("hall test res : -1 \n", 19);
                break;
        }

    }

    /* Execution should not come here during normal operation */

    return ( EXIT_FAILURE );
}


/*******************************************************************************
 End of File
*/


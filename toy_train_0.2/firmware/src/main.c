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
	
}

void APP_ADCCallback(uintptr_t context){

   // adcValue = ADC_ConversionResultGet();
}






int main ( void )
{
    /* Initialize all modules */
    SYS_Initialize ( NULL );
    SYSTICK_TimerCallbackSet(&systickCallback, (uintptr_t) NULL);
    SYSTICK_TimerStart();
    while ( true )
    {
        //SYSTICK_DelayMs(500);
        switch(measureHallSensorValue()){
            case(HALL_SENSE_FORWRD):
                //SERCOM0_USART_Write("hall test res : 1 \n", 19);
                if(hallSensor.previousStatus != HALL_SENSE_FORWRD){
                    hallSensor.previousStatus = HALL_SENSE_FORWRD;
                }
                else if(motor.speed_flag == MOTOR_SPEED_NULL){
                    motorControl(MOTOR_FORWARD, MOTOR_SPEED_MIN);       SERCOM0_USART_Write("forward : 1 \n", 13);
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
                    motorControl(MOTOR_REVERSE,MOTOR_SPEED_MIN);       SERCOM0_USART_Write("reverse : 1 \n", 13);
                }
                else if(motor.direction_flag == MOTOR_FORWARD)
                {
                    stopMotor();
                }
                break;
            case(HALL_SENSE_STOP):
                //SERCOM0_USART_Write("hall test res : 3 \n", 19);
                if(motor.speed_flag != MOTOR_SPEED_NULL){
                    stopMotor();                                       SERCOM0_USART_Write("stop : 1 \n", 10);
                }
                break;
            default:
                //SERCOM0_USART_Write("hall test res : -1 \n", 19);
                break;
        }
    }

    /* Execution should not come here during normal operation */

    return ( EXIT_FAILURE );
}


/*******************************************************************************
 End of File
*/


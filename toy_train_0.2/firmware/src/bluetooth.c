#include "bluetooth.h"
#include "definitions.h"

Bluetooth bluetooth;


volatile bool writeStatus = false;
volatile bool bluetoohSerialFlag = false;
volatile bool errorStatus = false;
uint8_t blutoothCommand[BLUETOOTH_COMMAND_LENGTH];
uint8_t blutoothSerialData[BLUETOOTH_COMMAND_LENGTH];


void sercom2WriteCallBack(uintptr_t context){
    writeStatus = true;
}

void sercom2ReadCallBack(uintptr_t context){
    if(SERCOM2_USART_ErrorGet() != USART_ERROR_NONE){
        errorStatus = true;
    }
    else{
        bluetoohSerialFlag = true;
    }
}
void initBluetoothSerial(){
    SERCOM2_USART_WriteCallbackRegister(sercom2WriteCallBack, 0);
    SERCOM2_USART_ReadCallbackRegister(sercom2ReadCallBack, 0);
    SERCOM2_USART_Read(blutoothSerialData, sizeof(blutoothSerialData));
}

uint8_t convertToHex(char in){
  if(in >= '0' && in <= '9'){
    return in - '0';
  }
  else if(in >= 'a' && in <= 'f'){
    return 10 + in - 'a';
  }
  else return 0;
}
uint8_t checkBlutoothCommand(){
  if (bluetoohSerialFlag){ 
      bluetoohSerialFlag = false;
      SERCOM0_USART_Write(blutoothSerialData, 10);
      memcpy(blutoothCommand, blutoothSerialData, BLUETOOTH_COMMAND_LENGTH);
      //strcpy(blutoothCommand, blutoothSerialData);
      //SERCOM0_USART_Write("bl1\n", 4);
      memset(blutoothSerialData, 0, sizeof(blutoothSerialData));
     // SERCOM0_USART_Write("bl2\n", 4);
      SERCOM2_USART_Read(blutoothSerialData, sizeof(blutoothSerialData));
      //SERCOM0_USART_Write("bl3\n", 4);
      switch(blutoothCommand[1]){
        case(BL_COMMMAND_MOTOR_TASK):
            bluetooth.motorControl =  convertToHex(blutoothCommand[7]);
            return BL_COMMMAND_MOTOR_TASK;
            break;
        case(BL_COMMMAND_SOUND_TASK):
            //SERCOM0_USART_Write("d1\n", 3);
            bluetooth.music =  convertToHex(blutoothCommand[7]);
            //SERCOM0_USART_Write("d2", 2);
            return BL_COMMMAND_SOUND_TASK;
            break;
        case(BL_COMMMAND_LED_TASK):
            bluetooth.red = 16*convertToHex(blutoothCommand[2])+convertToHex(blutoothCommand[3]);
            bluetooth.green = 16*convertToHex(blutoothCommand[4])+convertToHex(blutoothCommand[5]);
            bluetooth.blue = 16*convertToHex(blutoothCommand[6])+convertToHex(blutoothCommand[7]);
            return BL_COMMMAND_LED_TASK;
            break;
        default:
            return 0;
            break;
      }
   }
   return 0; 
}


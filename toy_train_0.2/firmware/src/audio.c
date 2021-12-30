#include "audio.h"
#include "definitions.h"


//extern const  uint8_t TpowerOnMusic[] ;

volatile AudioTrack audioTrack;


uint32_t powerOnMusicFoileSize = 0;
uint8_t *musicFileAray[10];
uint32_t musicSizeArray[10];

void TC4DacCallBack (TC_TIMER_STATUS status, uintptr_t context){ 
   // pd_green_Toggle() ;
    if(audioTrack.trackCounter <= audioTrack.fileLength ){
          DAC_DataWrite (*audioTrack.audioFile++ *4);
          audioTrack.trackCounter++ ;
    }  
}


void initAudioPeripheral(){
   TC4_TimerCallbackRegister(TC4DacCallBack, (uintptr_t)NULL);
   TC4_TimerStart();
   
   musicFileAray[MUSIC_NULL] =  __nullMusic ;
   musicFileAray[MUSIC_POWER_ON] =  __powerOnMusic ;
   musicFileAray[MUSIC_POWER_OFF] =  __powerOffMusic ;
   musicFileAray[MUSIC_BLE_ON] =  __bleOnMusic ;
   musicFileAray[MUSIC_BLE_OFF] =  __bleOffMusic ;
   musicFileAray[MUSIC_HORN] =  __hornMusic ;
   musicFileAray[MUSIC_SAMPLE_ONE] =  __sampleOneMusic ;
   musicFileAray[MUSIC_SAMPLE_TWO] =  __sampleTwoMusic ;
   musicFileAray[MUSIC_BELL] =  __bellMusic ;
   musicFileAray[MUSIC_CAR_WASH] =  __carWashMusic ;

   musicSizeArray[MUSIC_NULL] = 1;
   musicSizeArray[MUSIC_POWER_ON] = sizeOfPowerOnMusic();
   musicSizeArray[MUSIC_POWER_OFF] = sizeOfPowerOffMusic();
   musicSizeArray[MUSIC_BLE_ON] = sizeOfBleOnMusic();
   musicSizeArray[MUSIC_BLE_OFF] = sizeOfBleOffMusic();
   musicSizeArray[MUSIC_HORN] = sizeOfHornMusic();
   musicSizeArray[MUSIC_SAMPLE_ONE] = sizeOfSampleOneMusic();
   musicSizeArray[MUSIC_SAMPLE_TWO] = sizeOfSampleTwoMusic();
   musicSizeArray[MUSIC_BELL] = sizeOfBellMusic();
   musicSizeArray[MUSIC_CAR_WASH] = sizeOfCarWashMusic();
   
   playAudio(MUSIC_POWER_ON);
}


void playAudio(uint8_t audio){
    if(audio >= MUSIC_LIMIT)   return ;
    audioTrack.audioFile = musicFileAray[audio];
    audioTrack.fileLength =  musicSizeArray[audio];
    audioTrack.trackCounter = 0 ;
}

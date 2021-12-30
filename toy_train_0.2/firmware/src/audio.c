#include "audio.h"
#include "definitions.h"


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
   
   musicFileAray[MUSIC_NULL] =  powerOnMusic ;
   musicFileAray[MUSIC_POWER_ON] =  powerOnMusic ;
   musicFileAray[MUSIC_POWER_OFF] =  powerOnMusic ;
   musicFileAray[MUSIC_BLE_ON] =  powerOnMusic ;
   musicFileAray[MUSIC_BLE_OFF] =  powerOnMusic ;
   musicFileAray[MUSIC_HORN] =  powerOnMusic ;
   musicFileAray[MUSIC_ONE] =  powerOnMusic ;
   musicFileAray[MUSIC_TWO] =  powerOnMusic ;
   musicFileAray[MUSIC_BELL] =  powerOnMusic ;
   musicFileAray[MUSIC_CAR_WASH] =  powerOnMusic ;

   setMusicSize(musicSizeArray);
   
   playAudio(MUSIC_POWER_ON);
}


void playAudio(uint8_t audio){
    if(audio >= MUSIC_LIMIT )   return ;
    audioTrack.audioFile = musicFileAray[audio];
    audioTrack.fileLength = musicSizeArray[audio];
    audioTrack.trackCounter = 0 ;
}

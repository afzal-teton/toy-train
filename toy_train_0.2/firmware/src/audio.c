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
   
   musicFileAray[MUSIC_NULL] =  sample3 ;
   musicFileAray[MUSIC_POWER_ON] =  sample3 ;
   musicFileAray[MUSIC_POWER_OFF] =  sample3 ;
   musicFileAray[MUSIC_BLE_ON] =  sample3 ;
   musicFileAray[MUSIC_BLE_OFF] =  sample3 ;
   musicFileAray[MUSIC_HORN] =  sample3 ;
   musicFileAray[MUSIC_ONE] =  sample3 ;
   musicFileAray[MUSIC_TWO] =  sample3 ;
   musicFileAray[MUSIC_BELL] =  sample3 ;
   musicFileAray[MUSIC_CAR_WASH] =  sample3 ;

   setMusicSize(musicSizeArray);
   
   playAudio(MUSIC_POWER_ON);
}


void playAudio(uint8_t audio){
    if(audio >= MUSIC_LIMIT )   return ;
    audioTrack.audioFile = musicFileAray[audio];
    audioTrack.fileLength = musicSizeArray[audio];
    audioTrack.trackCounter = 0 ;
}

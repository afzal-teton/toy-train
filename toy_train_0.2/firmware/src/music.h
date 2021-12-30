/* 
 * File:   music.h
 * Author: afzal
 *
 * Created on December 29, 2021, 1:45 PM
 */

#ifndef MUSIC_H
#define	MUSIC_H

#include<stdint.h>
#include "AppGlobals.h"

extern const uint8_t powerOnMusic[]   ;
extern const unsigned char sample2[]  ;
extern const unsigned char sample3[]  ;
extern const unsigned char sample4[]  ;
extern const unsigned char sample5[]  ;
extern const unsigned char sample6[]  ;
extern const unsigned char sample7[]  ;
extern const unsigned char sample8[]  ;
extern const unsigned char sample9[]  ;


void setMusicSize(uint32_t musicArray[]);


#endif	/* MUSIC_H */


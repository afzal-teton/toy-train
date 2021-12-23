#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Include project Makefile
ifeq "${IGNORE_LOCAL}" "TRUE"
# do not include local makefile. User is passing all local related variables already
else
include Makefile
# Include makefile containing local settings
ifeq "$(wildcard nbproject/Makefile-local-ttrain-config.mk)" "nbproject/Makefile-local-ttrain-config.mk"
include nbproject/Makefile-local-ttrain-config.mk
endif
endif

# Environment
MKDIR=mkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=ttrain-config
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/rnd.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/rnd.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

ifeq ($(COMPARE_BUILD), true)
COMPARISON_BUILD=
else
COMPARISON_BUILD=
endif

ifdef SUB_IMAGE_ADDRESS

else
SUB_IMAGE_ADDRESS_COMMAND=
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=/home/afzal/work-zone/MPlab-x/projects/tts/firmware/src/colorDetect.c /home/afzal/work-zone/MPlab-x/projects/tts/firmware/src/AppGlobals.c /home/afzal/work-zone/MPlab-x/projects/tts/firmware/src/motorControl.c /home/afzal/work-zone/MPlab-x/projects/tts/firmware/src/hallSensor.c /home/afzal/work-zone/MPlab-x/projects/tts/firmware/src/rgbLed.c ../src/config/ttrain-config/peripheral/adc/plib_adc.c ../src/config/ttrain-config/peripheral/clock/plib_clock.c ../src/config/ttrain-config/peripheral/evsys/plib_evsys.c ../src/config/ttrain-config/peripheral/nvic/plib_nvic.c ../src/config/ttrain-config/peripheral/nvmctrl/plib_nvmctrl.c ../src/config/ttrain-config/peripheral/sercom/usart/plib_sercom0_usart.c ../src/config/ttrain-config/peripheral/sercom/usart/plib_sercom2_usart.c ../src/config/ttrain-config/peripheral/systick/plib_systick.c /home/afzal/work-zone/MPlab-x/gcc/gcc-config/gcc_monitor.c ../src/config/ttrain-config/initialization.c ../src/config/ttrain-config/interrupts.c ../src/config/ttrain-config/exceptions.c ../src/config/ttrain-config/libc_syscalls.c /home/afzal/work-zone/MPlab-x/gcc/gcc-config/startup_gcc.c ../src/main.c ../src/config/ttrain-config/peripheral/port/plib_port.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/653789008/colorDetect.o ${OBJECTDIR}/_ext/653789008/AppGlobals.o ${OBJECTDIR}/_ext/653789008/motorControl.o ${OBJECTDIR}/_ext/653789008/hallSensor.o ${OBJECTDIR}/_ext/653789008/rgbLed.o ${OBJECTDIR}/_ext/739996852/plib_adc.o ${OBJECTDIR}/_ext/1825496286/plib_clock.o ${OBJECTDIR}/_ext/1823346800/plib_evsys.o ${OBJECTDIR}/_ext/1465470798/plib_nvic.o ${OBJECTDIR}/_ext/498211420/plib_nvmctrl.o ${OBJECTDIR}/_ext/86676733/plib_sercom0_usart.o ${OBJECTDIR}/_ext/86676733/plib_sercom2_usart.o ${OBJECTDIR}/_ext/263736322/plib_systick.o ${OBJECTDIR}/_ext/1675061921/gcc_monitor.o ${OBJECTDIR}/_ext/707952184/initialization.o ${OBJECTDIR}/_ext/707952184/interrupts.o ${OBJECTDIR}/_ext/707952184/exceptions.o ${OBJECTDIR}/_ext/707952184/libc_syscalls.o ${OBJECTDIR}/_ext/1675061921/startup_gcc.o ${OBJECTDIR}/_ext/1360937237/main.o ${OBJECTDIR}/_ext/1465523949/plib_port.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/653789008/colorDetect.o.d ${OBJECTDIR}/_ext/653789008/AppGlobals.o.d ${OBJECTDIR}/_ext/653789008/motorControl.o.d ${OBJECTDIR}/_ext/653789008/hallSensor.o.d ${OBJECTDIR}/_ext/653789008/rgbLed.o.d ${OBJECTDIR}/_ext/739996852/plib_adc.o.d ${OBJECTDIR}/_ext/1825496286/plib_clock.o.d ${OBJECTDIR}/_ext/1823346800/plib_evsys.o.d ${OBJECTDIR}/_ext/1465470798/plib_nvic.o.d ${OBJECTDIR}/_ext/498211420/plib_nvmctrl.o.d ${OBJECTDIR}/_ext/86676733/plib_sercom0_usart.o.d ${OBJECTDIR}/_ext/86676733/plib_sercom2_usart.o.d ${OBJECTDIR}/_ext/263736322/plib_systick.o.d ${OBJECTDIR}/_ext/1675061921/gcc_monitor.o.d ${OBJECTDIR}/_ext/707952184/initialization.o.d ${OBJECTDIR}/_ext/707952184/interrupts.o.d ${OBJECTDIR}/_ext/707952184/exceptions.o.d ${OBJECTDIR}/_ext/707952184/libc_syscalls.o.d ${OBJECTDIR}/_ext/1675061921/startup_gcc.o.d ${OBJECTDIR}/_ext/1360937237/main.o.d ${OBJECTDIR}/_ext/1465523949/plib_port.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/653789008/colorDetect.o ${OBJECTDIR}/_ext/653789008/AppGlobals.o ${OBJECTDIR}/_ext/653789008/motorControl.o ${OBJECTDIR}/_ext/653789008/hallSensor.o ${OBJECTDIR}/_ext/653789008/rgbLed.o ${OBJECTDIR}/_ext/739996852/plib_adc.o ${OBJECTDIR}/_ext/1825496286/plib_clock.o ${OBJECTDIR}/_ext/1823346800/plib_evsys.o ${OBJECTDIR}/_ext/1465470798/plib_nvic.o ${OBJECTDIR}/_ext/498211420/plib_nvmctrl.o ${OBJECTDIR}/_ext/86676733/plib_sercom0_usart.o ${OBJECTDIR}/_ext/86676733/plib_sercom2_usart.o ${OBJECTDIR}/_ext/263736322/plib_systick.o ${OBJECTDIR}/_ext/1675061921/gcc_monitor.o ${OBJECTDIR}/_ext/707952184/initialization.o ${OBJECTDIR}/_ext/707952184/interrupts.o ${OBJECTDIR}/_ext/707952184/exceptions.o ${OBJECTDIR}/_ext/707952184/libc_syscalls.o ${OBJECTDIR}/_ext/1675061921/startup_gcc.o ${OBJECTDIR}/_ext/1360937237/main.o ${OBJECTDIR}/_ext/1465523949/plib_port.o

# Source Files
SOURCEFILES=/home/afzal/work-zone/MPlab-x/projects/tts/firmware/src/colorDetect.c /home/afzal/work-zone/MPlab-x/projects/tts/firmware/src/AppGlobals.c /home/afzal/work-zone/MPlab-x/projects/tts/firmware/src/motorControl.c /home/afzal/work-zone/MPlab-x/projects/tts/firmware/src/hallSensor.c /home/afzal/work-zone/MPlab-x/projects/tts/firmware/src/rgbLed.c ../src/config/ttrain-config/peripheral/adc/plib_adc.c ../src/config/ttrain-config/peripheral/clock/plib_clock.c ../src/config/ttrain-config/peripheral/evsys/plib_evsys.c ../src/config/ttrain-config/peripheral/nvic/plib_nvic.c ../src/config/ttrain-config/peripheral/nvmctrl/plib_nvmctrl.c ../src/config/ttrain-config/peripheral/sercom/usart/plib_sercom0_usart.c ../src/config/ttrain-config/peripheral/sercom/usart/plib_sercom2_usart.c ../src/config/ttrain-config/peripheral/systick/plib_systick.c /home/afzal/work-zone/MPlab-x/gcc/gcc-config/gcc_monitor.c ../src/config/ttrain-config/initialization.c ../src/config/ttrain-config/interrupts.c ../src/config/ttrain-config/exceptions.c ../src/config/ttrain-config/libc_syscalls.c /home/afzal/work-zone/MPlab-x/gcc/gcc-config/startup_gcc.c ../src/main.c ../src/config/ttrain-config/peripheral/port/plib_port.c

# Pack Options 
PACK_COMMON_OPTIONS=-I "${DFP_DIR}/samd21a/include"  -I "${CMSIS_DIR}/CMSIS/Core/Include"



CFLAGS=
ASFLAGS=
LDLIBSOPTIONS=

############# Tool locations ##########################################
# If you copy a project from one host to another, the path where the  #
# compiler is installed may be different.                             #
# If you open this project with MPLAB X in the new host, this         #
# makefile will be regenerated and the paths will be corrected.       #
#######################################################################
# fixDeps replaces a bunch of sed/cat/printf statements that slow down the build
FIXDEPS=fixDeps

.build-conf:  ${BUILD_SUBPROJECTS}
ifneq ($(INFORMATION_MESSAGE), )
	@echo $(INFORMATION_MESSAGE)
endif
	${MAKE}  -f nbproject/Makefile-ttrain-config.mk dist/${CND_CONF}/${IMAGE_TYPE}/rnd.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=SAMD21G18A
# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assembleWithPreprocess
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/653789008/colorDetect.o: /home/afzal/work-zone/MPlab-x/projects/tts/firmware/src/colorDetect.c  .generated_files/flags/ttrain-config/9e2eb4702a555e1e2972c8c003d8f31c86e3e28e .generated_files/flags/ttrain-config/14b2e9d9527be9c9891487a403792ce6b5304066
	@${MKDIR} "${OBJECTDIR}/_ext/653789008" 
	@${RM} ${OBJECTDIR}/_ext/653789008/colorDetect.o.d 
	@${RM} ${OBJECTDIR}/_ext/653789008/colorDetect.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus -g -D__DEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb ${PACK_COMMON_OPTIONS}  -Os -ffunction-sections -mlong-calls -I "../src/config/ttrain-config" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/653789008/colorDetect.o.d" -o ${OBJECTDIR}/_ext/653789008/colorDetect.o /home/afzal/work-zone/MPlab-x/projects/tts/firmware/src/colorDetect.c  -DXPRJ_ttrain-config=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/653789008/AppGlobals.o: /home/afzal/work-zone/MPlab-x/projects/tts/firmware/src/AppGlobals.c  .generated_files/flags/ttrain-config/1201a989f125b4e4b2d8346e26864982d627168 .generated_files/flags/ttrain-config/14b2e9d9527be9c9891487a403792ce6b5304066
	@${MKDIR} "${OBJECTDIR}/_ext/653789008" 
	@${RM} ${OBJECTDIR}/_ext/653789008/AppGlobals.o.d 
	@${RM} ${OBJECTDIR}/_ext/653789008/AppGlobals.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus -g -D__DEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb ${PACK_COMMON_OPTIONS}  -Os -ffunction-sections -mlong-calls -I "../src/config/ttrain-config" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/653789008/AppGlobals.o.d" -o ${OBJECTDIR}/_ext/653789008/AppGlobals.o /home/afzal/work-zone/MPlab-x/projects/tts/firmware/src/AppGlobals.c  -DXPRJ_ttrain-config=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/653789008/motorControl.o: /home/afzal/work-zone/MPlab-x/projects/tts/firmware/src/motorControl.c  .generated_files/flags/ttrain-config/2bc21f7e41671f9b231bca146d712f1d119931f7 .generated_files/flags/ttrain-config/14b2e9d9527be9c9891487a403792ce6b5304066
	@${MKDIR} "${OBJECTDIR}/_ext/653789008" 
	@${RM} ${OBJECTDIR}/_ext/653789008/motorControl.o.d 
	@${RM} ${OBJECTDIR}/_ext/653789008/motorControl.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus -g -D__DEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb ${PACK_COMMON_OPTIONS}  -Os -ffunction-sections -mlong-calls -I "../src/config/ttrain-config" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/653789008/motorControl.o.d" -o ${OBJECTDIR}/_ext/653789008/motorControl.o /home/afzal/work-zone/MPlab-x/projects/tts/firmware/src/motorControl.c  -DXPRJ_ttrain-config=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/653789008/hallSensor.o: /home/afzal/work-zone/MPlab-x/projects/tts/firmware/src/hallSensor.c  .generated_files/flags/ttrain-config/a5862594568e05c10c10495f5255fd4165c8306 .generated_files/flags/ttrain-config/14b2e9d9527be9c9891487a403792ce6b5304066
	@${MKDIR} "${OBJECTDIR}/_ext/653789008" 
	@${RM} ${OBJECTDIR}/_ext/653789008/hallSensor.o.d 
	@${RM} ${OBJECTDIR}/_ext/653789008/hallSensor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus -g -D__DEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb ${PACK_COMMON_OPTIONS}  -Os -ffunction-sections -mlong-calls -I "../src/config/ttrain-config" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/653789008/hallSensor.o.d" -o ${OBJECTDIR}/_ext/653789008/hallSensor.o /home/afzal/work-zone/MPlab-x/projects/tts/firmware/src/hallSensor.c  -DXPRJ_ttrain-config=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/653789008/rgbLed.o: /home/afzal/work-zone/MPlab-x/projects/tts/firmware/src/rgbLed.c  .generated_files/flags/ttrain-config/99bea9246b8e1253b809f5ec0db0aa1a7845d688 .generated_files/flags/ttrain-config/14b2e9d9527be9c9891487a403792ce6b5304066
	@${MKDIR} "${OBJECTDIR}/_ext/653789008" 
	@${RM} ${OBJECTDIR}/_ext/653789008/rgbLed.o.d 
	@${RM} ${OBJECTDIR}/_ext/653789008/rgbLed.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus -g -D__DEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb ${PACK_COMMON_OPTIONS}  -Os -ffunction-sections -mlong-calls -I "../src/config/ttrain-config" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/653789008/rgbLed.o.d" -o ${OBJECTDIR}/_ext/653789008/rgbLed.o /home/afzal/work-zone/MPlab-x/projects/tts/firmware/src/rgbLed.c  -DXPRJ_ttrain-config=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/739996852/plib_adc.o: ../src/config/ttrain-config/peripheral/adc/plib_adc.c  .generated_files/flags/ttrain-config/d292cdd3351ef446682389d122f817459a6d348c .generated_files/flags/ttrain-config/14b2e9d9527be9c9891487a403792ce6b5304066
	@${MKDIR} "${OBJECTDIR}/_ext/739996852" 
	@${RM} ${OBJECTDIR}/_ext/739996852/plib_adc.o.d 
	@${RM} ${OBJECTDIR}/_ext/739996852/plib_adc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus -g -D__DEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb ${PACK_COMMON_OPTIONS}  -Os -ffunction-sections -mlong-calls -I "../src/config/ttrain-config" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/739996852/plib_adc.o.d" -o ${OBJECTDIR}/_ext/739996852/plib_adc.o ../src/config/ttrain-config/peripheral/adc/plib_adc.c  -DXPRJ_ttrain-config=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1825496286/plib_clock.o: ../src/config/ttrain-config/peripheral/clock/plib_clock.c  .generated_files/flags/ttrain-config/a892a226e422dd3e805c2111dfe95160d4dc3b16 .generated_files/flags/ttrain-config/14b2e9d9527be9c9891487a403792ce6b5304066
	@${MKDIR} "${OBJECTDIR}/_ext/1825496286" 
	@${RM} ${OBJECTDIR}/_ext/1825496286/plib_clock.o.d 
	@${RM} ${OBJECTDIR}/_ext/1825496286/plib_clock.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus -g -D__DEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb ${PACK_COMMON_OPTIONS}  -Os -ffunction-sections -mlong-calls -I "../src/config/ttrain-config" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1825496286/plib_clock.o.d" -o ${OBJECTDIR}/_ext/1825496286/plib_clock.o ../src/config/ttrain-config/peripheral/clock/plib_clock.c  -DXPRJ_ttrain-config=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1823346800/plib_evsys.o: ../src/config/ttrain-config/peripheral/evsys/plib_evsys.c  .generated_files/flags/ttrain-config/b3e8f4c5c1dfeb7c60dc23c32535f16578aa3294 .generated_files/flags/ttrain-config/14b2e9d9527be9c9891487a403792ce6b5304066
	@${MKDIR} "${OBJECTDIR}/_ext/1823346800" 
	@${RM} ${OBJECTDIR}/_ext/1823346800/plib_evsys.o.d 
	@${RM} ${OBJECTDIR}/_ext/1823346800/plib_evsys.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus -g -D__DEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb ${PACK_COMMON_OPTIONS}  -Os -ffunction-sections -mlong-calls -I "../src/config/ttrain-config" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1823346800/plib_evsys.o.d" -o ${OBJECTDIR}/_ext/1823346800/plib_evsys.o ../src/config/ttrain-config/peripheral/evsys/plib_evsys.c  -DXPRJ_ttrain-config=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1465470798/plib_nvic.o: ../src/config/ttrain-config/peripheral/nvic/plib_nvic.c  .generated_files/flags/ttrain-config/2f6bfaaa36d30c57cc97f71f68c4ee308a1e0fe .generated_files/flags/ttrain-config/14b2e9d9527be9c9891487a403792ce6b5304066
	@${MKDIR} "${OBJECTDIR}/_ext/1465470798" 
	@${RM} ${OBJECTDIR}/_ext/1465470798/plib_nvic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1465470798/plib_nvic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus -g -D__DEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb ${PACK_COMMON_OPTIONS}  -Os -ffunction-sections -mlong-calls -I "../src/config/ttrain-config" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1465470798/plib_nvic.o.d" -o ${OBJECTDIR}/_ext/1465470798/plib_nvic.o ../src/config/ttrain-config/peripheral/nvic/plib_nvic.c  -DXPRJ_ttrain-config=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/498211420/plib_nvmctrl.o: ../src/config/ttrain-config/peripheral/nvmctrl/plib_nvmctrl.c  .generated_files/flags/ttrain-config/608bab0b382f623c1d39c3339ad4242303cb6c03 .generated_files/flags/ttrain-config/14b2e9d9527be9c9891487a403792ce6b5304066
	@${MKDIR} "${OBJECTDIR}/_ext/498211420" 
	@${RM} ${OBJECTDIR}/_ext/498211420/plib_nvmctrl.o.d 
	@${RM} ${OBJECTDIR}/_ext/498211420/plib_nvmctrl.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus -g -D__DEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb ${PACK_COMMON_OPTIONS}  -Os -ffunction-sections -mlong-calls -I "../src/config/ttrain-config" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/498211420/plib_nvmctrl.o.d" -o ${OBJECTDIR}/_ext/498211420/plib_nvmctrl.o ../src/config/ttrain-config/peripheral/nvmctrl/plib_nvmctrl.c  -DXPRJ_ttrain-config=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/86676733/plib_sercom0_usart.o: ../src/config/ttrain-config/peripheral/sercom/usart/plib_sercom0_usart.c  .generated_files/flags/ttrain-config/e35360431a506ccd6ebd4b4d6ae7d44c16b14789 .generated_files/flags/ttrain-config/14b2e9d9527be9c9891487a403792ce6b5304066
	@${MKDIR} "${OBJECTDIR}/_ext/86676733" 
	@${RM} ${OBJECTDIR}/_ext/86676733/plib_sercom0_usart.o.d 
	@${RM} ${OBJECTDIR}/_ext/86676733/plib_sercom0_usart.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus -g -D__DEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb ${PACK_COMMON_OPTIONS}  -Os -ffunction-sections -mlong-calls -I "../src/config/ttrain-config" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/86676733/plib_sercom0_usart.o.d" -o ${OBJECTDIR}/_ext/86676733/plib_sercom0_usart.o ../src/config/ttrain-config/peripheral/sercom/usart/plib_sercom0_usart.c  -DXPRJ_ttrain-config=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/86676733/plib_sercom2_usart.o: ../src/config/ttrain-config/peripheral/sercom/usart/plib_sercom2_usart.c  .generated_files/flags/ttrain-config/ae6d5ac48f4c662ec2978993f50b07e851bb3955 .generated_files/flags/ttrain-config/14b2e9d9527be9c9891487a403792ce6b5304066
	@${MKDIR} "${OBJECTDIR}/_ext/86676733" 
	@${RM} ${OBJECTDIR}/_ext/86676733/plib_sercom2_usart.o.d 
	@${RM} ${OBJECTDIR}/_ext/86676733/plib_sercom2_usart.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus -g -D__DEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb ${PACK_COMMON_OPTIONS}  -Os -ffunction-sections -mlong-calls -I "../src/config/ttrain-config" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/86676733/plib_sercom2_usart.o.d" -o ${OBJECTDIR}/_ext/86676733/plib_sercom2_usart.o ../src/config/ttrain-config/peripheral/sercom/usart/plib_sercom2_usart.c  -DXPRJ_ttrain-config=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/263736322/plib_systick.o: ../src/config/ttrain-config/peripheral/systick/plib_systick.c  .generated_files/flags/ttrain-config/aa04c9696ae75794efa542201b7ac0c643621ae .generated_files/flags/ttrain-config/14b2e9d9527be9c9891487a403792ce6b5304066
	@${MKDIR} "${OBJECTDIR}/_ext/263736322" 
	@${RM} ${OBJECTDIR}/_ext/263736322/plib_systick.o.d 
	@${RM} ${OBJECTDIR}/_ext/263736322/plib_systick.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus -g -D__DEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb ${PACK_COMMON_OPTIONS}  -Os -ffunction-sections -mlong-calls -I "../src/config/ttrain-config" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/263736322/plib_systick.o.d" -o ${OBJECTDIR}/_ext/263736322/plib_systick.o ../src/config/ttrain-config/peripheral/systick/plib_systick.c  -DXPRJ_ttrain-config=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1675061921/gcc_monitor.o: /home/afzal/work-zone/MPlab-x/gcc/gcc-config/gcc_monitor.c  .generated_files/flags/ttrain-config/9ea7bd23f382529244467e685caf4f34915c46f5 .generated_files/flags/ttrain-config/14b2e9d9527be9c9891487a403792ce6b5304066
	@${MKDIR} "${OBJECTDIR}/_ext/1675061921" 
	@${RM} ${OBJECTDIR}/_ext/1675061921/gcc_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/1675061921/gcc_monitor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus -g -D__DEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb ${PACK_COMMON_OPTIONS}  -Os -ffunction-sections -mlong-calls -I "../src/config/ttrain-config" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1675061921/gcc_monitor.o.d" -o ${OBJECTDIR}/_ext/1675061921/gcc_monitor.o /home/afzal/work-zone/MPlab-x/gcc/gcc-config/gcc_monitor.c  -DXPRJ_ttrain-config=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/707952184/initialization.o: ../src/config/ttrain-config/initialization.c  .generated_files/flags/ttrain-config/131313a2ce213d8266b1ac57eef587641ad64785 .generated_files/flags/ttrain-config/14b2e9d9527be9c9891487a403792ce6b5304066
	@${MKDIR} "${OBJECTDIR}/_ext/707952184" 
	@${RM} ${OBJECTDIR}/_ext/707952184/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/707952184/initialization.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus -g -D__DEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb ${PACK_COMMON_OPTIONS}  -Os -ffunction-sections -mlong-calls -I "../src/config/ttrain-config" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/707952184/initialization.o.d" -o ${OBJECTDIR}/_ext/707952184/initialization.o ../src/config/ttrain-config/initialization.c  -DXPRJ_ttrain-config=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/707952184/interrupts.o: ../src/config/ttrain-config/interrupts.c  .generated_files/flags/ttrain-config/39a8b2eb9ba02c7256421a391b900ca83dcf3edb .generated_files/flags/ttrain-config/14b2e9d9527be9c9891487a403792ce6b5304066
	@${MKDIR} "${OBJECTDIR}/_ext/707952184" 
	@${RM} ${OBJECTDIR}/_ext/707952184/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/707952184/interrupts.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus -g -D__DEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb ${PACK_COMMON_OPTIONS}  -Os -ffunction-sections -mlong-calls -I "../src/config/ttrain-config" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/707952184/interrupts.o.d" -o ${OBJECTDIR}/_ext/707952184/interrupts.o ../src/config/ttrain-config/interrupts.c  -DXPRJ_ttrain-config=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/707952184/exceptions.o: ../src/config/ttrain-config/exceptions.c  .generated_files/flags/ttrain-config/5506ec8f5c94b268b7caa6108f46884548935d3d .generated_files/flags/ttrain-config/14b2e9d9527be9c9891487a403792ce6b5304066
	@${MKDIR} "${OBJECTDIR}/_ext/707952184" 
	@${RM} ${OBJECTDIR}/_ext/707952184/exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/707952184/exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus -g -D__DEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb ${PACK_COMMON_OPTIONS}  -Os -ffunction-sections -mlong-calls -I "../src/config/ttrain-config" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/707952184/exceptions.o.d" -o ${OBJECTDIR}/_ext/707952184/exceptions.o ../src/config/ttrain-config/exceptions.c  -DXPRJ_ttrain-config=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/707952184/libc_syscalls.o: ../src/config/ttrain-config/libc_syscalls.c  .generated_files/flags/ttrain-config/97ad30a657ed3ade39b2068e3d0d3ee24df94d41 .generated_files/flags/ttrain-config/14b2e9d9527be9c9891487a403792ce6b5304066
	@${MKDIR} "${OBJECTDIR}/_ext/707952184" 
	@${RM} ${OBJECTDIR}/_ext/707952184/libc_syscalls.o.d 
	@${RM} ${OBJECTDIR}/_ext/707952184/libc_syscalls.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus -g -D__DEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb ${PACK_COMMON_OPTIONS}  -Os -ffunction-sections -mlong-calls -I "../src/config/ttrain-config" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/707952184/libc_syscalls.o.d" -o ${OBJECTDIR}/_ext/707952184/libc_syscalls.o ../src/config/ttrain-config/libc_syscalls.c  -DXPRJ_ttrain-config=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1675061921/startup_gcc.o: /home/afzal/work-zone/MPlab-x/gcc/gcc-config/startup_gcc.c  .generated_files/flags/ttrain-config/85d5e9dff04a37b4b1c42d85c70bc051e0269e53 .generated_files/flags/ttrain-config/14b2e9d9527be9c9891487a403792ce6b5304066
	@${MKDIR} "${OBJECTDIR}/_ext/1675061921" 
	@${RM} ${OBJECTDIR}/_ext/1675061921/startup_gcc.o.d 
	@${RM} ${OBJECTDIR}/_ext/1675061921/startup_gcc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus -g -D__DEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb ${PACK_COMMON_OPTIONS}  -Os -ffunction-sections -mlong-calls -I "../src/config/ttrain-config" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1675061921/startup_gcc.o.d" -o ${OBJECTDIR}/_ext/1675061921/startup_gcc.o /home/afzal/work-zone/MPlab-x/gcc/gcc-config/startup_gcc.c  -DXPRJ_ttrain-config=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  .generated_files/flags/ttrain-config/8610ae4b8243d8538b595b1e9e48237ba286f81a .generated_files/flags/ttrain-config/14b2e9d9527be9c9891487a403792ce6b5304066
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus -g -D__DEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb ${PACK_COMMON_OPTIONS}  -Os -ffunction-sections -mlong-calls -I "../src/config/ttrain-config" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c  -DXPRJ_ttrain-config=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1465523949/plib_port.o: ../src/config/ttrain-config/peripheral/port/plib_port.c  .generated_files/flags/ttrain-config/c65b71a5fba347e6264c87db6bbc0af47dbb040d .generated_files/flags/ttrain-config/14b2e9d9527be9c9891487a403792ce6b5304066
	@${MKDIR} "${OBJECTDIR}/_ext/1465523949" 
	@${RM} ${OBJECTDIR}/_ext/1465523949/plib_port.o.d 
	@${RM} ${OBJECTDIR}/_ext/1465523949/plib_port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus -g -D__DEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb ${PACK_COMMON_OPTIONS}  -Os -ffunction-sections -mlong-calls -I "../src/config/ttrain-config" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1465523949/plib_port.o.d" -o ${OBJECTDIR}/_ext/1465523949/plib_port.o ../src/config/ttrain-config/peripheral/port/plib_port.c  -DXPRJ_ttrain-config=$(CND_CONF)  $(COMPARISON_BUILD) 
	
else
${OBJECTDIR}/_ext/653789008/colorDetect.o: /home/afzal/work-zone/MPlab-x/projects/tts/firmware/src/colorDetect.c  .generated_files/flags/ttrain-config/790253d7bf34a5f1087f2a5c7ff15ceb8a92702a .generated_files/flags/ttrain-config/14b2e9d9527be9c9891487a403792ce6b5304066
	@${MKDIR} "${OBJECTDIR}/_ext/653789008" 
	@${RM} ${OBJECTDIR}/_ext/653789008/colorDetect.o.d 
	@${RM} ${OBJECTDIR}/_ext/653789008/colorDetect.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb ${PACK_COMMON_OPTIONS}  -Os -ffunction-sections -mlong-calls -I "../src/config/ttrain-config" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/653789008/colorDetect.o.d" -o ${OBJECTDIR}/_ext/653789008/colorDetect.o /home/afzal/work-zone/MPlab-x/projects/tts/firmware/src/colorDetect.c  -DXPRJ_ttrain-config=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/653789008/AppGlobals.o: /home/afzal/work-zone/MPlab-x/projects/tts/firmware/src/AppGlobals.c  .generated_files/flags/ttrain-config/b8d487a68eeb9a864a2d63e493b875653d18ad72 .generated_files/flags/ttrain-config/14b2e9d9527be9c9891487a403792ce6b5304066
	@${MKDIR} "${OBJECTDIR}/_ext/653789008" 
	@${RM} ${OBJECTDIR}/_ext/653789008/AppGlobals.o.d 
	@${RM} ${OBJECTDIR}/_ext/653789008/AppGlobals.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb ${PACK_COMMON_OPTIONS}  -Os -ffunction-sections -mlong-calls -I "../src/config/ttrain-config" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/653789008/AppGlobals.o.d" -o ${OBJECTDIR}/_ext/653789008/AppGlobals.o /home/afzal/work-zone/MPlab-x/projects/tts/firmware/src/AppGlobals.c  -DXPRJ_ttrain-config=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/653789008/motorControl.o: /home/afzal/work-zone/MPlab-x/projects/tts/firmware/src/motorControl.c  .generated_files/flags/ttrain-config/94b7fc2b3b568f203471ba0e2c98dd5f71a14b52 .generated_files/flags/ttrain-config/14b2e9d9527be9c9891487a403792ce6b5304066
	@${MKDIR} "${OBJECTDIR}/_ext/653789008" 
	@${RM} ${OBJECTDIR}/_ext/653789008/motorControl.o.d 
	@${RM} ${OBJECTDIR}/_ext/653789008/motorControl.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb ${PACK_COMMON_OPTIONS}  -Os -ffunction-sections -mlong-calls -I "../src/config/ttrain-config" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/653789008/motorControl.o.d" -o ${OBJECTDIR}/_ext/653789008/motorControl.o /home/afzal/work-zone/MPlab-x/projects/tts/firmware/src/motorControl.c  -DXPRJ_ttrain-config=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/653789008/hallSensor.o: /home/afzal/work-zone/MPlab-x/projects/tts/firmware/src/hallSensor.c  .generated_files/flags/ttrain-config/6004203437137126423a2fb95b41a40570ea3c04 .generated_files/flags/ttrain-config/14b2e9d9527be9c9891487a403792ce6b5304066
	@${MKDIR} "${OBJECTDIR}/_ext/653789008" 
	@${RM} ${OBJECTDIR}/_ext/653789008/hallSensor.o.d 
	@${RM} ${OBJECTDIR}/_ext/653789008/hallSensor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb ${PACK_COMMON_OPTIONS}  -Os -ffunction-sections -mlong-calls -I "../src/config/ttrain-config" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/653789008/hallSensor.o.d" -o ${OBJECTDIR}/_ext/653789008/hallSensor.o /home/afzal/work-zone/MPlab-x/projects/tts/firmware/src/hallSensor.c  -DXPRJ_ttrain-config=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/653789008/rgbLed.o: /home/afzal/work-zone/MPlab-x/projects/tts/firmware/src/rgbLed.c  .generated_files/flags/ttrain-config/472fc3d1bf17eef26d3fa0fcf31f8e22e891fa93 .generated_files/flags/ttrain-config/14b2e9d9527be9c9891487a403792ce6b5304066
	@${MKDIR} "${OBJECTDIR}/_ext/653789008" 
	@${RM} ${OBJECTDIR}/_ext/653789008/rgbLed.o.d 
	@${RM} ${OBJECTDIR}/_ext/653789008/rgbLed.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb ${PACK_COMMON_OPTIONS}  -Os -ffunction-sections -mlong-calls -I "../src/config/ttrain-config" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/653789008/rgbLed.o.d" -o ${OBJECTDIR}/_ext/653789008/rgbLed.o /home/afzal/work-zone/MPlab-x/projects/tts/firmware/src/rgbLed.c  -DXPRJ_ttrain-config=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/739996852/plib_adc.o: ../src/config/ttrain-config/peripheral/adc/plib_adc.c  .generated_files/flags/ttrain-config/7a5dd96a8ab3ef5f973aafbfaa2b6bd27448dbc4 .generated_files/flags/ttrain-config/14b2e9d9527be9c9891487a403792ce6b5304066
	@${MKDIR} "${OBJECTDIR}/_ext/739996852" 
	@${RM} ${OBJECTDIR}/_ext/739996852/plib_adc.o.d 
	@${RM} ${OBJECTDIR}/_ext/739996852/plib_adc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb ${PACK_COMMON_OPTIONS}  -Os -ffunction-sections -mlong-calls -I "../src/config/ttrain-config" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/739996852/plib_adc.o.d" -o ${OBJECTDIR}/_ext/739996852/plib_adc.o ../src/config/ttrain-config/peripheral/adc/plib_adc.c  -DXPRJ_ttrain-config=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1825496286/plib_clock.o: ../src/config/ttrain-config/peripheral/clock/plib_clock.c  .generated_files/flags/ttrain-config/83ef9cbfc99d2ee47d1455f099351c090dd703f5 .generated_files/flags/ttrain-config/14b2e9d9527be9c9891487a403792ce6b5304066
	@${MKDIR} "${OBJECTDIR}/_ext/1825496286" 
	@${RM} ${OBJECTDIR}/_ext/1825496286/plib_clock.o.d 
	@${RM} ${OBJECTDIR}/_ext/1825496286/plib_clock.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb ${PACK_COMMON_OPTIONS}  -Os -ffunction-sections -mlong-calls -I "../src/config/ttrain-config" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1825496286/plib_clock.o.d" -o ${OBJECTDIR}/_ext/1825496286/plib_clock.o ../src/config/ttrain-config/peripheral/clock/plib_clock.c  -DXPRJ_ttrain-config=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1823346800/plib_evsys.o: ../src/config/ttrain-config/peripheral/evsys/plib_evsys.c  .generated_files/flags/ttrain-config/910c0a70d830578102ad987307fc2fce4bad22ca .generated_files/flags/ttrain-config/14b2e9d9527be9c9891487a403792ce6b5304066
	@${MKDIR} "${OBJECTDIR}/_ext/1823346800" 
	@${RM} ${OBJECTDIR}/_ext/1823346800/plib_evsys.o.d 
	@${RM} ${OBJECTDIR}/_ext/1823346800/plib_evsys.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb ${PACK_COMMON_OPTIONS}  -Os -ffunction-sections -mlong-calls -I "../src/config/ttrain-config" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1823346800/plib_evsys.o.d" -o ${OBJECTDIR}/_ext/1823346800/plib_evsys.o ../src/config/ttrain-config/peripheral/evsys/plib_evsys.c  -DXPRJ_ttrain-config=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1465470798/plib_nvic.o: ../src/config/ttrain-config/peripheral/nvic/plib_nvic.c  .generated_files/flags/ttrain-config/1d0f93162df713cc0be92886c569ef920907e845 .generated_files/flags/ttrain-config/14b2e9d9527be9c9891487a403792ce6b5304066
	@${MKDIR} "${OBJECTDIR}/_ext/1465470798" 
	@${RM} ${OBJECTDIR}/_ext/1465470798/plib_nvic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1465470798/plib_nvic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb ${PACK_COMMON_OPTIONS}  -Os -ffunction-sections -mlong-calls -I "../src/config/ttrain-config" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1465470798/plib_nvic.o.d" -o ${OBJECTDIR}/_ext/1465470798/plib_nvic.o ../src/config/ttrain-config/peripheral/nvic/plib_nvic.c  -DXPRJ_ttrain-config=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/498211420/plib_nvmctrl.o: ../src/config/ttrain-config/peripheral/nvmctrl/plib_nvmctrl.c  .generated_files/flags/ttrain-config/1319b0316e57159ad445020e4dde2b8111cf26fa .generated_files/flags/ttrain-config/14b2e9d9527be9c9891487a403792ce6b5304066
	@${MKDIR} "${OBJECTDIR}/_ext/498211420" 
	@${RM} ${OBJECTDIR}/_ext/498211420/plib_nvmctrl.o.d 
	@${RM} ${OBJECTDIR}/_ext/498211420/plib_nvmctrl.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb ${PACK_COMMON_OPTIONS}  -Os -ffunction-sections -mlong-calls -I "../src/config/ttrain-config" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/498211420/plib_nvmctrl.o.d" -o ${OBJECTDIR}/_ext/498211420/plib_nvmctrl.o ../src/config/ttrain-config/peripheral/nvmctrl/plib_nvmctrl.c  -DXPRJ_ttrain-config=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/86676733/plib_sercom0_usart.o: ../src/config/ttrain-config/peripheral/sercom/usart/plib_sercom0_usart.c  .generated_files/flags/ttrain-config/5b9f371dabadae38484d986d341117b72982a416 .generated_files/flags/ttrain-config/14b2e9d9527be9c9891487a403792ce6b5304066
	@${MKDIR} "${OBJECTDIR}/_ext/86676733" 
	@${RM} ${OBJECTDIR}/_ext/86676733/plib_sercom0_usart.o.d 
	@${RM} ${OBJECTDIR}/_ext/86676733/plib_sercom0_usart.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb ${PACK_COMMON_OPTIONS}  -Os -ffunction-sections -mlong-calls -I "../src/config/ttrain-config" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/86676733/plib_sercom0_usart.o.d" -o ${OBJECTDIR}/_ext/86676733/plib_sercom0_usart.o ../src/config/ttrain-config/peripheral/sercom/usart/plib_sercom0_usart.c  -DXPRJ_ttrain-config=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/86676733/plib_sercom2_usart.o: ../src/config/ttrain-config/peripheral/sercom/usart/plib_sercom2_usart.c  .generated_files/flags/ttrain-config/e30b5e41b86aa11ee4bf6398b23101c935d045cf .generated_files/flags/ttrain-config/14b2e9d9527be9c9891487a403792ce6b5304066
	@${MKDIR} "${OBJECTDIR}/_ext/86676733" 
	@${RM} ${OBJECTDIR}/_ext/86676733/plib_sercom2_usart.o.d 
	@${RM} ${OBJECTDIR}/_ext/86676733/plib_sercom2_usart.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb ${PACK_COMMON_OPTIONS}  -Os -ffunction-sections -mlong-calls -I "../src/config/ttrain-config" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/86676733/plib_sercom2_usart.o.d" -o ${OBJECTDIR}/_ext/86676733/plib_sercom2_usart.o ../src/config/ttrain-config/peripheral/sercom/usart/plib_sercom2_usart.c  -DXPRJ_ttrain-config=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/263736322/plib_systick.o: ../src/config/ttrain-config/peripheral/systick/plib_systick.c  .generated_files/flags/ttrain-config/cc96e1c19ece8314fce4e0b9cbf62de1f2ae6c91 .generated_files/flags/ttrain-config/14b2e9d9527be9c9891487a403792ce6b5304066
	@${MKDIR} "${OBJECTDIR}/_ext/263736322" 
	@${RM} ${OBJECTDIR}/_ext/263736322/plib_systick.o.d 
	@${RM} ${OBJECTDIR}/_ext/263736322/plib_systick.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb ${PACK_COMMON_OPTIONS}  -Os -ffunction-sections -mlong-calls -I "../src/config/ttrain-config" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/263736322/plib_systick.o.d" -o ${OBJECTDIR}/_ext/263736322/plib_systick.o ../src/config/ttrain-config/peripheral/systick/plib_systick.c  -DXPRJ_ttrain-config=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1675061921/gcc_monitor.o: /home/afzal/work-zone/MPlab-x/gcc/gcc-config/gcc_monitor.c  .generated_files/flags/ttrain-config/c050f3591866fe7a75dbcc833b1b1aa44a50f4a7 .generated_files/flags/ttrain-config/14b2e9d9527be9c9891487a403792ce6b5304066
	@${MKDIR} "${OBJECTDIR}/_ext/1675061921" 
	@${RM} ${OBJECTDIR}/_ext/1675061921/gcc_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/1675061921/gcc_monitor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb ${PACK_COMMON_OPTIONS}  -Os -ffunction-sections -mlong-calls -I "../src/config/ttrain-config" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1675061921/gcc_monitor.o.d" -o ${OBJECTDIR}/_ext/1675061921/gcc_monitor.o /home/afzal/work-zone/MPlab-x/gcc/gcc-config/gcc_monitor.c  -DXPRJ_ttrain-config=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/707952184/initialization.o: ../src/config/ttrain-config/initialization.c  .generated_files/flags/ttrain-config/1d59df746f8d56490935e39757e63c0d79f5ab38 .generated_files/flags/ttrain-config/14b2e9d9527be9c9891487a403792ce6b5304066
	@${MKDIR} "${OBJECTDIR}/_ext/707952184" 
	@${RM} ${OBJECTDIR}/_ext/707952184/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/707952184/initialization.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb ${PACK_COMMON_OPTIONS}  -Os -ffunction-sections -mlong-calls -I "../src/config/ttrain-config" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/707952184/initialization.o.d" -o ${OBJECTDIR}/_ext/707952184/initialization.o ../src/config/ttrain-config/initialization.c  -DXPRJ_ttrain-config=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/707952184/interrupts.o: ../src/config/ttrain-config/interrupts.c  .generated_files/flags/ttrain-config/60e4fdaa44b4b2dd2efbed2867ff3ff66a8c99cf .generated_files/flags/ttrain-config/14b2e9d9527be9c9891487a403792ce6b5304066
	@${MKDIR} "${OBJECTDIR}/_ext/707952184" 
	@${RM} ${OBJECTDIR}/_ext/707952184/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/707952184/interrupts.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb ${PACK_COMMON_OPTIONS}  -Os -ffunction-sections -mlong-calls -I "../src/config/ttrain-config" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/707952184/interrupts.o.d" -o ${OBJECTDIR}/_ext/707952184/interrupts.o ../src/config/ttrain-config/interrupts.c  -DXPRJ_ttrain-config=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/707952184/exceptions.o: ../src/config/ttrain-config/exceptions.c  .generated_files/flags/ttrain-config/67bf7d60bdcbac4b8cbe3ed9e1e40e4e4ae96b8 .generated_files/flags/ttrain-config/14b2e9d9527be9c9891487a403792ce6b5304066
	@${MKDIR} "${OBJECTDIR}/_ext/707952184" 
	@${RM} ${OBJECTDIR}/_ext/707952184/exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/707952184/exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb ${PACK_COMMON_OPTIONS}  -Os -ffunction-sections -mlong-calls -I "../src/config/ttrain-config" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/707952184/exceptions.o.d" -o ${OBJECTDIR}/_ext/707952184/exceptions.o ../src/config/ttrain-config/exceptions.c  -DXPRJ_ttrain-config=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/707952184/libc_syscalls.o: ../src/config/ttrain-config/libc_syscalls.c  .generated_files/flags/ttrain-config/20b3f14fdc6d837269f8e5a94303ced6d25bbfb .generated_files/flags/ttrain-config/14b2e9d9527be9c9891487a403792ce6b5304066
	@${MKDIR} "${OBJECTDIR}/_ext/707952184" 
	@${RM} ${OBJECTDIR}/_ext/707952184/libc_syscalls.o.d 
	@${RM} ${OBJECTDIR}/_ext/707952184/libc_syscalls.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb ${PACK_COMMON_OPTIONS}  -Os -ffunction-sections -mlong-calls -I "../src/config/ttrain-config" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/707952184/libc_syscalls.o.d" -o ${OBJECTDIR}/_ext/707952184/libc_syscalls.o ../src/config/ttrain-config/libc_syscalls.c  -DXPRJ_ttrain-config=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1675061921/startup_gcc.o: /home/afzal/work-zone/MPlab-x/gcc/gcc-config/startup_gcc.c  .generated_files/flags/ttrain-config/4f1248e1e5242cbb91b6cf51eb94d89884381947 .generated_files/flags/ttrain-config/14b2e9d9527be9c9891487a403792ce6b5304066
	@${MKDIR} "${OBJECTDIR}/_ext/1675061921" 
	@${RM} ${OBJECTDIR}/_ext/1675061921/startup_gcc.o.d 
	@${RM} ${OBJECTDIR}/_ext/1675061921/startup_gcc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb ${PACK_COMMON_OPTIONS}  -Os -ffunction-sections -mlong-calls -I "../src/config/ttrain-config" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1675061921/startup_gcc.o.d" -o ${OBJECTDIR}/_ext/1675061921/startup_gcc.o /home/afzal/work-zone/MPlab-x/gcc/gcc-config/startup_gcc.c  -DXPRJ_ttrain-config=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  .generated_files/flags/ttrain-config/cec24b49fc04de4632b757bbcdb0c10a00a0f71b .generated_files/flags/ttrain-config/14b2e9d9527be9c9891487a403792ce6b5304066
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb ${PACK_COMMON_OPTIONS}  -Os -ffunction-sections -mlong-calls -I "../src/config/ttrain-config" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c  -DXPRJ_ttrain-config=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1465523949/plib_port.o: ../src/config/ttrain-config/peripheral/port/plib_port.c  .generated_files/flags/ttrain-config/cfd4d189e09731a73227eec0be73feb92fc0f8e7 .generated_files/flags/ttrain-config/14b2e9d9527be9c9891487a403792ce6b5304066
	@${MKDIR} "${OBJECTDIR}/_ext/1465523949" 
	@${RM} ${OBJECTDIR}/_ext/1465523949/plib_port.o.d 
	@${RM} ${OBJECTDIR}/_ext/1465523949/plib_port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb ${PACK_COMMON_OPTIONS}  -Os -ffunction-sections -mlong-calls -I "../src/config/ttrain-config" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1465523949/plib_port.o.d" -o ${OBJECTDIR}/_ext/1465523949/plib_port.o ../src/config/ttrain-config/peripheral/port/plib_port.c  -DXPRJ_ttrain-config=$(CND_CONF)  $(COMPARISON_BUILD) 
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compileCPP
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/rnd.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    ../src/config/ttrain-config/ATSAMD21G18A.ld
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -mcpu=cortex-m0plus   -gdwarf-2  -D__$(MP_PROCESSOR_OPTION)__   -T"../src/config/ttrain-config/ATSAMD21G18A.ld"  -mthumb --specs=nosys.specs -Wl,-Map="dist/${CND_CONF}/${IMAGE_TYPE}/rnd.X.${IMAGE_TYPE}.map"  -o dist/${CND_CONF}/${IMAGE_TYPE}/rnd.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}      -DXPRJ_ttrain-config=$(CND_CONF)  $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1 -Wl,--gc-sections  
	
	
	
	
	
	
else
dist/${CND_CONF}/${IMAGE_TYPE}/rnd.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   ../src/config/ttrain-config/ATSAMD21G18A.ld
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -mcpu=cortex-m0plus  -D__$(MP_PROCESSOR_OPTION)__   -T"../src/config/ttrain-config/ATSAMD21G18A.ld"  -mthumb --specs=nosys.specs -Wl,-Map="dist/${CND_CONF}/${IMAGE_TYPE}/rnd.X.${IMAGE_TYPE}.map"  -o dist/${CND_CONF}/${IMAGE_TYPE}/rnd.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}      -DXPRJ_ttrain-config=$(CND_CONF)  $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION) -Wl,--gc-sections  
	
	${MP_CC_DIR}/arm-none-eabi-objcopy -O ihex -R .eeprom -R .fuse -R .lock -R .signature "dist/${CND_CONF}/${IMAGE_TYPE}/rnd.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}" "dist/${CND_CONF}/${IMAGE_TYPE}/rnd.X.${IMAGE_TYPE}.hex"
	
	
	
	
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r build/ttrain-config
	${RM} -r dist/ttrain-config

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell "${PATH_TO_IDE_BIN}"mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif

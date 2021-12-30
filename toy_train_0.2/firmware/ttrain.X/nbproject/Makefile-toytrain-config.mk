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
ifeq "$(wildcard nbproject/Makefile-local-toytrain-config.mk)" "nbproject/Makefile-local-toytrain-config.mk"
include nbproject/Makefile-local-toytrain-config.mk
endif
endif

# Environment
MKDIR=mkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=toytrain-config
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/ttrain.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/ttrain.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
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
SOURCEFILES_QUOTED_IF_SPACED=/home/afzal/work-zone/MPlab-x/projects/toy_train_0.2/firmware/src/AppGlobals.c /home/afzal/work-zone/MPlab-x/projects/toy_train_0.2/firmware/src/colorDetect.c /home/afzal/work-zone/MPlab-x/projects/toy_train_0.2/firmware/src/hallSensor.c /home/afzal/work-zone/MPlab-x/projects/toy_train_0.2/firmware/src/motorControl.c /home/afzal/work-zone/MPlab-x/projects/toy_train_0.2/firmware/src/rgbLed.c /home/afzal/work-zone/MPlab-x/projects/toy_train_0.2/firmware/src/bluetooth.c /home/afzal/work-zone/MPlab-x/projects/toy_train_0.2/firmware/src/music.c ../src/config/toytrain-config/peripheral/adc/plib_adc.c ../src/config/toytrain-config/peripheral/clock/plib_clock.c ../src/config/toytrain-config/peripheral/dac/plib_dac.c ../src/config/toytrain-config/peripheral/evsys/plib_evsys.c ../src/config/toytrain-config/peripheral/nvic/plib_nvic.c ../src/config/toytrain-config/peripheral/nvmctrl/plib_nvmctrl.c ../src/config/toytrain-config/peripheral/port/plib_port.c ../src/config/toytrain-config/peripheral/sercom/usart/plib_sercom2_usart.c ../src/config/toytrain-config/peripheral/sercom/usart/plib_sercom0_usart.c ../src/config/toytrain-config/peripheral/systick/plib_systick.c ../src/config/toytrain-config/peripheral/tc/plib_tc3.c ../src/config/toytrain-config/peripheral/tc/plib_tc4.c ../src/config/toytrain-config/peripheral/tcc/plib_tcc2.c ../src/config/toytrain-config/peripheral/tcc/plib_tcc0.c /home/afzal/work-zone/MPlab-x/gcc/gcc-config/gcc_monitor.c ../src/config/toytrain-config/initialization.c ../src/config/toytrain-config/interrupts.c ../src/config/toytrain-config/exceptions.c ../src/config/toytrain-config/libc_syscalls.c /home/afzal/work-zone/MPlab-x/gcc/gcc-config/startup_gcc.c ../src/main.c /home/afzal/work-zone/MPlab-x/projects/toy_train_0.2/firmware/src/audio.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/1239984807/AppGlobals.o ${OBJECTDIR}/_ext/1239984807/colorDetect.o ${OBJECTDIR}/_ext/1239984807/hallSensor.o ${OBJECTDIR}/_ext/1239984807/motorControl.o ${OBJECTDIR}/_ext/1239984807/rgbLed.o ${OBJECTDIR}/_ext/1239984807/bluetooth.o ${OBJECTDIR}/_ext/1239984807/music.o ${OBJECTDIR}/_ext/752856886/plib_adc.o ${OBJECTDIR}/_ext/1938861640/plib_clock.o ${OBJECTDIR}/_ext/752854096/plib_dac.o ${OBJECTDIR}/_ext/1936712154/plib_evsys.o ${OBJECTDIR}/_ext/1863322120/plib_nvic.o ${OBJECTDIR}/_ext/2068134214/plib_nvmctrl.o ${OBJECTDIR}/_ext/1863268969/plib_port.o ${OBJECTDIR}/_ext/332908461/plib_sercom2_usart.o ${OBJECTDIR}/_ext/332908461/plib_sercom0_usart.o ${OBJECTDIR}/_ext/1833659116/plib_systick.o ${OBJECTDIR}/_ext/1963947771/plib_tc3.o ${OBJECTDIR}/_ext/1963947771/plib_tc4.o ${OBJECTDIR}/_ext/752838658/plib_tcc2.o ${OBJECTDIR}/_ext/752838658/plib_tcc0.o ${OBJECTDIR}/_ext/1675061921/gcc_monitor.o ${OBJECTDIR}/_ext/1672823694/initialization.o ${OBJECTDIR}/_ext/1672823694/interrupts.o ${OBJECTDIR}/_ext/1672823694/exceptions.o ${OBJECTDIR}/_ext/1672823694/libc_syscalls.o ${OBJECTDIR}/_ext/1675061921/startup_gcc.o ${OBJECTDIR}/_ext/1360937237/main.o ${OBJECTDIR}/_ext/1239984807/audio.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/1239984807/AppGlobals.o.d ${OBJECTDIR}/_ext/1239984807/colorDetect.o.d ${OBJECTDIR}/_ext/1239984807/hallSensor.o.d ${OBJECTDIR}/_ext/1239984807/motorControl.o.d ${OBJECTDIR}/_ext/1239984807/rgbLed.o.d ${OBJECTDIR}/_ext/1239984807/bluetooth.o.d ${OBJECTDIR}/_ext/1239984807/music.o.d ${OBJECTDIR}/_ext/752856886/plib_adc.o.d ${OBJECTDIR}/_ext/1938861640/plib_clock.o.d ${OBJECTDIR}/_ext/752854096/plib_dac.o.d ${OBJECTDIR}/_ext/1936712154/plib_evsys.o.d ${OBJECTDIR}/_ext/1863322120/plib_nvic.o.d ${OBJECTDIR}/_ext/2068134214/plib_nvmctrl.o.d ${OBJECTDIR}/_ext/1863268969/plib_port.o.d ${OBJECTDIR}/_ext/332908461/plib_sercom2_usart.o.d ${OBJECTDIR}/_ext/332908461/plib_sercom0_usart.o.d ${OBJECTDIR}/_ext/1833659116/plib_systick.o.d ${OBJECTDIR}/_ext/1963947771/plib_tc3.o.d ${OBJECTDIR}/_ext/1963947771/plib_tc4.o.d ${OBJECTDIR}/_ext/752838658/plib_tcc2.o.d ${OBJECTDIR}/_ext/752838658/plib_tcc0.o.d ${OBJECTDIR}/_ext/1675061921/gcc_monitor.o.d ${OBJECTDIR}/_ext/1672823694/initialization.o.d ${OBJECTDIR}/_ext/1672823694/interrupts.o.d ${OBJECTDIR}/_ext/1672823694/exceptions.o.d ${OBJECTDIR}/_ext/1672823694/libc_syscalls.o.d ${OBJECTDIR}/_ext/1675061921/startup_gcc.o.d ${OBJECTDIR}/_ext/1360937237/main.o.d ${OBJECTDIR}/_ext/1239984807/audio.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/1239984807/AppGlobals.o ${OBJECTDIR}/_ext/1239984807/colorDetect.o ${OBJECTDIR}/_ext/1239984807/hallSensor.o ${OBJECTDIR}/_ext/1239984807/motorControl.o ${OBJECTDIR}/_ext/1239984807/rgbLed.o ${OBJECTDIR}/_ext/1239984807/bluetooth.o ${OBJECTDIR}/_ext/1239984807/music.o ${OBJECTDIR}/_ext/752856886/plib_adc.o ${OBJECTDIR}/_ext/1938861640/plib_clock.o ${OBJECTDIR}/_ext/752854096/plib_dac.o ${OBJECTDIR}/_ext/1936712154/plib_evsys.o ${OBJECTDIR}/_ext/1863322120/plib_nvic.o ${OBJECTDIR}/_ext/2068134214/plib_nvmctrl.o ${OBJECTDIR}/_ext/1863268969/plib_port.o ${OBJECTDIR}/_ext/332908461/plib_sercom2_usart.o ${OBJECTDIR}/_ext/332908461/plib_sercom0_usart.o ${OBJECTDIR}/_ext/1833659116/plib_systick.o ${OBJECTDIR}/_ext/1963947771/plib_tc3.o ${OBJECTDIR}/_ext/1963947771/plib_tc4.o ${OBJECTDIR}/_ext/752838658/plib_tcc2.o ${OBJECTDIR}/_ext/752838658/plib_tcc0.o ${OBJECTDIR}/_ext/1675061921/gcc_monitor.o ${OBJECTDIR}/_ext/1672823694/initialization.o ${OBJECTDIR}/_ext/1672823694/interrupts.o ${OBJECTDIR}/_ext/1672823694/exceptions.o ${OBJECTDIR}/_ext/1672823694/libc_syscalls.o ${OBJECTDIR}/_ext/1675061921/startup_gcc.o ${OBJECTDIR}/_ext/1360937237/main.o ${OBJECTDIR}/_ext/1239984807/audio.o

# Source Files
SOURCEFILES=/home/afzal/work-zone/MPlab-x/projects/toy_train_0.2/firmware/src/AppGlobals.c /home/afzal/work-zone/MPlab-x/projects/toy_train_0.2/firmware/src/colorDetect.c /home/afzal/work-zone/MPlab-x/projects/toy_train_0.2/firmware/src/hallSensor.c /home/afzal/work-zone/MPlab-x/projects/toy_train_0.2/firmware/src/motorControl.c /home/afzal/work-zone/MPlab-x/projects/toy_train_0.2/firmware/src/rgbLed.c /home/afzal/work-zone/MPlab-x/projects/toy_train_0.2/firmware/src/bluetooth.c /home/afzal/work-zone/MPlab-x/projects/toy_train_0.2/firmware/src/music.c ../src/config/toytrain-config/peripheral/adc/plib_adc.c ../src/config/toytrain-config/peripheral/clock/plib_clock.c ../src/config/toytrain-config/peripheral/dac/plib_dac.c ../src/config/toytrain-config/peripheral/evsys/plib_evsys.c ../src/config/toytrain-config/peripheral/nvic/plib_nvic.c ../src/config/toytrain-config/peripheral/nvmctrl/plib_nvmctrl.c ../src/config/toytrain-config/peripheral/port/plib_port.c ../src/config/toytrain-config/peripheral/sercom/usart/plib_sercom2_usart.c ../src/config/toytrain-config/peripheral/sercom/usart/plib_sercom0_usart.c ../src/config/toytrain-config/peripheral/systick/plib_systick.c ../src/config/toytrain-config/peripheral/tc/plib_tc3.c ../src/config/toytrain-config/peripheral/tc/plib_tc4.c ../src/config/toytrain-config/peripheral/tcc/plib_tcc2.c ../src/config/toytrain-config/peripheral/tcc/plib_tcc0.c /home/afzal/work-zone/MPlab-x/gcc/gcc-config/gcc_monitor.c ../src/config/toytrain-config/initialization.c ../src/config/toytrain-config/interrupts.c ../src/config/toytrain-config/exceptions.c ../src/config/toytrain-config/libc_syscalls.c /home/afzal/work-zone/MPlab-x/gcc/gcc-config/startup_gcc.c ../src/main.c /home/afzal/work-zone/MPlab-x/projects/toy_train_0.2/firmware/src/audio.c

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
	${MAKE}  -f nbproject/Makefile-toytrain-config.mk dist/${CND_CONF}/${IMAGE_TYPE}/ttrain.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

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
${OBJECTDIR}/_ext/1239984807/AppGlobals.o: /home/afzal/work-zone/MPlab-x/projects/toy_train_0.2/firmware/src/AppGlobals.c  .generated_files/flags/toytrain-config/78535a4fa62523115435ec166607a704a0e779bb .generated_files/flags/toytrain-config/ac02ed1e24fe11f0598702808dd8873bd1b1e619
	@${MKDIR} "${OBJECTDIR}/_ext/1239984807" 
	@${RM} ${OBJECTDIR}/_ext/1239984807/AppGlobals.o.d 
	@${RM} ${OBJECTDIR}/_ext/1239984807/AppGlobals.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus -g -D__DEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb ${PACK_COMMON_OPTIONS}  -Os -ffunction-sections -mlong-calls -I "../src/config/toytrain-config" -I "../src/packs/ATSAMD21G18A_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1239984807/AppGlobals.o.d" -o ${OBJECTDIR}/_ext/1239984807/AppGlobals.o /home/afzal/work-zone/MPlab-x/projects/toy_train_0.2/firmware/src/AppGlobals.c  -DXPRJ_toytrain-config=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1239984807/colorDetect.o: /home/afzal/work-zone/MPlab-x/projects/toy_train_0.2/firmware/src/colorDetect.c  .generated_files/flags/toytrain-config/71b965f2e53277488895a690bdfc71801e14f4e7 .generated_files/flags/toytrain-config/ac02ed1e24fe11f0598702808dd8873bd1b1e619
	@${MKDIR} "${OBJECTDIR}/_ext/1239984807" 
	@${RM} ${OBJECTDIR}/_ext/1239984807/colorDetect.o.d 
	@${RM} ${OBJECTDIR}/_ext/1239984807/colorDetect.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus -g -D__DEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb ${PACK_COMMON_OPTIONS}  -Os -ffunction-sections -mlong-calls -I "../src/config/toytrain-config" -I "../src/packs/ATSAMD21G18A_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1239984807/colorDetect.o.d" -o ${OBJECTDIR}/_ext/1239984807/colorDetect.o /home/afzal/work-zone/MPlab-x/projects/toy_train_0.2/firmware/src/colorDetect.c  -DXPRJ_toytrain-config=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1239984807/hallSensor.o: /home/afzal/work-zone/MPlab-x/projects/toy_train_0.2/firmware/src/hallSensor.c  .generated_files/flags/toytrain-config/8c42755c382bf3e35fb2757eb6df96097868dc8b .generated_files/flags/toytrain-config/ac02ed1e24fe11f0598702808dd8873bd1b1e619
	@${MKDIR} "${OBJECTDIR}/_ext/1239984807" 
	@${RM} ${OBJECTDIR}/_ext/1239984807/hallSensor.o.d 
	@${RM} ${OBJECTDIR}/_ext/1239984807/hallSensor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus -g -D__DEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb ${PACK_COMMON_OPTIONS}  -Os -ffunction-sections -mlong-calls -I "../src/config/toytrain-config" -I "../src/packs/ATSAMD21G18A_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1239984807/hallSensor.o.d" -o ${OBJECTDIR}/_ext/1239984807/hallSensor.o /home/afzal/work-zone/MPlab-x/projects/toy_train_0.2/firmware/src/hallSensor.c  -DXPRJ_toytrain-config=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1239984807/motorControl.o: /home/afzal/work-zone/MPlab-x/projects/toy_train_0.2/firmware/src/motorControl.c  .generated_files/flags/toytrain-config/6303a4542330095f6433931fef3a7604d290aee0 .generated_files/flags/toytrain-config/ac02ed1e24fe11f0598702808dd8873bd1b1e619
	@${MKDIR} "${OBJECTDIR}/_ext/1239984807" 
	@${RM} ${OBJECTDIR}/_ext/1239984807/motorControl.o.d 
	@${RM} ${OBJECTDIR}/_ext/1239984807/motorControl.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus -g -D__DEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb ${PACK_COMMON_OPTIONS}  -Os -ffunction-sections -mlong-calls -I "../src/config/toytrain-config" -I "../src/packs/ATSAMD21G18A_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1239984807/motorControl.o.d" -o ${OBJECTDIR}/_ext/1239984807/motorControl.o /home/afzal/work-zone/MPlab-x/projects/toy_train_0.2/firmware/src/motorControl.c  -DXPRJ_toytrain-config=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1239984807/rgbLed.o: /home/afzal/work-zone/MPlab-x/projects/toy_train_0.2/firmware/src/rgbLed.c  .generated_files/flags/toytrain-config/bf18fff84c1ed040ee7df958b4bcff5ec767f3d3 .generated_files/flags/toytrain-config/ac02ed1e24fe11f0598702808dd8873bd1b1e619
	@${MKDIR} "${OBJECTDIR}/_ext/1239984807" 
	@${RM} ${OBJECTDIR}/_ext/1239984807/rgbLed.o.d 
	@${RM} ${OBJECTDIR}/_ext/1239984807/rgbLed.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus -g -D__DEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb ${PACK_COMMON_OPTIONS}  -Os -ffunction-sections -mlong-calls -I "../src/config/toytrain-config" -I "../src/packs/ATSAMD21G18A_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1239984807/rgbLed.o.d" -o ${OBJECTDIR}/_ext/1239984807/rgbLed.o /home/afzal/work-zone/MPlab-x/projects/toy_train_0.2/firmware/src/rgbLed.c  -DXPRJ_toytrain-config=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1239984807/bluetooth.o: /home/afzal/work-zone/MPlab-x/projects/toy_train_0.2/firmware/src/bluetooth.c  .generated_files/flags/toytrain-config/94e263901a8a144e08e86e8c8f7dd34897ec0f5b .generated_files/flags/toytrain-config/ac02ed1e24fe11f0598702808dd8873bd1b1e619
	@${MKDIR} "${OBJECTDIR}/_ext/1239984807" 
	@${RM} ${OBJECTDIR}/_ext/1239984807/bluetooth.o.d 
	@${RM} ${OBJECTDIR}/_ext/1239984807/bluetooth.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus -g -D__DEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb ${PACK_COMMON_OPTIONS}  -Os -ffunction-sections -mlong-calls -I "../src/config/toytrain-config" -I "../src/packs/ATSAMD21G18A_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1239984807/bluetooth.o.d" -o ${OBJECTDIR}/_ext/1239984807/bluetooth.o /home/afzal/work-zone/MPlab-x/projects/toy_train_0.2/firmware/src/bluetooth.c  -DXPRJ_toytrain-config=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1239984807/music.o: /home/afzal/work-zone/MPlab-x/projects/toy_train_0.2/firmware/src/music.c  .generated_files/flags/toytrain-config/d7226fe4bc7b62976b25940740fc3a97063ec02d .generated_files/flags/toytrain-config/ac02ed1e24fe11f0598702808dd8873bd1b1e619
	@${MKDIR} "${OBJECTDIR}/_ext/1239984807" 
	@${RM} ${OBJECTDIR}/_ext/1239984807/music.o.d 
	@${RM} ${OBJECTDIR}/_ext/1239984807/music.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus -g -D__DEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb ${PACK_COMMON_OPTIONS}  -Os -ffunction-sections -mlong-calls -I "../src/config/toytrain-config" -I "../src/packs/ATSAMD21G18A_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1239984807/music.o.d" -o ${OBJECTDIR}/_ext/1239984807/music.o /home/afzal/work-zone/MPlab-x/projects/toy_train_0.2/firmware/src/music.c  -DXPRJ_toytrain-config=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/752856886/plib_adc.o: ../src/config/toytrain-config/peripheral/adc/plib_adc.c  .generated_files/flags/toytrain-config/ade0edbf29b6a34faadaf9e992bed5e5cd7d5f03 .generated_files/flags/toytrain-config/ac02ed1e24fe11f0598702808dd8873bd1b1e619
	@${MKDIR} "${OBJECTDIR}/_ext/752856886" 
	@${RM} ${OBJECTDIR}/_ext/752856886/plib_adc.o.d 
	@${RM} ${OBJECTDIR}/_ext/752856886/plib_adc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus -g -D__DEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb ${PACK_COMMON_OPTIONS}  -Os -ffunction-sections -mlong-calls -I "../src/config/toytrain-config" -I "../src/packs/ATSAMD21G18A_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/752856886/plib_adc.o.d" -o ${OBJECTDIR}/_ext/752856886/plib_adc.o ../src/config/toytrain-config/peripheral/adc/plib_adc.c  -DXPRJ_toytrain-config=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1938861640/plib_clock.o: ../src/config/toytrain-config/peripheral/clock/plib_clock.c  .generated_files/flags/toytrain-config/82bbc8d56b8ea6e1ac90e02c9a40b7951c9c2c09 .generated_files/flags/toytrain-config/ac02ed1e24fe11f0598702808dd8873bd1b1e619
	@${MKDIR} "${OBJECTDIR}/_ext/1938861640" 
	@${RM} ${OBJECTDIR}/_ext/1938861640/plib_clock.o.d 
	@${RM} ${OBJECTDIR}/_ext/1938861640/plib_clock.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus -g -D__DEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb ${PACK_COMMON_OPTIONS}  -Os -ffunction-sections -mlong-calls -I "../src/config/toytrain-config" -I "../src/packs/ATSAMD21G18A_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1938861640/plib_clock.o.d" -o ${OBJECTDIR}/_ext/1938861640/plib_clock.o ../src/config/toytrain-config/peripheral/clock/plib_clock.c  -DXPRJ_toytrain-config=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/752854096/plib_dac.o: ../src/config/toytrain-config/peripheral/dac/plib_dac.c  .generated_files/flags/toytrain-config/7eb714512bc0c40a6b31909a87b745a3a306f582 .generated_files/flags/toytrain-config/ac02ed1e24fe11f0598702808dd8873bd1b1e619
	@${MKDIR} "${OBJECTDIR}/_ext/752854096" 
	@${RM} ${OBJECTDIR}/_ext/752854096/plib_dac.o.d 
	@${RM} ${OBJECTDIR}/_ext/752854096/plib_dac.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus -g -D__DEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb ${PACK_COMMON_OPTIONS}  -Os -ffunction-sections -mlong-calls -I "../src/config/toytrain-config" -I "../src/packs/ATSAMD21G18A_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/752854096/plib_dac.o.d" -o ${OBJECTDIR}/_ext/752854096/plib_dac.o ../src/config/toytrain-config/peripheral/dac/plib_dac.c  -DXPRJ_toytrain-config=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1936712154/plib_evsys.o: ../src/config/toytrain-config/peripheral/evsys/plib_evsys.c  .generated_files/flags/toytrain-config/34a2e11db5afb8ee6a0aee982012b73271316b97 .generated_files/flags/toytrain-config/ac02ed1e24fe11f0598702808dd8873bd1b1e619
	@${MKDIR} "${OBJECTDIR}/_ext/1936712154" 
	@${RM} ${OBJECTDIR}/_ext/1936712154/plib_evsys.o.d 
	@${RM} ${OBJECTDIR}/_ext/1936712154/plib_evsys.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus -g -D__DEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb ${PACK_COMMON_OPTIONS}  -Os -ffunction-sections -mlong-calls -I "../src/config/toytrain-config" -I "../src/packs/ATSAMD21G18A_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1936712154/plib_evsys.o.d" -o ${OBJECTDIR}/_ext/1936712154/plib_evsys.o ../src/config/toytrain-config/peripheral/evsys/plib_evsys.c  -DXPRJ_toytrain-config=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1863322120/plib_nvic.o: ../src/config/toytrain-config/peripheral/nvic/plib_nvic.c  .generated_files/flags/toytrain-config/7698f1e1a5103e53c475a13e7bf4e66aba5c66ec .generated_files/flags/toytrain-config/ac02ed1e24fe11f0598702808dd8873bd1b1e619
	@${MKDIR} "${OBJECTDIR}/_ext/1863322120" 
	@${RM} ${OBJECTDIR}/_ext/1863322120/plib_nvic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1863322120/plib_nvic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus -g -D__DEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb ${PACK_COMMON_OPTIONS}  -Os -ffunction-sections -mlong-calls -I "../src/config/toytrain-config" -I "../src/packs/ATSAMD21G18A_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1863322120/plib_nvic.o.d" -o ${OBJECTDIR}/_ext/1863322120/plib_nvic.o ../src/config/toytrain-config/peripheral/nvic/plib_nvic.c  -DXPRJ_toytrain-config=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/2068134214/plib_nvmctrl.o: ../src/config/toytrain-config/peripheral/nvmctrl/plib_nvmctrl.c  .generated_files/flags/toytrain-config/9c23bed60f2e64b7b440f96a1fcd15c31443adeb .generated_files/flags/toytrain-config/ac02ed1e24fe11f0598702808dd8873bd1b1e619
	@${MKDIR} "${OBJECTDIR}/_ext/2068134214" 
	@${RM} ${OBJECTDIR}/_ext/2068134214/plib_nvmctrl.o.d 
	@${RM} ${OBJECTDIR}/_ext/2068134214/plib_nvmctrl.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus -g -D__DEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb ${PACK_COMMON_OPTIONS}  -Os -ffunction-sections -mlong-calls -I "../src/config/toytrain-config" -I "../src/packs/ATSAMD21G18A_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2068134214/plib_nvmctrl.o.d" -o ${OBJECTDIR}/_ext/2068134214/plib_nvmctrl.o ../src/config/toytrain-config/peripheral/nvmctrl/plib_nvmctrl.c  -DXPRJ_toytrain-config=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1863268969/plib_port.o: ../src/config/toytrain-config/peripheral/port/plib_port.c  .generated_files/flags/toytrain-config/2aff49631965e9b80c6dcabe38a7c680e0840f2f .generated_files/flags/toytrain-config/ac02ed1e24fe11f0598702808dd8873bd1b1e619
	@${MKDIR} "${OBJECTDIR}/_ext/1863268969" 
	@${RM} ${OBJECTDIR}/_ext/1863268969/plib_port.o.d 
	@${RM} ${OBJECTDIR}/_ext/1863268969/plib_port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus -g -D__DEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb ${PACK_COMMON_OPTIONS}  -Os -ffunction-sections -mlong-calls -I "../src/config/toytrain-config" -I "../src/packs/ATSAMD21G18A_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1863268969/plib_port.o.d" -o ${OBJECTDIR}/_ext/1863268969/plib_port.o ../src/config/toytrain-config/peripheral/port/plib_port.c  -DXPRJ_toytrain-config=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/332908461/plib_sercom2_usart.o: ../src/config/toytrain-config/peripheral/sercom/usart/plib_sercom2_usart.c  .generated_files/flags/toytrain-config/200b41a169adaad0acb3c4ed4eb4fb9cec9c038e .generated_files/flags/toytrain-config/ac02ed1e24fe11f0598702808dd8873bd1b1e619
	@${MKDIR} "${OBJECTDIR}/_ext/332908461" 
	@${RM} ${OBJECTDIR}/_ext/332908461/plib_sercom2_usart.o.d 
	@${RM} ${OBJECTDIR}/_ext/332908461/plib_sercom2_usart.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus -g -D__DEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb ${PACK_COMMON_OPTIONS}  -Os -ffunction-sections -mlong-calls -I "../src/config/toytrain-config" -I "../src/packs/ATSAMD21G18A_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/332908461/plib_sercom2_usart.o.d" -o ${OBJECTDIR}/_ext/332908461/plib_sercom2_usart.o ../src/config/toytrain-config/peripheral/sercom/usart/plib_sercom2_usart.c  -DXPRJ_toytrain-config=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/332908461/plib_sercom0_usart.o: ../src/config/toytrain-config/peripheral/sercom/usart/plib_sercom0_usart.c  .generated_files/flags/toytrain-config/48d4fb7644269a72750175a8cbed8dfad43f11eb .generated_files/flags/toytrain-config/ac02ed1e24fe11f0598702808dd8873bd1b1e619
	@${MKDIR} "${OBJECTDIR}/_ext/332908461" 
	@${RM} ${OBJECTDIR}/_ext/332908461/plib_sercom0_usart.o.d 
	@${RM} ${OBJECTDIR}/_ext/332908461/plib_sercom0_usart.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus -g -D__DEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb ${PACK_COMMON_OPTIONS}  -Os -ffunction-sections -mlong-calls -I "../src/config/toytrain-config" -I "../src/packs/ATSAMD21G18A_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/332908461/plib_sercom0_usart.o.d" -o ${OBJECTDIR}/_ext/332908461/plib_sercom0_usart.o ../src/config/toytrain-config/peripheral/sercom/usart/plib_sercom0_usart.c  -DXPRJ_toytrain-config=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1833659116/plib_systick.o: ../src/config/toytrain-config/peripheral/systick/plib_systick.c  .generated_files/flags/toytrain-config/a4533c6176de8b09cb21c35ec1e6de0ea8e2ddb .generated_files/flags/toytrain-config/ac02ed1e24fe11f0598702808dd8873bd1b1e619
	@${MKDIR} "${OBJECTDIR}/_ext/1833659116" 
	@${RM} ${OBJECTDIR}/_ext/1833659116/plib_systick.o.d 
	@${RM} ${OBJECTDIR}/_ext/1833659116/plib_systick.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus -g -D__DEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb ${PACK_COMMON_OPTIONS}  -Os -ffunction-sections -mlong-calls -I "../src/config/toytrain-config" -I "../src/packs/ATSAMD21G18A_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1833659116/plib_systick.o.d" -o ${OBJECTDIR}/_ext/1833659116/plib_systick.o ../src/config/toytrain-config/peripheral/systick/plib_systick.c  -DXPRJ_toytrain-config=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1963947771/plib_tc3.o: ../src/config/toytrain-config/peripheral/tc/plib_tc3.c  .generated_files/flags/toytrain-config/bd381865c531bcaae1c81727cb2bd0214ce39373 .generated_files/flags/toytrain-config/ac02ed1e24fe11f0598702808dd8873bd1b1e619
	@${MKDIR} "${OBJECTDIR}/_ext/1963947771" 
	@${RM} ${OBJECTDIR}/_ext/1963947771/plib_tc3.o.d 
	@${RM} ${OBJECTDIR}/_ext/1963947771/plib_tc3.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus -g -D__DEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb ${PACK_COMMON_OPTIONS}  -Os -ffunction-sections -mlong-calls -I "../src/config/toytrain-config" -I "../src/packs/ATSAMD21G18A_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1963947771/plib_tc3.o.d" -o ${OBJECTDIR}/_ext/1963947771/plib_tc3.o ../src/config/toytrain-config/peripheral/tc/plib_tc3.c  -DXPRJ_toytrain-config=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1963947771/plib_tc4.o: ../src/config/toytrain-config/peripheral/tc/plib_tc4.c  .generated_files/flags/toytrain-config/cd7229ed69dbc656b68f2f3122058ea6fc833786 .generated_files/flags/toytrain-config/ac02ed1e24fe11f0598702808dd8873bd1b1e619
	@${MKDIR} "${OBJECTDIR}/_ext/1963947771" 
	@${RM} ${OBJECTDIR}/_ext/1963947771/plib_tc4.o.d 
	@${RM} ${OBJECTDIR}/_ext/1963947771/plib_tc4.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus -g -D__DEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb ${PACK_COMMON_OPTIONS}  -Os -ffunction-sections -mlong-calls -I "../src/config/toytrain-config" -I "../src/packs/ATSAMD21G18A_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1963947771/plib_tc4.o.d" -o ${OBJECTDIR}/_ext/1963947771/plib_tc4.o ../src/config/toytrain-config/peripheral/tc/plib_tc4.c  -DXPRJ_toytrain-config=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/752838658/plib_tcc2.o: ../src/config/toytrain-config/peripheral/tcc/plib_tcc2.c  .generated_files/flags/toytrain-config/9202225f0655393f1638233476349daafb90516b .generated_files/flags/toytrain-config/ac02ed1e24fe11f0598702808dd8873bd1b1e619
	@${MKDIR} "${OBJECTDIR}/_ext/752838658" 
	@${RM} ${OBJECTDIR}/_ext/752838658/plib_tcc2.o.d 
	@${RM} ${OBJECTDIR}/_ext/752838658/plib_tcc2.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus -g -D__DEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb ${PACK_COMMON_OPTIONS}  -Os -ffunction-sections -mlong-calls -I "../src/config/toytrain-config" -I "../src/packs/ATSAMD21G18A_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/752838658/plib_tcc2.o.d" -o ${OBJECTDIR}/_ext/752838658/plib_tcc2.o ../src/config/toytrain-config/peripheral/tcc/plib_tcc2.c  -DXPRJ_toytrain-config=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/752838658/plib_tcc0.o: ../src/config/toytrain-config/peripheral/tcc/plib_tcc0.c  .generated_files/flags/toytrain-config/d1e3772deccd2d32b4a1520394772bea44ac0c6c .generated_files/flags/toytrain-config/ac02ed1e24fe11f0598702808dd8873bd1b1e619
	@${MKDIR} "${OBJECTDIR}/_ext/752838658" 
	@${RM} ${OBJECTDIR}/_ext/752838658/plib_tcc0.o.d 
	@${RM} ${OBJECTDIR}/_ext/752838658/plib_tcc0.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus -g -D__DEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb ${PACK_COMMON_OPTIONS}  -Os -ffunction-sections -mlong-calls -I "../src/config/toytrain-config" -I "../src/packs/ATSAMD21G18A_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/752838658/plib_tcc0.o.d" -o ${OBJECTDIR}/_ext/752838658/plib_tcc0.o ../src/config/toytrain-config/peripheral/tcc/plib_tcc0.c  -DXPRJ_toytrain-config=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1675061921/gcc_monitor.o: /home/afzal/work-zone/MPlab-x/gcc/gcc-config/gcc_monitor.c  .generated_files/flags/toytrain-config/ee78c08d722959e7a7a2317552e5eddfa4533d6a .generated_files/flags/toytrain-config/ac02ed1e24fe11f0598702808dd8873bd1b1e619
	@${MKDIR} "${OBJECTDIR}/_ext/1675061921" 
	@${RM} ${OBJECTDIR}/_ext/1675061921/gcc_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/1675061921/gcc_monitor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus -g -D__DEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb ${PACK_COMMON_OPTIONS}  -Os -ffunction-sections -mlong-calls -I "../src/config/toytrain-config" -I "../src/packs/ATSAMD21G18A_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1675061921/gcc_monitor.o.d" -o ${OBJECTDIR}/_ext/1675061921/gcc_monitor.o /home/afzal/work-zone/MPlab-x/gcc/gcc-config/gcc_monitor.c  -DXPRJ_toytrain-config=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1672823694/initialization.o: ../src/config/toytrain-config/initialization.c  .generated_files/flags/toytrain-config/562eb9342d3642a3343558dfaa12395348aeebb2 .generated_files/flags/toytrain-config/ac02ed1e24fe11f0598702808dd8873bd1b1e619
	@${MKDIR} "${OBJECTDIR}/_ext/1672823694" 
	@${RM} ${OBJECTDIR}/_ext/1672823694/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/1672823694/initialization.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus -g -D__DEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb ${PACK_COMMON_OPTIONS}  -Os -ffunction-sections -mlong-calls -I "../src/config/toytrain-config" -I "../src/packs/ATSAMD21G18A_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1672823694/initialization.o.d" -o ${OBJECTDIR}/_ext/1672823694/initialization.o ../src/config/toytrain-config/initialization.c  -DXPRJ_toytrain-config=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1672823694/interrupts.o: ../src/config/toytrain-config/interrupts.c  .generated_files/flags/toytrain-config/99ae0a4a84ade85438e4016d463dce9161789569 .generated_files/flags/toytrain-config/ac02ed1e24fe11f0598702808dd8873bd1b1e619
	@${MKDIR} "${OBJECTDIR}/_ext/1672823694" 
	@${RM} ${OBJECTDIR}/_ext/1672823694/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/1672823694/interrupts.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus -g -D__DEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb ${PACK_COMMON_OPTIONS}  -Os -ffunction-sections -mlong-calls -I "../src/config/toytrain-config" -I "../src/packs/ATSAMD21G18A_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1672823694/interrupts.o.d" -o ${OBJECTDIR}/_ext/1672823694/interrupts.o ../src/config/toytrain-config/interrupts.c  -DXPRJ_toytrain-config=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1672823694/exceptions.o: ../src/config/toytrain-config/exceptions.c  .generated_files/flags/toytrain-config/c49e11cf9b987ca39d6756ba421af893c681cecd .generated_files/flags/toytrain-config/ac02ed1e24fe11f0598702808dd8873bd1b1e619
	@${MKDIR} "${OBJECTDIR}/_ext/1672823694" 
	@${RM} ${OBJECTDIR}/_ext/1672823694/exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/1672823694/exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus -g -D__DEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb ${PACK_COMMON_OPTIONS}  -Os -ffunction-sections -mlong-calls -I "../src/config/toytrain-config" -I "../src/packs/ATSAMD21G18A_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1672823694/exceptions.o.d" -o ${OBJECTDIR}/_ext/1672823694/exceptions.o ../src/config/toytrain-config/exceptions.c  -DXPRJ_toytrain-config=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1672823694/libc_syscalls.o: ../src/config/toytrain-config/libc_syscalls.c  .generated_files/flags/toytrain-config/6ffd16df61cc71345c1415fa52b7a0ea30c5f14f .generated_files/flags/toytrain-config/ac02ed1e24fe11f0598702808dd8873bd1b1e619
	@${MKDIR} "${OBJECTDIR}/_ext/1672823694" 
	@${RM} ${OBJECTDIR}/_ext/1672823694/libc_syscalls.o.d 
	@${RM} ${OBJECTDIR}/_ext/1672823694/libc_syscalls.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus -g -D__DEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb ${PACK_COMMON_OPTIONS}  -Os -ffunction-sections -mlong-calls -I "../src/config/toytrain-config" -I "../src/packs/ATSAMD21G18A_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1672823694/libc_syscalls.o.d" -o ${OBJECTDIR}/_ext/1672823694/libc_syscalls.o ../src/config/toytrain-config/libc_syscalls.c  -DXPRJ_toytrain-config=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1675061921/startup_gcc.o: /home/afzal/work-zone/MPlab-x/gcc/gcc-config/startup_gcc.c  .generated_files/flags/toytrain-config/2b97fb767b0a6db4b876174ce130f23d96f2e6a3 .generated_files/flags/toytrain-config/ac02ed1e24fe11f0598702808dd8873bd1b1e619
	@${MKDIR} "${OBJECTDIR}/_ext/1675061921" 
	@${RM} ${OBJECTDIR}/_ext/1675061921/startup_gcc.o.d 
	@${RM} ${OBJECTDIR}/_ext/1675061921/startup_gcc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus -g -D__DEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb ${PACK_COMMON_OPTIONS}  -Os -ffunction-sections -mlong-calls -I "../src/config/toytrain-config" -I "../src/packs/ATSAMD21G18A_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1675061921/startup_gcc.o.d" -o ${OBJECTDIR}/_ext/1675061921/startup_gcc.o /home/afzal/work-zone/MPlab-x/gcc/gcc-config/startup_gcc.c  -DXPRJ_toytrain-config=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  .generated_files/flags/toytrain-config/1b7a1cd6bc21522f8dd2d49d7e44eb5c2893a836 .generated_files/flags/toytrain-config/ac02ed1e24fe11f0598702808dd8873bd1b1e619
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus -g -D__DEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb ${PACK_COMMON_OPTIONS}  -Os -ffunction-sections -mlong-calls -I "../src/config/toytrain-config" -I "../src/packs/ATSAMD21G18A_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c  -DXPRJ_toytrain-config=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1239984807/audio.o: /home/afzal/work-zone/MPlab-x/projects/toy_train_0.2/firmware/src/audio.c  .generated_files/flags/toytrain-config/1e874ac1d5bf419c16ee49f82fbaf32af17240f8 .generated_files/flags/toytrain-config/ac02ed1e24fe11f0598702808dd8873bd1b1e619
	@${MKDIR} "${OBJECTDIR}/_ext/1239984807" 
	@${RM} ${OBJECTDIR}/_ext/1239984807/audio.o.d 
	@${RM} ${OBJECTDIR}/_ext/1239984807/audio.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus -g -D__DEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb ${PACK_COMMON_OPTIONS}  -Os -ffunction-sections -mlong-calls -I "../src/config/toytrain-config" -I "../src/packs/ATSAMD21G18A_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1239984807/audio.o.d" -o ${OBJECTDIR}/_ext/1239984807/audio.o /home/afzal/work-zone/MPlab-x/projects/toy_train_0.2/firmware/src/audio.c  -DXPRJ_toytrain-config=$(CND_CONF)  $(COMPARISON_BUILD) 
	
else
${OBJECTDIR}/_ext/1239984807/AppGlobals.o: /home/afzal/work-zone/MPlab-x/projects/toy_train_0.2/firmware/src/AppGlobals.c  .generated_files/flags/toytrain-config/fd6c379c73bbb727dc3305671d5474272319f8c4 .generated_files/flags/toytrain-config/ac02ed1e24fe11f0598702808dd8873bd1b1e619
	@${MKDIR} "${OBJECTDIR}/_ext/1239984807" 
	@${RM} ${OBJECTDIR}/_ext/1239984807/AppGlobals.o.d 
	@${RM} ${OBJECTDIR}/_ext/1239984807/AppGlobals.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb ${PACK_COMMON_OPTIONS}  -Os -ffunction-sections -mlong-calls -I "../src/config/toytrain-config" -I "../src/packs/ATSAMD21G18A_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1239984807/AppGlobals.o.d" -o ${OBJECTDIR}/_ext/1239984807/AppGlobals.o /home/afzal/work-zone/MPlab-x/projects/toy_train_0.2/firmware/src/AppGlobals.c  -DXPRJ_toytrain-config=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1239984807/colorDetect.o: /home/afzal/work-zone/MPlab-x/projects/toy_train_0.2/firmware/src/colorDetect.c  .generated_files/flags/toytrain-config/1ca08910b7d62f08fb6267a03ff58c029afb2ad3 .generated_files/flags/toytrain-config/ac02ed1e24fe11f0598702808dd8873bd1b1e619
	@${MKDIR} "${OBJECTDIR}/_ext/1239984807" 
	@${RM} ${OBJECTDIR}/_ext/1239984807/colorDetect.o.d 
	@${RM} ${OBJECTDIR}/_ext/1239984807/colorDetect.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb ${PACK_COMMON_OPTIONS}  -Os -ffunction-sections -mlong-calls -I "../src/config/toytrain-config" -I "../src/packs/ATSAMD21G18A_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1239984807/colorDetect.o.d" -o ${OBJECTDIR}/_ext/1239984807/colorDetect.o /home/afzal/work-zone/MPlab-x/projects/toy_train_0.2/firmware/src/colorDetect.c  -DXPRJ_toytrain-config=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1239984807/hallSensor.o: /home/afzal/work-zone/MPlab-x/projects/toy_train_0.2/firmware/src/hallSensor.c  .generated_files/flags/toytrain-config/55561ead7886fb74c1d0d52b3a9b059f475a9deb .generated_files/flags/toytrain-config/ac02ed1e24fe11f0598702808dd8873bd1b1e619
	@${MKDIR} "${OBJECTDIR}/_ext/1239984807" 
	@${RM} ${OBJECTDIR}/_ext/1239984807/hallSensor.o.d 
	@${RM} ${OBJECTDIR}/_ext/1239984807/hallSensor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb ${PACK_COMMON_OPTIONS}  -Os -ffunction-sections -mlong-calls -I "../src/config/toytrain-config" -I "../src/packs/ATSAMD21G18A_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1239984807/hallSensor.o.d" -o ${OBJECTDIR}/_ext/1239984807/hallSensor.o /home/afzal/work-zone/MPlab-x/projects/toy_train_0.2/firmware/src/hallSensor.c  -DXPRJ_toytrain-config=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1239984807/motorControl.o: /home/afzal/work-zone/MPlab-x/projects/toy_train_0.2/firmware/src/motorControl.c  .generated_files/flags/toytrain-config/aed81a2703ab63cc844f79b75e428eec203d00bc .generated_files/flags/toytrain-config/ac02ed1e24fe11f0598702808dd8873bd1b1e619
	@${MKDIR} "${OBJECTDIR}/_ext/1239984807" 
	@${RM} ${OBJECTDIR}/_ext/1239984807/motorControl.o.d 
	@${RM} ${OBJECTDIR}/_ext/1239984807/motorControl.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb ${PACK_COMMON_OPTIONS}  -Os -ffunction-sections -mlong-calls -I "../src/config/toytrain-config" -I "../src/packs/ATSAMD21G18A_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1239984807/motorControl.o.d" -o ${OBJECTDIR}/_ext/1239984807/motorControl.o /home/afzal/work-zone/MPlab-x/projects/toy_train_0.2/firmware/src/motorControl.c  -DXPRJ_toytrain-config=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1239984807/rgbLed.o: /home/afzal/work-zone/MPlab-x/projects/toy_train_0.2/firmware/src/rgbLed.c  .generated_files/flags/toytrain-config/53422c710fb200af4e81bbc3eed13e7677b3ad7d .generated_files/flags/toytrain-config/ac02ed1e24fe11f0598702808dd8873bd1b1e619
	@${MKDIR} "${OBJECTDIR}/_ext/1239984807" 
	@${RM} ${OBJECTDIR}/_ext/1239984807/rgbLed.o.d 
	@${RM} ${OBJECTDIR}/_ext/1239984807/rgbLed.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb ${PACK_COMMON_OPTIONS}  -Os -ffunction-sections -mlong-calls -I "../src/config/toytrain-config" -I "../src/packs/ATSAMD21G18A_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1239984807/rgbLed.o.d" -o ${OBJECTDIR}/_ext/1239984807/rgbLed.o /home/afzal/work-zone/MPlab-x/projects/toy_train_0.2/firmware/src/rgbLed.c  -DXPRJ_toytrain-config=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1239984807/bluetooth.o: /home/afzal/work-zone/MPlab-x/projects/toy_train_0.2/firmware/src/bluetooth.c  .generated_files/flags/toytrain-config/a455844f0ed7a843ab8fd7af6450a36e5a8290bb .generated_files/flags/toytrain-config/ac02ed1e24fe11f0598702808dd8873bd1b1e619
	@${MKDIR} "${OBJECTDIR}/_ext/1239984807" 
	@${RM} ${OBJECTDIR}/_ext/1239984807/bluetooth.o.d 
	@${RM} ${OBJECTDIR}/_ext/1239984807/bluetooth.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb ${PACK_COMMON_OPTIONS}  -Os -ffunction-sections -mlong-calls -I "../src/config/toytrain-config" -I "../src/packs/ATSAMD21G18A_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1239984807/bluetooth.o.d" -o ${OBJECTDIR}/_ext/1239984807/bluetooth.o /home/afzal/work-zone/MPlab-x/projects/toy_train_0.2/firmware/src/bluetooth.c  -DXPRJ_toytrain-config=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1239984807/music.o: /home/afzal/work-zone/MPlab-x/projects/toy_train_0.2/firmware/src/music.c  .generated_files/flags/toytrain-config/b28a5b351e5fdb2e6c40c1e359b1553e42b9c2aa .generated_files/flags/toytrain-config/ac02ed1e24fe11f0598702808dd8873bd1b1e619
	@${MKDIR} "${OBJECTDIR}/_ext/1239984807" 
	@${RM} ${OBJECTDIR}/_ext/1239984807/music.o.d 
	@${RM} ${OBJECTDIR}/_ext/1239984807/music.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb ${PACK_COMMON_OPTIONS}  -Os -ffunction-sections -mlong-calls -I "../src/config/toytrain-config" -I "../src/packs/ATSAMD21G18A_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1239984807/music.o.d" -o ${OBJECTDIR}/_ext/1239984807/music.o /home/afzal/work-zone/MPlab-x/projects/toy_train_0.2/firmware/src/music.c  -DXPRJ_toytrain-config=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/752856886/plib_adc.o: ../src/config/toytrain-config/peripheral/adc/plib_adc.c  .generated_files/flags/toytrain-config/6a382d95b3a0c8cb7cf33fb79d26b0ad9ea473a9 .generated_files/flags/toytrain-config/ac02ed1e24fe11f0598702808dd8873bd1b1e619
	@${MKDIR} "${OBJECTDIR}/_ext/752856886" 
	@${RM} ${OBJECTDIR}/_ext/752856886/plib_adc.o.d 
	@${RM} ${OBJECTDIR}/_ext/752856886/plib_adc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb ${PACK_COMMON_OPTIONS}  -Os -ffunction-sections -mlong-calls -I "../src/config/toytrain-config" -I "../src/packs/ATSAMD21G18A_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/752856886/plib_adc.o.d" -o ${OBJECTDIR}/_ext/752856886/plib_adc.o ../src/config/toytrain-config/peripheral/adc/plib_adc.c  -DXPRJ_toytrain-config=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1938861640/plib_clock.o: ../src/config/toytrain-config/peripheral/clock/plib_clock.c  .generated_files/flags/toytrain-config/22573d1744ae427456b25badf7d255b5e7451dbb .generated_files/flags/toytrain-config/ac02ed1e24fe11f0598702808dd8873bd1b1e619
	@${MKDIR} "${OBJECTDIR}/_ext/1938861640" 
	@${RM} ${OBJECTDIR}/_ext/1938861640/plib_clock.o.d 
	@${RM} ${OBJECTDIR}/_ext/1938861640/plib_clock.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb ${PACK_COMMON_OPTIONS}  -Os -ffunction-sections -mlong-calls -I "../src/config/toytrain-config" -I "../src/packs/ATSAMD21G18A_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1938861640/plib_clock.o.d" -o ${OBJECTDIR}/_ext/1938861640/plib_clock.o ../src/config/toytrain-config/peripheral/clock/plib_clock.c  -DXPRJ_toytrain-config=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/752854096/plib_dac.o: ../src/config/toytrain-config/peripheral/dac/plib_dac.c  .generated_files/flags/toytrain-config/f46319aacd53865414da926e0b327c1355acce40 .generated_files/flags/toytrain-config/ac02ed1e24fe11f0598702808dd8873bd1b1e619
	@${MKDIR} "${OBJECTDIR}/_ext/752854096" 
	@${RM} ${OBJECTDIR}/_ext/752854096/plib_dac.o.d 
	@${RM} ${OBJECTDIR}/_ext/752854096/plib_dac.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb ${PACK_COMMON_OPTIONS}  -Os -ffunction-sections -mlong-calls -I "../src/config/toytrain-config" -I "../src/packs/ATSAMD21G18A_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/752854096/plib_dac.o.d" -o ${OBJECTDIR}/_ext/752854096/plib_dac.o ../src/config/toytrain-config/peripheral/dac/plib_dac.c  -DXPRJ_toytrain-config=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1936712154/plib_evsys.o: ../src/config/toytrain-config/peripheral/evsys/plib_evsys.c  .generated_files/flags/toytrain-config/3bc28ea8f372510d417964da55383e5f6d9512d5 .generated_files/flags/toytrain-config/ac02ed1e24fe11f0598702808dd8873bd1b1e619
	@${MKDIR} "${OBJECTDIR}/_ext/1936712154" 
	@${RM} ${OBJECTDIR}/_ext/1936712154/plib_evsys.o.d 
	@${RM} ${OBJECTDIR}/_ext/1936712154/plib_evsys.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb ${PACK_COMMON_OPTIONS}  -Os -ffunction-sections -mlong-calls -I "../src/config/toytrain-config" -I "../src/packs/ATSAMD21G18A_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1936712154/plib_evsys.o.d" -o ${OBJECTDIR}/_ext/1936712154/plib_evsys.o ../src/config/toytrain-config/peripheral/evsys/plib_evsys.c  -DXPRJ_toytrain-config=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1863322120/plib_nvic.o: ../src/config/toytrain-config/peripheral/nvic/plib_nvic.c  .generated_files/flags/toytrain-config/366c9e73693eb5087d949e015d9bef192961c254 .generated_files/flags/toytrain-config/ac02ed1e24fe11f0598702808dd8873bd1b1e619
	@${MKDIR} "${OBJECTDIR}/_ext/1863322120" 
	@${RM} ${OBJECTDIR}/_ext/1863322120/plib_nvic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1863322120/plib_nvic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb ${PACK_COMMON_OPTIONS}  -Os -ffunction-sections -mlong-calls -I "../src/config/toytrain-config" -I "../src/packs/ATSAMD21G18A_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1863322120/plib_nvic.o.d" -o ${OBJECTDIR}/_ext/1863322120/plib_nvic.o ../src/config/toytrain-config/peripheral/nvic/plib_nvic.c  -DXPRJ_toytrain-config=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/2068134214/plib_nvmctrl.o: ../src/config/toytrain-config/peripheral/nvmctrl/plib_nvmctrl.c  .generated_files/flags/toytrain-config/4e96ce3d5052505e2eefdbb321b7a0b3bf44c66d .generated_files/flags/toytrain-config/ac02ed1e24fe11f0598702808dd8873bd1b1e619
	@${MKDIR} "${OBJECTDIR}/_ext/2068134214" 
	@${RM} ${OBJECTDIR}/_ext/2068134214/plib_nvmctrl.o.d 
	@${RM} ${OBJECTDIR}/_ext/2068134214/plib_nvmctrl.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb ${PACK_COMMON_OPTIONS}  -Os -ffunction-sections -mlong-calls -I "../src/config/toytrain-config" -I "../src/packs/ATSAMD21G18A_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2068134214/plib_nvmctrl.o.d" -o ${OBJECTDIR}/_ext/2068134214/plib_nvmctrl.o ../src/config/toytrain-config/peripheral/nvmctrl/plib_nvmctrl.c  -DXPRJ_toytrain-config=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1863268969/plib_port.o: ../src/config/toytrain-config/peripheral/port/plib_port.c  .generated_files/flags/toytrain-config/33f587d2b820ef0bdda6c5a033c525bd5460b98d .generated_files/flags/toytrain-config/ac02ed1e24fe11f0598702808dd8873bd1b1e619
	@${MKDIR} "${OBJECTDIR}/_ext/1863268969" 
	@${RM} ${OBJECTDIR}/_ext/1863268969/plib_port.o.d 
	@${RM} ${OBJECTDIR}/_ext/1863268969/plib_port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb ${PACK_COMMON_OPTIONS}  -Os -ffunction-sections -mlong-calls -I "../src/config/toytrain-config" -I "../src/packs/ATSAMD21G18A_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1863268969/plib_port.o.d" -o ${OBJECTDIR}/_ext/1863268969/plib_port.o ../src/config/toytrain-config/peripheral/port/plib_port.c  -DXPRJ_toytrain-config=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/332908461/plib_sercom2_usart.o: ../src/config/toytrain-config/peripheral/sercom/usart/plib_sercom2_usart.c  .generated_files/flags/toytrain-config/64b52bf100411005939ce2c9240f21e7c60068b8 .generated_files/flags/toytrain-config/ac02ed1e24fe11f0598702808dd8873bd1b1e619
	@${MKDIR} "${OBJECTDIR}/_ext/332908461" 
	@${RM} ${OBJECTDIR}/_ext/332908461/plib_sercom2_usart.o.d 
	@${RM} ${OBJECTDIR}/_ext/332908461/plib_sercom2_usart.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb ${PACK_COMMON_OPTIONS}  -Os -ffunction-sections -mlong-calls -I "../src/config/toytrain-config" -I "../src/packs/ATSAMD21G18A_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/332908461/plib_sercom2_usart.o.d" -o ${OBJECTDIR}/_ext/332908461/plib_sercom2_usart.o ../src/config/toytrain-config/peripheral/sercom/usart/plib_sercom2_usart.c  -DXPRJ_toytrain-config=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/332908461/plib_sercom0_usart.o: ../src/config/toytrain-config/peripheral/sercom/usart/plib_sercom0_usart.c  .generated_files/flags/toytrain-config/8db927cf33249ae162648a1a2103da900e8859c4 .generated_files/flags/toytrain-config/ac02ed1e24fe11f0598702808dd8873bd1b1e619
	@${MKDIR} "${OBJECTDIR}/_ext/332908461" 
	@${RM} ${OBJECTDIR}/_ext/332908461/plib_sercom0_usart.o.d 
	@${RM} ${OBJECTDIR}/_ext/332908461/plib_sercom0_usart.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb ${PACK_COMMON_OPTIONS}  -Os -ffunction-sections -mlong-calls -I "../src/config/toytrain-config" -I "../src/packs/ATSAMD21G18A_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/332908461/plib_sercom0_usart.o.d" -o ${OBJECTDIR}/_ext/332908461/plib_sercom0_usart.o ../src/config/toytrain-config/peripheral/sercom/usart/plib_sercom0_usart.c  -DXPRJ_toytrain-config=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1833659116/plib_systick.o: ../src/config/toytrain-config/peripheral/systick/plib_systick.c  .generated_files/flags/toytrain-config/719b34bad6b06a7a076de1babb03d93fbae99640 .generated_files/flags/toytrain-config/ac02ed1e24fe11f0598702808dd8873bd1b1e619
	@${MKDIR} "${OBJECTDIR}/_ext/1833659116" 
	@${RM} ${OBJECTDIR}/_ext/1833659116/plib_systick.o.d 
	@${RM} ${OBJECTDIR}/_ext/1833659116/plib_systick.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb ${PACK_COMMON_OPTIONS}  -Os -ffunction-sections -mlong-calls -I "../src/config/toytrain-config" -I "../src/packs/ATSAMD21G18A_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1833659116/plib_systick.o.d" -o ${OBJECTDIR}/_ext/1833659116/plib_systick.o ../src/config/toytrain-config/peripheral/systick/plib_systick.c  -DXPRJ_toytrain-config=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1963947771/plib_tc3.o: ../src/config/toytrain-config/peripheral/tc/plib_tc3.c  .generated_files/flags/toytrain-config/7a6f3503afd025356096efe15b175ca829491bf9 .generated_files/flags/toytrain-config/ac02ed1e24fe11f0598702808dd8873bd1b1e619
	@${MKDIR} "${OBJECTDIR}/_ext/1963947771" 
	@${RM} ${OBJECTDIR}/_ext/1963947771/plib_tc3.o.d 
	@${RM} ${OBJECTDIR}/_ext/1963947771/plib_tc3.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb ${PACK_COMMON_OPTIONS}  -Os -ffunction-sections -mlong-calls -I "../src/config/toytrain-config" -I "../src/packs/ATSAMD21G18A_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1963947771/plib_tc3.o.d" -o ${OBJECTDIR}/_ext/1963947771/plib_tc3.o ../src/config/toytrain-config/peripheral/tc/plib_tc3.c  -DXPRJ_toytrain-config=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1963947771/plib_tc4.o: ../src/config/toytrain-config/peripheral/tc/plib_tc4.c  .generated_files/flags/toytrain-config/21afb92a30db7f5a93aab2457f9eaf73dfa2e34e .generated_files/flags/toytrain-config/ac02ed1e24fe11f0598702808dd8873bd1b1e619
	@${MKDIR} "${OBJECTDIR}/_ext/1963947771" 
	@${RM} ${OBJECTDIR}/_ext/1963947771/plib_tc4.o.d 
	@${RM} ${OBJECTDIR}/_ext/1963947771/plib_tc4.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb ${PACK_COMMON_OPTIONS}  -Os -ffunction-sections -mlong-calls -I "../src/config/toytrain-config" -I "../src/packs/ATSAMD21G18A_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1963947771/plib_tc4.o.d" -o ${OBJECTDIR}/_ext/1963947771/plib_tc4.o ../src/config/toytrain-config/peripheral/tc/plib_tc4.c  -DXPRJ_toytrain-config=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/752838658/plib_tcc2.o: ../src/config/toytrain-config/peripheral/tcc/plib_tcc2.c  .generated_files/flags/toytrain-config/6d35a9ff23cfce63f0e5910bcbdd92d67ec32a7d .generated_files/flags/toytrain-config/ac02ed1e24fe11f0598702808dd8873bd1b1e619
	@${MKDIR} "${OBJECTDIR}/_ext/752838658" 
	@${RM} ${OBJECTDIR}/_ext/752838658/plib_tcc2.o.d 
	@${RM} ${OBJECTDIR}/_ext/752838658/plib_tcc2.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb ${PACK_COMMON_OPTIONS}  -Os -ffunction-sections -mlong-calls -I "../src/config/toytrain-config" -I "../src/packs/ATSAMD21G18A_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/752838658/plib_tcc2.o.d" -o ${OBJECTDIR}/_ext/752838658/plib_tcc2.o ../src/config/toytrain-config/peripheral/tcc/plib_tcc2.c  -DXPRJ_toytrain-config=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/752838658/plib_tcc0.o: ../src/config/toytrain-config/peripheral/tcc/plib_tcc0.c  .generated_files/flags/toytrain-config/433b80665faa2cbf8998a82f7363b701f78eaa43 .generated_files/flags/toytrain-config/ac02ed1e24fe11f0598702808dd8873bd1b1e619
	@${MKDIR} "${OBJECTDIR}/_ext/752838658" 
	@${RM} ${OBJECTDIR}/_ext/752838658/plib_tcc0.o.d 
	@${RM} ${OBJECTDIR}/_ext/752838658/plib_tcc0.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb ${PACK_COMMON_OPTIONS}  -Os -ffunction-sections -mlong-calls -I "../src/config/toytrain-config" -I "../src/packs/ATSAMD21G18A_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/752838658/plib_tcc0.o.d" -o ${OBJECTDIR}/_ext/752838658/plib_tcc0.o ../src/config/toytrain-config/peripheral/tcc/plib_tcc0.c  -DXPRJ_toytrain-config=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1675061921/gcc_monitor.o: /home/afzal/work-zone/MPlab-x/gcc/gcc-config/gcc_monitor.c  .generated_files/flags/toytrain-config/6e9b79e328192a933089592d77f017674f98871d .generated_files/flags/toytrain-config/ac02ed1e24fe11f0598702808dd8873bd1b1e619
	@${MKDIR} "${OBJECTDIR}/_ext/1675061921" 
	@${RM} ${OBJECTDIR}/_ext/1675061921/gcc_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/1675061921/gcc_monitor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb ${PACK_COMMON_OPTIONS}  -Os -ffunction-sections -mlong-calls -I "../src/config/toytrain-config" -I "../src/packs/ATSAMD21G18A_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1675061921/gcc_monitor.o.d" -o ${OBJECTDIR}/_ext/1675061921/gcc_monitor.o /home/afzal/work-zone/MPlab-x/gcc/gcc-config/gcc_monitor.c  -DXPRJ_toytrain-config=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1672823694/initialization.o: ../src/config/toytrain-config/initialization.c  .generated_files/flags/toytrain-config/e9e684d4b16495bb5e0267e02de4a51e0414a6a7 .generated_files/flags/toytrain-config/ac02ed1e24fe11f0598702808dd8873bd1b1e619
	@${MKDIR} "${OBJECTDIR}/_ext/1672823694" 
	@${RM} ${OBJECTDIR}/_ext/1672823694/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/1672823694/initialization.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb ${PACK_COMMON_OPTIONS}  -Os -ffunction-sections -mlong-calls -I "../src/config/toytrain-config" -I "../src/packs/ATSAMD21G18A_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1672823694/initialization.o.d" -o ${OBJECTDIR}/_ext/1672823694/initialization.o ../src/config/toytrain-config/initialization.c  -DXPRJ_toytrain-config=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1672823694/interrupts.o: ../src/config/toytrain-config/interrupts.c  .generated_files/flags/toytrain-config/3edfd11eb1970adb9de31ff156eacb8e89f01ab7 .generated_files/flags/toytrain-config/ac02ed1e24fe11f0598702808dd8873bd1b1e619
	@${MKDIR} "${OBJECTDIR}/_ext/1672823694" 
	@${RM} ${OBJECTDIR}/_ext/1672823694/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/1672823694/interrupts.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb ${PACK_COMMON_OPTIONS}  -Os -ffunction-sections -mlong-calls -I "../src/config/toytrain-config" -I "../src/packs/ATSAMD21G18A_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1672823694/interrupts.o.d" -o ${OBJECTDIR}/_ext/1672823694/interrupts.o ../src/config/toytrain-config/interrupts.c  -DXPRJ_toytrain-config=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1672823694/exceptions.o: ../src/config/toytrain-config/exceptions.c  .generated_files/flags/toytrain-config/2ae2f3c8559a333635d7972cd4c7ea1c705cb112 .generated_files/flags/toytrain-config/ac02ed1e24fe11f0598702808dd8873bd1b1e619
	@${MKDIR} "${OBJECTDIR}/_ext/1672823694" 
	@${RM} ${OBJECTDIR}/_ext/1672823694/exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/1672823694/exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb ${PACK_COMMON_OPTIONS}  -Os -ffunction-sections -mlong-calls -I "../src/config/toytrain-config" -I "../src/packs/ATSAMD21G18A_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1672823694/exceptions.o.d" -o ${OBJECTDIR}/_ext/1672823694/exceptions.o ../src/config/toytrain-config/exceptions.c  -DXPRJ_toytrain-config=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1672823694/libc_syscalls.o: ../src/config/toytrain-config/libc_syscalls.c  .generated_files/flags/toytrain-config/87660d8f3192dd52937b5c87785844a55ce81ab2 .generated_files/flags/toytrain-config/ac02ed1e24fe11f0598702808dd8873bd1b1e619
	@${MKDIR} "${OBJECTDIR}/_ext/1672823694" 
	@${RM} ${OBJECTDIR}/_ext/1672823694/libc_syscalls.o.d 
	@${RM} ${OBJECTDIR}/_ext/1672823694/libc_syscalls.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb ${PACK_COMMON_OPTIONS}  -Os -ffunction-sections -mlong-calls -I "../src/config/toytrain-config" -I "../src/packs/ATSAMD21G18A_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1672823694/libc_syscalls.o.d" -o ${OBJECTDIR}/_ext/1672823694/libc_syscalls.o ../src/config/toytrain-config/libc_syscalls.c  -DXPRJ_toytrain-config=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1675061921/startup_gcc.o: /home/afzal/work-zone/MPlab-x/gcc/gcc-config/startup_gcc.c  .generated_files/flags/toytrain-config/cb00ff37a6c096e9c73748f66c95c7c487126f60 .generated_files/flags/toytrain-config/ac02ed1e24fe11f0598702808dd8873bd1b1e619
	@${MKDIR} "${OBJECTDIR}/_ext/1675061921" 
	@${RM} ${OBJECTDIR}/_ext/1675061921/startup_gcc.o.d 
	@${RM} ${OBJECTDIR}/_ext/1675061921/startup_gcc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb ${PACK_COMMON_OPTIONS}  -Os -ffunction-sections -mlong-calls -I "../src/config/toytrain-config" -I "../src/packs/ATSAMD21G18A_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1675061921/startup_gcc.o.d" -o ${OBJECTDIR}/_ext/1675061921/startup_gcc.o /home/afzal/work-zone/MPlab-x/gcc/gcc-config/startup_gcc.c  -DXPRJ_toytrain-config=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  .generated_files/flags/toytrain-config/a58f47648f7cd9c3d9ac4e86f3870749e31e6b96 .generated_files/flags/toytrain-config/ac02ed1e24fe11f0598702808dd8873bd1b1e619
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb ${PACK_COMMON_OPTIONS}  -Os -ffunction-sections -mlong-calls -I "../src/config/toytrain-config" -I "../src/packs/ATSAMD21G18A_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c  -DXPRJ_toytrain-config=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1239984807/audio.o: /home/afzal/work-zone/MPlab-x/projects/toy_train_0.2/firmware/src/audio.c  .generated_files/flags/toytrain-config/11c740446109771b1aafea26886d84f866a3081a .generated_files/flags/toytrain-config/ac02ed1e24fe11f0598702808dd8873bd1b1e619
	@${MKDIR} "${OBJECTDIR}/_ext/1239984807" 
	@${RM} ${OBJECTDIR}/_ext/1239984807/audio.o.d 
	@${RM} ${OBJECTDIR}/_ext/1239984807/audio.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb ${PACK_COMMON_OPTIONS}  -Os -ffunction-sections -mlong-calls -I "../src/config/toytrain-config" -I "../src/packs/ATSAMD21G18A_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1239984807/audio.o.d" -o ${OBJECTDIR}/_ext/1239984807/audio.o /home/afzal/work-zone/MPlab-x/projects/toy_train_0.2/firmware/src/audio.c  -DXPRJ_toytrain-config=$(CND_CONF)  $(COMPARISON_BUILD) 
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compileCPP
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/ttrain.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    ../src/config/toytrain-config/ATSAMD21G18A.ld
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -mcpu=cortex-m0plus   -gdwarf-2  -D__$(MP_PROCESSOR_OPTION)__   -T"../src/config/toytrain-config/ATSAMD21G18A.ld"  -mthumb --specs=nosys.specs -Wl,-Map="dist/${CND_CONF}/${IMAGE_TYPE}/ttrain.X.${IMAGE_TYPE}.map"  -o dist/${CND_CONF}/${IMAGE_TYPE}/ttrain.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}      -DXPRJ_toytrain-config=$(CND_CONF)  $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1 -Wl,--gc-sections  
	
	
	
	
	
	
else
dist/${CND_CONF}/${IMAGE_TYPE}/ttrain.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   ../src/config/toytrain-config/ATSAMD21G18A.ld
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -mcpu=cortex-m0plus  -D__$(MP_PROCESSOR_OPTION)__   -T"../src/config/toytrain-config/ATSAMD21G18A.ld"  -mthumb --specs=nosys.specs -Wl,-Map="dist/${CND_CONF}/${IMAGE_TYPE}/ttrain.X.${IMAGE_TYPE}.map"  -o dist/${CND_CONF}/${IMAGE_TYPE}/ttrain.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}      -DXPRJ_toytrain-config=$(CND_CONF)  $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION) -Wl,--gc-sections  
	
	${MP_CC_DIR}/arm-none-eabi-objcopy -O ihex -R .eeprom -R .fuse -R .lock -R .signature "dist/${CND_CONF}/${IMAGE_TYPE}/ttrain.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}" "dist/${CND_CONF}/${IMAGE_TYPE}/ttrain.X.${IMAGE_TYPE}.hex"
	
	
	
	
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r build/toytrain-config
	${RM} -r dist/toytrain-config

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell "${PATH_TO_IDE_BIN}"mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif

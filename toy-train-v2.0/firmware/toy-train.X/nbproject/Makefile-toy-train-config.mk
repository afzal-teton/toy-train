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
ifeq "$(wildcard nbproject/Makefile-local-toy-train-config.mk)" "nbproject/Makefile-local-toy-train-config.mk"
include nbproject/Makefile-local-toy-train-config.mk
endif
endif

# Environment
MKDIR=mkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=toy-train-config
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/toy-train.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/toy-train.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
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
SOURCEFILES_QUOTED_IF_SPACED=../src/config/toy-train-config/peripheral/adc/plib_adc.c ../src/config/toy-train-config/peripheral/clock/plib_clock.c ../src/config/toy-train-config/peripheral/dac/plib_dac.c ../src/config/toy-train-config/peripheral/dmac/plib_dmac.c ../src/config/toy-train-config/peripheral/evsys/plib_evsys.c ../src/config/toy-train-config/peripheral/nvic/plib_nvic.c ../src/config/toy-train-config/peripheral/nvmctrl/plib_nvmctrl.c ../src/config/toy-train-config/peripheral/port/plib_port.c ../src/config/toy-train-config/peripheral/sercom/usart/plib_sercom2_usart.c ../src/config/toy-train-config/peripheral/sercom/usart/plib_sercom0_usart.c ../src/config/toy-train-config/peripheral/systick/plib_systick.c ../src/config/toy-train-config/peripheral/tc/plib_tc3.c ../src/config/toy-train-config/peripheral/tc/plib_tc4.c ../src/config/toy-train-config/peripheral/tcc/plib_tcc2.c ../src/config/toy-train-config/peripheral/tcc/plib_tcc0.c ../src/config/toy-train-config/peripheral/wdt/plib_wdt.c ../../../../../gcc/src_gcc_toolchain/gcc_monitor.c ../src/config/toy-train-config/initialization.c ../src/config/toy-train-config/interrupts.c ../src/config/toy-train-config/exceptions.c ../../../../../gcc/src_gcc_toolchain/libc_syscalls.c ../../../../../gcc/src_gcc_toolchain/startup_gcc.c ../src/sampleMusicTwo.c ../src/sampleMusicOne.c ../src/powerOnMusic.c ../src/powerOffMusic.c ../src/hornMusic.c ../src/carWashMusic.c ../src/bleOnMusic.c ../src/bleOffMusic.c ../src/bellMusic.c ../src/music.c ../src/rgbLed.c ../src/motorControl.c ../src/main.c ../src/hallSensor.c ../src/colorDetect.c ../src/bluetooth.c ../src/audio.c ../src/AppGlobals.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/1312487053/plib_adc.o ${OBJECTDIR}/_ext/1422427169/plib_clock.o ${OBJECTDIR}/_ext/1312484263/plib_dac.o ${OBJECTDIR}/_ext/2032294920/plib_dmac.o ${OBJECTDIR}/_ext/1424576655/plib_evsys.o ${OBJECTDIR}/_ext/2031988113/plib_nvic.o ${OBJECTDIR}/_ext/1684995357/plib_nvmctrl.o ${OBJECTDIR}/_ext/2031934962/plib_port.o ${OBJECTDIR}/_ext/2071837988/plib_sercom2_usart.o ${OBJECTDIR}/_ext/2071837988/plib_sercom0_usart.o ${OBJECTDIR}/_ext/1450520259/plib_systick.o ${OBJECTDIR}/_ext/873621700/plib_tc3.o ${OBJECTDIR}/_ext/873621700/plib_tc4.o ${OBJECTDIR}/_ext/1312468825/plib_tcc2.o ${OBJECTDIR}/_ext/1312468825/plib_tcc0.o ${OBJECTDIR}/_ext/1312465894/plib_wdt.o ${OBJECTDIR}/_ext/336147711/gcc_monitor.o ${OBJECTDIR}/_ext/1423632105/initialization.o ${OBJECTDIR}/_ext/1423632105/interrupts.o ${OBJECTDIR}/_ext/1423632105/exceptions.o ${OBJECTDIR}/_ext/336147711/libc_syscalls.o ${OBJECTDIR}/_ext/336147711/startup_gcc.o ${OBJECTDIR}/_ext/1360937237/sampleMusicTwo.o ${OBJECTDIR}/_ext/1360937237/sampleMusicOne.o ${OBJECTDIR}/_ext/1360937237/powerOnMusic.o ${OBJECTDIR}/_ext/1360937237/powerOffMusic.o ${OBJECTDIR}/_ext/1360937237/hornMusic.o ${OBJECTDIR}/_ext/1360937237/carWashMusic.o ${OBJECTDIR}/_ext/1360937237/bleOnMusic.o ${OBJECTDIR}/_ext/1360937237/bleOffMusic.o ${OBJECTDIR}/_ext/1360937237/bellMusic.o ${OBJECTDIR}/_ext/1360937237/music.o ${OBJECTDIR}/_ext/1360937237/rgbLed.o ${OBJECTDIR}/_ext/1360937237/motorControl.o ${OBJECTDIR}/_ext/1360937237/main.o ${OBJECTDIR}/_ext/1360937237/hallSensor.o ${OBJECTDIR}/_ext/1360937237/colorDetect.o ${OBJECTDIR}/_ext/1360937237/bluetooth.o ${OBJECTDIR}/_ext/1360937237/audio.o ${OBJECTDIR}/_ext/1360937237/AppGlobals.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/1312487053/plib_adc.o.d ${OBJECTDIR}/_ext/1422427169/plib_clock.o.d ${OBJECTDIR}/_ext/1312484263/plib_dac.o.d ${OBJECTDIR}/_ext/2032294920/plib_dmac.o.d ${OBJECTDIR}/_ext/1424576655/plib_evsys.o.d ${OBJECTDIR}/_ext/2031988113/plib_nvic.o.d ${OBJECTDIR}/_ext/1684995357/plib_nvmctrl.o.d ${OBJECTDIR}/_ext/2031934962/plib_port.o.d ${OBJECTDIR}/_ext/2071837988/plib_sercom2_usart.o.d ${OBJECTDIR}/_ext/2071837988/plib_sercom0_usart.o.d ${OBJECTDIR}/_ext/1450520259/plib_systick.o.d ${OBJECTDIR}/_ext/873621700/plib_tc3.o.d ${OBJECTDIR}/_ext/873621700/plib_tc4.o.d ${OBJECTDIR}/_ext/1312468825/plib_tcc2.o.d ${OBJECTDIR}/_ext/1312468825/plib_tcc0.o.d ${OBJECTDIR}/_ext/1312465894/plib_wdt.o.d ${OBJECTDIR}/_ext/336147711/gcc_monitor.o.d ${OBJECTDIR}/_ext/1423632105/initialization.o.d ${OBJECTDIR}/_ext/1423632105/interrupts.o.d ${OBJECTDIR}/_ext/1423632105/exceptions.o.d ${OBJECTDIR}/_ext/336147711/libc_syscalls.o.d ${OBJECTDIR}/_ext/336147711/startup_gcc.o.d ${OBJECTDIR}/_ext/1360937237/sampleMusicTwo.o.d ${OBJECTDIR}/_ext/1360937237/sampleMusicOne.o.d ${OBJECTDIR}/_ext/1360937237/powerOnMusic.o.d ${OBJECTDIR}/_ext/1360937237/powerOffMusic.o.d ${OBJECTDIR}/_ext/1360937237/hornMusic.o.d ${OBJECTDIR}/_ext/1360937237/carWashMusic.o.d ${OBJECTDIR}/_ext/1360937237/bleOnMusic.o.d ${OBJECTDIR}/_ext/1360937237/bleOffMusic.o.d ${OBJECTDIR}/_ext/1360937237/bellMusic.o.d ${OBJECTDIR}/_ext/1360937237/music.o.d ${OBJECTDIR}/_ext/1360937237/rgbLed.o.d ${OBJECTDIR}/_ext/1360937237/motorControl.o.d ${OBJECTDIR}/_ext/1360937237/main.o.d ${OBJECTDIR}/_ext/1360937237/hallSensor.o.d ${OBJECTDIR}/_ext/1360937237/colorDetect.o.d ${OBJECTDIR}/_ext/1360937237/bluetooth.o.d ${OBJECTDIR}/_ext/1360937237/audio.o.d ${OBJECTDIR}/_ext/1360937237/AppGlobals.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/1312487053/plib_adc.o ${OBJECTDIR}/_ext/1422427169/plib_clock.o ${OBJECTDIR}/_ext/1312484263/plib_dac.o ${OBJECTDIR}/_ext/2032294920/plib_dmac.o ${OBJECTDIR}/_ext/1424576655/plib_evsys.o ${OBJECTDIR}/_ext/2031988113/plib_nvic.o ${OBJECTDIR}/_ext/1684995357/plib_nvmctrl.o ${OBJECTDIR}/_ext/2031934962/plib_port.o ${OBJECTDIR}/_ext/2071837988/plib_sercom2_usart.o ${OBJECTDIR}/_ext/2071837988/plib_sercom0_usart.o ${OBJECTDIR}/_ext/1450520259/plib_systick.o ${OBJECTDIR}/_ext/873621700/plib_tc3.o ${OBJECTDIR}/_ext/873621700/plib_tc4.o ${OBJECTDIR}/_ext/1312468825/plib_tcc2.o ${OBJECTDIR}/_ext/1312468825/plib_tcc0.o ${OBJECTDIR}/_ext/1312465894/plib_wdt.o ${OBJECTDIR}/_ext/336147711/gcc_monitor.o ${OBJECTDIR}/_ext/1423632105/initialization.o ${OBJECTDIR}/_ext/1423632105/interrupts.o ${OBJECTDIR}/_ext/1423632105/exceptions.o ${OBJECTDIR}/_ext/336147711/libc_syscalls.o ${OBJECTDIR}/_ext/336147711/startup_gcc.o ${OBJECTDIR}/_ext/1360937237/sampleMusicTwo.o ${OBJECTDIR}/_ext/1360937237/sampleMusicOne.o ${OBJECTDIR}/_ext/1360937237/powerOnMusic.o ${OBJECTDIR}/_ext/1360937237/powerOffMusic.o ${OBJECTDIR}/_ext/1360937237/hornMusic.o ${OBJECTDIR}/_ext/1360937237/carWashMusic.o ${OBJECTDIR}/_ext/1360937237/bleOnMusic.o ${OBJECTDIR}/_ext/1360937237/bleOffMusic.o ${OBJECTDIR}/_ext/1360937237/bellMusic.o ${OBJECTDIR}/_ext/1360937237/music.o ${OBJECTDIR}/_ext/1360937237/rgbLed.o ${OBJECTDIR}/_ext/1360937237/motorControl.o ${OBJECTDIR}/_ext/1360937237/main.o ${OBJECTDIR}/_ext/1360937237/hallSensor.o ${OBJECTDIR}/_ext/1360937237/colorDetect.o ${OBJECTDIR}/_ext/1360937237/bluetooth.o ${OBJECTDIR}/_ext/1360937237/audio.o ${OBJECTDIR}/_ext/1360937237/AppGlobals.o

# Source Files
SOURCEFILES=../src/config/toy-train-config/peripheral/adc/plib_adc.c ../src/config/toy-train-config/peripheral/clock/plib_clock.c ../src/config/toy-train-config/peripheral/dac/plib_dac.c ../src/config/toy-train-config/peripheral/dmac/plib_dmac.c ../src/config/toy-train-config/peripheral/evsys/plib_evsys.c ../src/config/toy-train-config/peripheral/nvic/plib_nvic.c ../src/config/toy-train-config/peripheral/nvmctrl/plib_nvmctrl.c ../src/config/toy-train-config/peripheral/port/plib_port.c ../src/config/toy-train-config/peripheral/sercom/usart/plib_sercom2_usart.c ../src/config/toy-train-config/peripheral/sercom/usart/plib_sercom0_usart.c ../src/config/toy-train-config/peripheral/systick/plib_systick.c ../src/config/toy-train-config/peripheral/tc/plib_tc3.c ../src/config/toy-train-config/peripheral/tc/plib_tc4.c ../src/config/toy-train-config/peripheral/tcc/plib_tcc2.c ../src/config/toy-train-config/peripheral/tcc/plib_tcc0.c ../src/config/toy-train-config/peripheral/wdt/plib_wdt.c ../../../../../gcc/src_gcc_toolchain/gcc_monitor.c ../src/config/toy-train-config/initialization.c ../src/config/toy-train-config/interrupts.c ../src/config/toy-train-config/exceptions.c ../../../../../gcc/src_gcc_toolchain/libc_syscalls.c ../../../../../gcc/src_gcc_toolchain/startup_gcc.c ../src/sampleMusicTwo.c ../src/sampleMusicOne.c ../src/powerOnMusic.c ../src/powerOffMusic.c ../src/hornMusic.c ../src/carWashMusic.c ../src/bleOnMusic.c ../src/bleOffMusic.c ../src/bellMusic.c ../src/music.c ../src/rgbLed.c ../src/motorControl.c ../src/main.c ../src/hallSensor.c ../src/colorDetect.c ../src/bluetooth.c ../src/audio.c ../src/AppGlobals.c

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
	${MAKE}  -f nbproject/Makefile-toy-train-config.mk ${DISTDIR}/toy-train.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

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
${OBJECTDIR}/_ext/1312487053/plib_adc.o: ../src/config/toy-train-config/peripheral/adc/plib_adc.c  .generated_files/flags/toy-train-config/7ee57afdfaa110f66959b6a85e07ade31b0cd340 .generated_files/flags/toy-train-config/6e6727ac753fc01c5df2b745c8483e752d55e4da
	@${MKDIR} "${OBJECTDIR}/_ext/1312487053" 
	@${RM} ${OBJECTDIR}/_ext/1312487053/plib_adc.o.d 
	@${RM} ${OBJECTDIR}/_ext/1312487053/plib_adc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus -g -D__DEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb ${PACK_COMMON_OPTIONS}  -Os -ffunction-sections -mlong-calls -I "../src/config/toy-train-config" -I "../src/packs/ATSAMD21G18A_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1312487053/plib_adc.o.d" -o ${OBJECTDIR}/_ext/1312487053/plib_adc.o ../src/config/toy-train-config/peripheral/adc/plib_adc.c  -DXPRJ_toy-train-config=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1422427169/plib_clock.o: ../src/config/toy-train-config/peripheral/clock/plib_clock.c  .generated_files/flags/toy-train-config/e33801296b81ad3f5662aecdcfd9df13810c2691 .generated_files/flags/toy-train-config/6e6727ac753fc01c5df2b745c8483e752d55e4da
	@${MKDIR} "${OBJECTDIR}/_ext/1422427169" 
	@${RM} ${OBJECTDIR}/_ext/1422427169/plib_clock.o.d 
	@${RM} ${OBJECTDIR}/_ext/1422427169/plib_clock.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus -g -D__DEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb ${PACK_COMMON_OPTIONS}  -Os -ffunction-sections -mlong-calls -I "../src/config/toy-train-config" -I "../src/packs/ATSAMD21G18A_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1422427169/plib_clock.o.d" -o ${OBJECTDIR}/_ext/1422427169/plib_clock.o ../src/config/toy-train-config/peripheral/clock/plib_clock.c  -DXPRJ_toy-train-config=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1312484263/plib_dac.o: ../src/config/toy-train-config/peripheral/dac/plib_dac.c  .generated_files/flags/toy-train-config/bf1ba0fe813512d91b5aa4638e4323755a6cb21d .generated_files/flags/toy-train-config/6e6727ac753fc01c5df2b745c8483e752d55e4da
	@${MKDIR} "${OBJECTDIR}/_ext/1312484263" 
	@${RM} ${OBJECTDIR}/_ext/1312484263/plib_dac.o.d 
	@${RM} ${OBJECTDIR}/_ext/1312484263/plib_dac.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus -g -D__DEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb ${PACK_COMMON_OPTIONS}  -Os -ffunction-sections -mlong-calls -I "../src/config/toy-train-config" -I "../src/packs/ATSAMD21G18A_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1312484263/plib_dac.o.d" -o ${OBJECTDIR}/_ext/1312484263/plib_dac.o ../src/config/toy-train-config/peripheral/dac/plib_dac.c  -DXPRJ_toy-train-config=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/2032294920/plib_dmac.o: ../src/config/toy-train-config/peripheral/dmac/plib_dmac.c  .generated_files/flags/toy-train-config/70c2f7b299478eef8f2efd8022ffc0281311b540 .generated_files/flags/toy-train-config/6e6727ac753fc01c5df2b745c8483e752d55e4da
	@${MKDIR} "${OBJECTDIR}/_ext/2032294920" 
	@${RM} ${OBJECTDIR}/_ext/2032294920/plib_dmac.o.d 
	@${RM} ${OBJECTDIR}/_ext/2032294920/plib_dmac.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus -g -D__DEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb ${PACK_COMMON_OPTIONS}  -Os -ffunction-sections -mlong-calls -I "../src/config/toy-train-config" -I "../src/packs/ATSAMD21G18A_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2032294920/plib_dmac.o.d" -o ${OBJECTDIR}/_ext/2032294920/plib_dmac.o ../src/config/toy-train-config/peripheral/dmac/plib_dmac.c  -DXPRJ_toy-train-config=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1424576655/plib_evsys.o: ../src/config/toy-train-config/peripheral/evsys/plib_evsys.c  .generated_files/flags/toy-train-config/b4d5f28f22ffb80f71869eae3333981d8f1b764e .generated_files/flags/toy-train-config/6e6727ac753fc01c5df2b745c8483e752d55e4da
	@${MKDIR} "${OBJECTDIR}/_ext/1424576655" 
	@${RM} ${OBJECTDIR}/_ext/1424576655/plib_evsys.o.d 
	@${RM} ${OBJECTDIR}/_ext/1424576655/plib_evsys.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus -g -D__DEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb ${PACK_COMMON_OPTIONS}  -Os -ffunction-sections -mlong-calls -I "../src/config/toy-train-config" -I "../src/packs/ATSAMD21G18A_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1424576655/plib_evsys.o.d" -o ${OBJECTDIR}/_ext/1424576655/plib_evsys.o ../src/config/toy-train-config/peripheral/evsys/plib_evsys.c  -DXPRJ_toy-train-config=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/2031988113/plib_nvic.o: ../src/config/toy-train-config/peripheral/nvic/plib_nvic.c  .generated_files/flags/toy-train-config/ba32f4178cdc7a30ec8ec1559a2445a27a2fecfd .generated_files/flags/toy-train-config/6e6727ac753fc01c5df2b745c8483e752d55e4da
	@${MKDIR} "${OBJECTDIR}/_ext/2031988113" 
	@${RM} ${OBJECTDIR}/_ext/2031988113/plib_nvic.o.d 
	@${RM} ${OBJECTDIR}/_ext/2031988113/plib_nvic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus -g -D__DEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb ${PACK_COMMON_OPTIONS}  -Os -ffunction-sections -mlong-calls -I "../src/config/toy-train-config" -I "../src/packs/ATSAMD21G18A_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2031988113/plib_nvic.o.d" -o ${OBJECTDIR}/_ext/2031988113/plib_nvic.o ../src/config/toy-train-config/peripheral/nvic/plib_nvic.c  -DXPRJ_toy-train-config=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1684995357/plib_nvmctrl.o: ../src/config/toy-train-config/peripheral/nvmctrl/plib_nvmctrl.c  .generated_files/flags/toy-train-config/1447454b40a3ca404cd095c8fa15953b26383834 .generated_files/flags/toy-train-config/6e6727ac753fc01c5df2b745c8483e752d55e4da
	@${MKDIR} "${OBJECTDIR}/_ext/1684995357" 
	@${RM} ${OBJECTDIR}/_ext/1684995357/plib_nvmctrl.o.d 
	@${RM} ${OBJECTDIR}/_ext/1684995357/plib_nvmctrl.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus -g -D__DEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb ${PACK_COMMON_OPTIONS}  -Os -ffunction-sections -mlong-calls -I "../src/config/toy-train-config" -I "../src/packs/ATSAMD21G18A_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1684995357/plib_nvmctrl.o.d" -o ${OBJECTDIR}/_ext/1684995357/plib_nvmctrl.o ../src/config/toy-train-config/peripheral/nvmctrl/plib_nvmctrl.c  -DXPRJ_toy-train-config=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/2031934962/plib_port.o: ../src/config/toy-train-config/peripheral/port/plib_port.c  .generated_files/flags/toy-train-config/998b1f6d9a8cd3a58941a7269205f44ad7865a9c .generated_files/flags/toy-train-config/6e6727ac753fc01c5df2b745c8483e752d55e4da
	@${MKDIR} "${OBJECTDIR}/_ext/2031934962" 
	@${RM} ${OBJECTDIR}/_ext/2031934962/plib_port.o.d 
	@${RM} ${OBJECTDIR}/_ext/2031934962/plib_port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus -g -D__DEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb ${PACK_COMMON_OPTIONS}  -Os -ffunction-sections -mlong-calls -I "../src/config/toy-train-config" -I "../src/packs/ATSAMD21G18A_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2031934962/plib_port.o.d" -o ${OBJECTDIR}/_ext/2031934962/plib_port.o ../src/config/toy-train-config/peripheral/port/plib_port.c  -DXPRJ_toy-train-config=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/2071837988/plib_sercom2_usart.o: ../src/config/toy-train-config/peripheral/sercom/usart/plib_sercom2_usart.c  .generated_files/flags/toy-train-config/c4d25ebedb5f2778465a10037f828ce229819834 .generated_files/flags/toy-train-config/6e6727ac753fc01c5df2b745c8483e752d55e4da
	@${MKDIR} "${OBJECTDIR}/_ext/2071837988" 
	@${RM} ${OBJECTDIR}/_ext/2071837988/plib_sercom2_usart.o.d 
	@${RM} ${OBJECTDIR}/_ext/2071837988/plib_sercom2_usart.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus -g -D__DEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb ${PACK_COMMON_OPTIONS}  -Os -ffunction-sections -mlong-calls -I "../src/config/toy-train-config" -I "../src/packs/ATSAMD21G18A_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2071837988/plib_sercom2_usart.o.d" -o ${OBJECTDIR}/_ext/2071837988/plib_sercom2_usart.o ../src/config/toy-train-config/peripheral/sercom/usart/plib_sercom2_usart.c  -DXPRJ_toy-train-config=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/2071837988/plib_sercom0_usart.o: ../src/config/toy-train-config/peripheral/sercom/usart/plib_sercom0_usart.c  .generated_files/flags/toy-train-config/e4759a38673044736cb3fa579027de7c2c4e3008 .generated_files/flags/toy-train-config/6e6727ac753fc01c5df2b745c8483e752d55e4da
	@${MKDIR} "${OBJECTDIR}/_ext/2071837988" 
	@${RM} ${OBJECTDIR}/_ext/2071837988/plib_sercom0_usart.o.d 
	@${RM} ${OBJECTDIR}/_ext/2071837988/plib_sercom0_usart.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus -g -D__DEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb ${PACK_COMMON_OPTIONS}  -Os -ffunction-sections -mlong-calls -I "../src/config/toy-train-config" -I "../src/packs/ATSAMD21G18A_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2071837988/plib_sercom0_usart.o.d" -o ${OBJECTDIR}/_ext/2071837988/plib_sercom0_usart.o ../src/config/toy-train-config/peripheral/sercom/usart/plib_sercom0_usart.c  -DXPRJ_toy-train-config=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1450520259/plib_systick.o: ../src/config/toy-train-config/peripheral/systick/plib_systick.c  .generated_files/flags/toy-train-config/15318bea9e9bb8966d45b90bfb035ad0b1898b39 .generated_files/flags/toy-train-config/6e6727ac753fc01c5df2b745c8483e752d55e4da
	@${MKDIR} "${OBJECTDIR}/_ext/1450520259" 
	@${RM} ${OBJECTDIR}/_ext/1450520259/plib_systick.o.d 
	@${RM} ${OBJECTDIR}/_ext/1450520259/plib_systick.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus -g -D__DEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb ${PACK_COMMON_OPTIONS}  -Os -ffunction-sections -mlong-calls -I "../src/config/toy-train-config" -I "../src/packs/ATSAMD21G18A_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1450520259/plib_systick.o.d" -o ${OBJECTDIR}/_ext/1450520259/plib_systick.o ../src/config/toy-train-config/peripheral/systick/plib_systick.c  -DXPRJ_toy-train-config=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/873621700/plib_tc3.o: ../src/config/toy-train-config/peripheral/tc/plib_tc3.c  .generated_files/flags/toy-train-config/82634d4d60ad724e0e4199bba96ef02c67792b1e .generated_files/flags/toy-train-config/6e6727ac753fc01c5df2b745c8483e752d55e4da
	@${MKDIR} "${OBJECTDIR}/_ext/873621700" 
	@${RM} ${OBJECTDIR}/_ext/873621700/plib_tc3.o.d 
	@${RM} ${OBJECTDIR}/_ext/873621700/plib_tc3.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus -g -D__DEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb ${PACK_COMMON_OPTIONS}  -Os -ffunction-sections -mlong-calls -I "../src/config/toy-train-config" -I "../src/packs/ATSAMD21G18A_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/873621700/plib_tc3.o.d" -o ${OBJECTDIR}/_ext/873621700/plib_tc3.o ../src/config/toy-train-config/peripheral/tc/plib_tc3.c  -DXPRJ_toy-train-config=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/873621700/plib_tc4.o: ../src/config/toy-train-config/peripheral/tc/plib_tc4.c  .generated_files/flags/toy-train-config/8f7e5548a2231aa3e59699ec347feb2d64c0226d .generated_files/flags/toy-train-config/6e6727ac753fc01c5df2b745c8483e752d55e4da
	@${MKDIR} "${OBJECTDIR}/_ext/873621700" 
	@${RM} ${OBJECTDIR}/_ext/873621700/plib_tc4.o.d 
	@${RM} ${OBJECTDIR}/_ext/873621700/plib_tc4.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus -g -D__DEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb ${PACK_COMMON_OPTIONS}  -Os -ffunction-sections -mlong-calls -I "../src/config/toy-train-config" -I "../src/packs/ATSAMD21G18A_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/873621700/plib_tc4.o.d" -o ${OBJECTDIR}/_ext/873621700/plib_tc4.o ../src/config/toy-train-config/peripheral/tc/plib_tc4.c  -DXPRJ_toy-train-config=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1312468825/plib_tcc2.o: ../src/config/toy-train-config/peripheral/tcc/plib_tcc2.c  .generated_files/flags/toy-train-config/49cc078bebd45572aab124527d5af020822f1ed5 .generated_files/flags/toy-train-config/6e6727ac753fc01c5df2b745c8483e752d55e4da
	@${MKDIR} "${OBJECTDIR}/_ext/1312468825" 
	@${RM} ${OBJECTDIR}/_ext/1312468825/plib_tcc2.o.d 
	@${RM} ${OBJECTDIR}/_ext/1312468825/plib_tcc2.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus -g -D__DEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb ${PACK_COMMON_OPTIONS}  -Os -ffunction-sections -mlong-calls -I "../src/config/toy-train-config" -I "../src/packs/ATSAMD21G18A_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1312468825/plib_tcc2.o.d" -o ${OBJECTDIR}/_ext/1312468825/plib_tcc2.o ../src/config/toy-train-config/peripheral/tcc/plib_tcc2.c  -DXPRJ_toy-train-config=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1312468825/plib_tcc0.o: ../src/config/toy-train-config/peripheral/tcc/plib_tcc0.c  .generated_files/flags/toy-train-config/2a63f38c659e92d15352d94b65d7602f6dd3b357 .generated_files/flags/toy-train-config/6e6727ac753fc01c5df2b745c8483e752d55e4da
	@${MKDIR} "${OBJECTDIR}/_ext/1312468825" 
	@${RM} ${OBJECTDIR}/_ext/1312468825/plib_tcc0.o.d 
	@${RM} ${OBJECTDIR}/_ext/1312468825/plib_tcc0.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus -g -D__DEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb ${PACK_COMMON_OPTIONS}  -Os -ffunction-sections -mlong-calls -I "../src/config/toy-train-config" -I "../src/packs/ATSAMD21G18A_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1312468825/plib_tcc0.o.d" -o ${OBJECTDIR}/_ext/1312468825/plib_tcc0.o ../src/config/toy-train-config/peripheral/tcc/plib_tcc0.c  -DXPRJ_toy-train-config=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1312465894/plib_wdt.o: ../src/config/toy-train-config/peripheral/wdt/plib_wdt.c  .generated_files/flags/toy-train-config/f6e1d79ba2eb0f10c510ddc5d207a11eda3bb65f .generated_files/flags/toy-train-config/6e6727ac753fc01c5df2b745c8483e752d55e4da
	@${MKDIR} "${OBJECTDIR}/_ext/1312465894" 
	@${RM} ${OBJECTDIR}/_ext/1312465894/plib_wdt.o.d 
	@${RM} ${OBJECTDIR}/_ext/1312465894/plib_wdt.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus -g -D__DEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb ${PACK_COMMON_OPTIONS}  -Os -ffunction-sections -mlong-calls -I "../src/config/toy-train-config" -I "../src/packs/ATSAMD21G18A_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1312465894/plib_wdt.o.d" -o ${OBJECTDIR}/_ext/1312465894/plib_wdt.o ../src/config/toy-train-config/peripheral/wdt/plib_wdt.c  -DXPRJ_toy-train-config=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/336147711/gcc_monitor.o: ../../../../../gcc/src_gcc_toolchain/gcc_monitor.c  .generated_files/flags/toy-train-config/c7d908b4d5d81c60f6f4725a80110431e5b2914c .generated_files/flags/toy-train-config/6e6727ac753fc01c5df2b745c8483e752d55e4da
	@${MKDIR} "${OBJECTDIR}/_ext/336147711" 
	@${RM} ${OBJECTDIR}/_ext/336147711/gcc_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/336147711/gcc_monitor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus -g -D__DEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb ${PACK_COMMON_OPTIONS}  -Os -ffunction-sections -mlong-calls -I "../src/config/toy-train-config" -I "../src/packs/ATSAMD21G18A_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/336147711/gcc_monitor.o.d" -o ${OBJECTDIR}/_ext/336147711/gcc_monitor.o ../../../../../gcc/src_gcc_toolchain/gcc_monitor.c  -DXPRJ_toy-train-config=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1423632105/initialization.o: ../src/config/toy-train-config/initialization.c  .generated_files/flags/toy-train-config/e5e0952b5183c89af900d7024ca0aad94ca322a8 .generated_files/flags/toy-train-config/6e6727ac753fc01c5df2b745c8483e752d55e4da
	@${MKDIR} "${OBJECTDIR}/_ext/1423632105" 
	@${RM} ${OBJECTDIR}/_ext/1423632105/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/1423632105/initialization.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus -g -D__DEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb ${PACK_COMMON_OPTIONS}  -Os -ffunction-sections -mlong-calls -I "../src/config/toy-train-config" -I "../src/packs/ATSAMD21G18A_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1423632105/initialization.o.d" -o ${OBJECTDIR}/_ext/1423632105/initialization.o ../src/config/toy-train-config/initialization.c  -DXPRJ_toy-train-config=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1423632105/interrupts.o: ../src/config/toy-train-config/interrupts.c  .generated_files/flags/toy-train-config/dc805706ac694e16b39025b150643d39f62aa2 .generated_files/flags/toy-train-config/6e6727ac753fc01c5df2b745c8483e752d55e4da
	@${MKDIR} "${OBJECTDIR}/_ext/1423632105" 
	@${RM} ${OBJECTDIR}/_ext/1423632105/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/1423632105/interrupts.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus -g -D__DEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb ${PACK_COMMON_OPTIONS}  -Os -ffunction-sections -mlong-calls -I "../src/config/toy-train-config" -I "../src/packs/ATSAMD21G18A_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1423632105/interrupts.o.d" -o ${OBJECTDIR}/_ext/1423632105/interrupts.o ../src/config/toy-train-config/interrupts.c  -DXPRJ_toy-train-config=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1423632105/exceptions.o: ../src/config/toy-train-config/exceptions.c  .generated_files/flags/toy-train-config/33b769059c2765a4965e4231bc69f77e78c02368 .generated_files/flags/toy-train-config/6e6727ac753fc01c5df2b745c8483e752d55e4da
	@${MKDIR} "${OBJECTDIR}/_ext/1423632105" 
	@${RM} ${OBJECTDIR}/_ext/1423632105/exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/1423632105/exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus -g -D__DEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb ${PACK_COMMON_OPTIONS}  -Os -ffunction-sections -mlong-calls -I "../src/config/toy-train-config" -I "../src/packs/ATSAMD21G18A_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1423632105/exceptions.o.d" -o ${OBJECTDIR}/_ext/1423632105/exceptions.o ../src/config/toy-train-config/exceptions.c  -DXPRJ_toy-train-config=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/336147711/libc_syscalls.o: ../../../../../gcc/src_gcc_toolchain/libc_syscalls.c  .generated_files/flags/toy-train-config/58bbf69b82209abe8492e4b70fcc5e02d8be9633 .generated_files/flags/toy-train-config/6e6727ac753fc01c5df2b745c8483e752d55e4da
	@${MKDIR} "${OBJECTDIR}/_ext/336147711" 
	@${RM} ${OBJECTDIR}/_ext/336147711/libc_syscalls.o.d 
	@${RM} ${OBJECTDIR}/_ext/336147711/libc_syscalls.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus -g -D__DEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb ${PACK_COMMON_OPTIONS}  -Os -ffunction-sections -mlong-calls -I "../src/config/toy-train-config" -I "../src/packs/ATSAMD21G18A_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/336147711/libc_syscalls.o.d" -o ${OBJECTDIR}/_ext/336147711/libc_syscalls.o ../../../../../gcc/src_gcc_toolchain/libc_syscalls.c  -DXPRJ_toy-train-config=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/336147711/startup_gcc.o: ../../../../../gcc/src_gcc_toolchain/startup_gcc.c  .generated_files/flags/toy-train-config/853e40eb9225de236a6b83e59fac13c7c4f6b66c .generated_files/flags/toy-train-config/6e6727ac753fc01c5df2b745c8483e752d55e4da
	@${MKDIR} "${OBJECTDIR}/_ext/336147711" 
	@${RM} ${OBJECTDIR}/_ext/336147711/startup_gcc.o.d 
	@${RM} ${OBJECTDIR}/_ext/336147711/startup_gcc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus -g -D__DEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb ${PACK_COMMON_OPTIONS}  -Os -ffunction-sections -mlong-calls -I "../src/config/toy-train-config" -I "../src/packs/ATSAMD21G18A_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/336147711/startup_gcc.o.d" -o ${OBJECTDIR}/_ext/336147711/startup_gcc.o ../../../../../gcc/src_gcc_toolchain/startup_gcc.c  -DXPRJ_toy-train-config=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1360937237/sampleMusicTwo.o: ../src/sampleMusicTwo.c  .generated_files/flags/toy-train-config/6b91a922391bf24471d39966e0b5f0da3826aca .generated_files/flags/toy-train-config/6e6727ac753fc01c5df2b745c8483e752d55e4da
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/sampleMusicTwo.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/sampleMusicTwo.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus -g -D__DEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb ${PACK_COMMON_OPTIONS}  -Os -ffunction-sections -mlong-calls -I "../src/config/toy-train-config" -I "../src/packs/ATSAMD21G18A_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/sampleMusicTwo.o.d" -o ${OBJECTDIR}/_ext/1360937237/sampleMusicTwo.o ../src/sampleMusicTwo.c  -DXPRJ_toy-train-config=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1360937237/sampleMusicOne.o: ../src/sampleMusicOne.c  .generated_files/flags/toy-train-config/46f5908868fe75eed97134cd0b38c010176024b1 .generated_files/flags/toy-train-config/6e6727ac753fc01c5df2b745c8483e752d55e4da
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/sampleMusicOne.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/sampleMusicOne.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus -g -D__DEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb ${PACK_COMMON_OPTIONS}  -Os -ffunction-sections -mlong-calls -I "../src/config/toy-train-config" -I "../src/packs/ATSAMD21G18A_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/sampleMusicOne.o.d" -o ${OBJECTDIR}/_ext/1360937237/sampleMusicOne.o ../src/sampleMusicOne.c  -DXPRJ_toy-train-config=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1360937237/powerOnMusic.o: ../src/powerOnMusic.c  .generated_files/flags/toy-train-config/72deb3f694643daf524077e1bd568d38a78ad68a .generated_files/flags/toy-train-config/6e6727ac753fc01c5df2b745c8483e752d55e4da
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/powerOnMusic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/powerOnMusic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus -g -D__DEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb ${PACK_COMMON_OPTIONS}  -Os -ffunction-sections -mlong-calls -I "../src/config/toy-train-config" -I "../src/packs/ATSAMD21G18A_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/powerOnMusic.o.d" -o ${OBJECTDIR}/_ext/1360937237/powerOnMusic.o ../src/powerOnMusic.c  -DXPRJ_toy-train-config=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1360937237/powerOffMusic.o: ../src/powerOffMusic.c  .generated_files/flags/toy-train-config/54d8c1380d05436467c7fb0e23be64ae0b993a14 .generated_files/flags/toy-train-config/6e6727ac753fc01c5df2b745c8483e752d55e4da
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/powerOffMusic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/powerOffMusic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus -g -D__DEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb ${PACK_COMMON_OPTIONS}  -Os -ffunction-sections -mlong-calls -I "../src/config/toy-train-config" -I "../src/packs/ATSAMD21G18A_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/powerOffMusic.o.d" -o ${OBJECTDIR}/_ext/1360937237/powerOffMusic.o ../src/powerOffMusic.c  -DXPRJ_toy-train-config=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1360937237/hornMusic.o: ../src/hornMusic.c  .generated_files/flags/toy-train-config/84bbb5cce5c7406b56c04c49e7828aa0181bd583 .generated_files/flags/toy-train-config/6e6727ac753fc01c5df2b745c8483e752d55e4da
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/hornMusic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/hornMusic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus -g -D__DEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb ${PACK_COMMON_OPTIONS}  -Os -ffunction-sections -mlong-calls -I "../src/config/toy-train-config" -I "../src/packs/ATSAMD21G18A_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/hornMusic.o.d" -o ${OBJECTDIR}/_ext/1360937237/hornMusic.o ../src/hornMusic.c  -DXPRJ_toy-train-config=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1360937237/carWashMusic.o: ../src/carWashMusic.c  .generated_files/flags/toy-train-config/a348940dbeaa6bcaaa6478087dbbd8f669be0fca .generated_files/flags/toy-train-config/6e6727ac753fc01c5df2b745c8483e752d55e4da
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/carWashMusic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/carWashMusic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus -g -D__DEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb ${PACK_COMMON_OPTIONS}  -Os -ffunction-sections -mlong-calls -I "../src/config/toy-train-config" -I "../src/packs/ATSAMD21G18A_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/carWashMusic.o.d" -o ${OBJECTDIR}/_ext/1360937237/carWashMusic.o ../src/carWashMusic.c  -DXPRJ_toy-train-config=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1360937237/bleOnMusic.o: ../src/bleOnMusic.c  .generated_files/flags/toy-train-config/ec187170d9d6f2f43b8efe225275d13e0a286eb1 .generated_files/flags/toy-train-config/6e6727ac753fc01c5df2b745c8483e752d55e4da
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/bleOnMusic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/bleOnMusic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus -g -D__DEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb ${PACK_COMMON_OPTIONS}  -Os -ffunction-sections -mlong-calls -I "../src/config/toy-train-config" -I "../src/packs/ATSAMD21G18A_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/bleOnMusic.o.d" -o ${OBJECTDIR}/_ext/1360937237/bleOnMusic.o ../src/bleOnMusic.c  -DXPRJ_toy-train-config=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1360937237/bleOffMusic.o: ../src/bleOffMusic.c  .generated_files/flags/toy-train-config/f1fdca9e8304b0c273ad55f6da63cce3afe5e8ff .generated_files/flags/toy-train-config/6e6727ac753fc01c5df2b745c8483e752d55e4da
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/bleOffMusic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/bleOffMusic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus -g -D__DEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb ${PACK_COMMON_OPTIONS}  -Os -ffunction-sections -mlong-calls -I "../src/config/toy-train-config" -I "../src/packs/ATSAMD21G18A_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/bleOffMusic.o.d" -o ${OBJECTDIR}/_ext/1360937237/bleOffMusic.o ../src/bleOffMusic.c  -DXPRJ_toy-train-config=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1360937237/bellMusic.o: ../src/bellMusic.c  .generated_files/flags/toy-train-config/16d4fbc986d516e13d1d8cd6b3859c538ec76601 .generated_files/flags/toy-train-config/6e6727ac753fc01c5df2b745c8483e752d55e4da
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/bellMusic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/bellMusic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus -g -D__DEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb ${PACK_COMMON_OPTIONS}  -Os -ffunction-sections -mlong-calls -I "../src/config/toy-train-config" -I "../src/packs/ATSAMD21G18A_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/bellMusic.o.d" -o ${OBJECTDIR}/_ext/1360937237/bellMusic.o ../src/bellMusic.c  -DXPRJ_toy-train-config=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1360937237/music.o: ../src/music.c  .generated_files/flags/toy-train-config/a00c26fb90416beafa6efb59cdf6d08dbfab2be0 .generated_files/flags/toy-train-config/6e6727ac753fc01c5df2b745c8483e752d55e4da
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/music.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/music.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus -g -D__DEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb ${PACK_COMMON_OPTIONS}  -Os -ffunction-sections -mlong-calls -I "../src/config/toy-train-config" -I "../src/packs/ATSAMD21G18A_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/music.o.d" -o ${OBJECTDIR}/_ext/1360937237/music.o ../src/music.c  -DXPRJ_toy-train-config=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1360937237/rgbLed.o: ../src/rgbLed.c  .generated_files/flags/toy-train-config/1308af1cb0bfb4e7dc230869183e556e23e6d8a2 .generated_files/flags/toy-train-config/6e6727ac753fc01c5df2b745c8483e752d55e4da
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/rgbLed.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/rgbLed.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus -g -D__DEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb ${PACK_COMMON_OPTIONS}  -Os -ffunction-sections -mlong-calls -I "../src/config/toy-train-config" -I "../src/packs/ATSAMD21G18A_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/rgbLed.o.d" -o ${OBJECTDIR}/_ext/1360937237/rgbLed.o ../src/rgbLed.c  -DXPRJ_toy-train-config=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1360937237/motorControl.o: ../src/motorControl.c  .generated_files/flags/toy-train-config/c9ecce225d63106ab39e606a3793e8b6ef24f572 .generated_files/flags/toy-train-config/6e6727ac753fc01c5df2b745c8483e752d55e4da
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/motorControl.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/motorControl.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus -g -D__DEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb ${PACK_COMMON_OPTIONS}  -Os -ffunction-sections -mlong-calls -I "../src/config/toy-train-config" -I "../src/packs/ATSAMD21G18A_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/motorControl.o.d" -o ${OBJECTDIR}/_ext/1360937237/motorControl.o ../src/motorControl.c  -DXPRJ_toy-train-config=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  .generated_files/flags/toy-train-config/c9d35b8a3e5b1bc05bbec730bfc5601f82732d49 .generated_files/flags/toy-train-config/6e6727ac753fc01c5df2b745c8483e752d55e4da
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus -g -D__DEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb ${PACK_COMMON_OPTIONS}  -Os -ffunction-sections -mlong-calls -I "../src/config/toy-train-config" -I "../src/packs/ATSAMD21G18A_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c  -DXPRJ_toy-train-config=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1360937237/hallSensor.o: ../src/hallSensor.c  .generated_files/flags/toy-train-config/ee732a60e31950a36f94a76bcf8e7f760c82ab6a .generated_files/flags/toy-train-config/6e6727ac753fc01c5df2b745c8483e752d55e4da
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/hallSensor.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/hallSensor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus -g -D__DEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb ${PACK_COMMON_OPTIONS}  -Os -ffunction-sections -mlong-calls -I "../src/config/toy-train-config" -I "../src/packs/ATSAMD21G18A_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/hallSensor.o.d" -o ${OBJECTDIR}/_ext/1360937237/hallSensor.o ../src/hallSensor.c  -DXPRJ_toy-train-config=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1360937237/colorDetect.o: ../src/colorDetect.c  .generated_files/flags/toy-train-config/8dd6d1ef2dbb1995f44d917b2fb4bfd5302cf6b6 .generated_files/flags/toy-train-config/6e6727ac753fc01c5df2b745c8483e752d55e4da
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/colorDetect.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/colorDetect.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus -g -D__DEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb ${PACK_COMMON_OPTIONS}  -Os -ffunction-sections -mlong-calls -I "../src/config/toy-train-config" -I "../src/packs/ATSAMD21G18A_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/colorDetect.o.d" -o ${OBJECTDIR}/_ext/1360937237/colorDetect.o ../src/colorDetect.c  -DXPRJ_toy-train-config=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1360937237/bluetooth.o: ../src/bluetooth.c  .generated_files/flags/toy-train-config/65d9581ea022cc1a36a3f34b9ead087e5edf4c0c .generated_files/flags/toy-train-config/6e6727ac753fc01c5df2b745c8483e752d55e4da
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/bluetooth.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/bluetooth.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus -g -D__DEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb ${PACK_COMMON_OPTIONS}  -Os -ffunction-sections -mlong-calls -I "../src/config/toy-train-config" -I "../src/packs/ATSAMD21G18A_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/bluetooth.o.d" -o ${OBJECTDIR}/_ext/1360937237/bluetooth.o ../src/bluetooth.c  -DXPRJ_toy-train-config=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1360937237/audio.o: ../src/audio.c  .generated_files/flags/toy-train-config/e6c6fe5f89c5609fda5fc252485ecc48d62fe88b .generated_files/flags/toy-train-config/6e6727ac753fc01c5df2b745c8483e752d55e4da
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/audio.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/audio.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus -g -D__DEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb ${PACK_COMMON_OPTIONS}  -Os -ffunction-sections -mlong-calls -I "../src/config/toy-train-config" -I "../src/packs/ATSAMD21G18A_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/audio.o.d" -o ${OBJECTDIR}/_ext/1360937237/audio.o ../src/audio.c  -DXPRJ_toy-train-config=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1360937237/AppGlobals.o: ../src/AppGlobals.c  .generated_files/flags/toy-train-config/41f6c91263534fc7fb37e126e72d6c8956c74484 .generated_files/flags/toy-train-config/6e6727ac753fc01c5df2b745c8483e752d55e4da
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/AppGlobals.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/AppGlobals.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus -g -D__DEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb ${PACK_COMMON_OPTIONS}  -Os -ffunction-sections -mlong-calls -I "../src/config/toy-train-config" -I "../src/packs/ATSAMD21G18A_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/AppGlobals.o.d" -o ${OBJECTDIR}/_ext/1360937237/AppGlobals.o ../src/AppGlobals.c  -DXPRJ_toy-train-config=$(CND_CONF)  $(COMPARISON_BUILD) 
	
else
${OBJECTDIR}/_ext/1312487053/plib_adc.o: ../src/config/toy-train-config/peripheral/adc/plib_adc.c  .generated_files/flags/toy-train-config/d0d3776518c738e34896fdb00d093a2459e60d1c .generated_files/flags/toy-train-config/6e6727ac753fc01c5df2b745c8483e752d55e4da
	@${MKDIR} "${OBJECTDIR}/_ext/1312487053" 
	@${RM} ${OBJECTDIR}/_ext/1312487053/plib_adc.o.d 
	@${RM} ${OBJECTDIR}/_ext/1312487053/plib_adc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb ${PACK_COMMON_OPTIONS}  -Os -ffunction-sections -mlong-calls -I "../src/config/toy-train-config" -I "../src/packs/ATSAMD21G18A_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1312487053/plib_adc.o.d" -o ${OBJECTDIR}/_ext/1312487053/plib_adc.o ../src/config/toy-train-config/peripheral/adc/plib_adc.c  -DXPRJ_toy-train-config=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1422427169/plib_clock.o: ../src/config/toy-train-config/peripheral/clock/plib_clock.c  .generated_files/flags/toy-train-config/a1c7986ac607fcd782b54dcc59d389fde3d6aa9e .generated_files/flags/toy-train-config/6e6727ac753fc01c5df2b745c8483e752d55e4da
	@${MKDIR} "${OBJECTDIR}/_ext/1422427169" 
	@${RM} ${OBJECTDIR}/_ext/1422427169/plib_clock.o.d 
	@${RM} ${OBJECTDIR}/_ext/1422427169/plib_clock.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb ${PACK_COMMON_OPTIONS}  -Os -ffunction-sections -mlong-calls -I "../src/config/toy-train-config" -I "../src/packs/ATSAMD21G18A_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1422427169/plib_clock.o.d" -o ${OBJECTDIR}/_ext/1422427169/plib_clock.o ../src/config/toy-train-config/peripheral/clock/plib_clock.c  -DXPRJ_toy-train-config=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1312484263/plib_dac.o: ../src/config/toy-train-config/peripheral/dac/plib_dac.c  .generated_files/flags/toy-train-config/9e0baff78b2102bc353b5c6d0bcec6c21110905 .generated_files/flags/toy-train-config/6e6727ac753fc01c5df2b745c8483e752d55e4da
	@${MKDIR} "${OBJECTDIR}/_ext/1312484263" 
	@${RM} ${OBJECTDIR}/_ext/1312484263/plib_dac.o.d 
	@${RM} ${OBJECTDIR}/_ext/1312484263/plib_dac.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb ${PACK_COMMON_OPTIONS}  -Os -ffunction-sections -mlong-calls -I "../src/config/toy-train-config" -I "../src/packs/ATSAMD21G18A_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1312484263/plib_dac.o.d" -o ${OBJECTDIR}/_ext/1312484263/plib_dac.o ../src/config/toy-train-config/peripheral/dac/plib_dac.c  -DXPRJ_toy-train-config=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/2032294920/plib_dmac.o: ../src/config/toy-train-config/peripheral/dmac/plib_dmac.c  .generated_files/flags/toy-train-config/23a2998b3dd581cf603aba27e94a26f0365b5a41 .generated_files/flags/toy-train-config/6e6727ac753fc01c5df2b745c8483e752d55e4da
	@${MKDIR} "${OBJECTDIR}/_ext/2032294920" 
	@${RM} ${OBJECTDIR}/_ext/2032294920/plib_dmac.o.d 
	@${RM} ${OBJECTDIR}/_ext/2032294920/plib_dmac.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb ${PACK_COMMON_OPTIONS}  -Os -ffunction-sections -mlong-calls -I "../src/config/toy-train-config" -I "../src/packs/ATSAMD21G18A_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2032294920/plib_dmac.o.d" -o ${OBJECTDIR}/_ext/2032294920/plib_dmac.o ../src/config/toy-train-config/peripheral/dmac/plib_dmac.c  -DXPRJ_toy-train-config=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1424576655/plib_evsys.o: ../src/config/toy-train-config/peripheral/evsys/plib_evsys.c  .generated_files/flags/toy-train-config/6f158544b61e2abb4dcbaa5ae3783ad3b73ff22b .generated_files/flags/toy-train-config/6e6727ac753fc01c5df2b745c8483e752d55e4da
	@${MKDIR} "${OBJECTDIR}/_ext/1424576655" 
	@${RM} ${OBJECTDIR}/_ext/1424576655/plib_evsys.o.d 
	@${RM} ${OBJECTDIR}/_ext/1424576655/plib_evsys.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb ${PACK_COMMON_OPTIONS}  -Os -ffunction-sections -mlong-calls -I "../src/config/toy-train-config" -I "../src/packs/ATSAMD21G18A_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1424576655/plib_evsys.o.d" -o ${OBJECTDIR}/_ext/1424576655/plib_evsys.o ../src/config/toy-train-config/peripheral/evsys/plib_evsys.c  -DXPRJ_toy-train-config=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/2031988113/plib_nvic.o: ../src/config/toy-train-config/peripheral/nvic/plib_nvic.c  .generated_files/flags/toy-train-config/e2d17c8ec6b7ee65fcbed70d21846ee777d6cdf3 .generated_files/flags/toy-train-config/6e6727ac753fc01c5df2b745c8483e752d55e4da
	@${MKDIR} "${OBJECTDIR}/_ext/2031988113" 
	@${RM} ${OBJECTDIR}/_ext/2031988113/plib_nvic.o.d 
	@${RM} ${OBJECTDIR}/_ext/2031988113/plib_nvic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb ${PACK_COMMON_OPTIONS}  -Os -ffunction-sections -mlong-calls -I "../src/config/toy-train-config" -I "../src/packs/ATSAMD21G18A_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2031988113/plib_nvic.o.d" -o ${OBJECTDIR}/_ext/2031988113/plib_nvic.o ../src/config/toy-train-config/peripheral/nvic/plib_nvic.c  -DXPRJ_toy-train-config=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1684995357/plib_nvmctrl.o: ../src/config/toy-train-config/peripheral/nvmctrl/plib_nvmctrl.c  .generated_files/flags/toy-train-config/df4b9af3b4af5b1aa2800c6e48bc5c413714c1bc .generated_files/flags/toy-train-config/6e6727ac753fc01c5df2b745c8483e752d55e4da
	@${MKDIR} "${OBJECTDIR}/_ext/1684995357" 
	@${RM} ${OBJECTDIR}/_ext/1684995357/plib_nvmctrl.o.d 
	@${RM} ${OBJECTDIR}/_ext/1684995357/plib_nvmctrl.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb ${PACK_COMMON_OPTIONS}  -Os -ffunction-sections -mlong-calls -I "../src/config/toy-train-config" -I "../src/packs/ATSAMD21G18A_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1684995357/plib_nvmctrl.o.d" -o ${OBJECTDIR}/_ext/1684995357/plib_nvmctrl.o ../src/config/toy-train-config/peripheral/nvmctrl/plib_nvmctrl.c  -DXPRJ_toy-train-config=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/2031934962/plib_port.o: ../src/config/toy-train-config/peripheral/port/plib_port.c  .generated_files/flags/toy-train-config/3e57d53de8275c384191a7b214ae4cc79e46dc52 .generated_files/flags/toy-train-config/6e6727ac753fc01c5df2b745c8483e752d55e4da
	@${MKDIR} "${OBJECTDIR}/_ext/2031934962" 
	@${RM} ${OBJECTDIR}/_ext/2031934962/plib_port.o.d 
	@${RM} ${OBJECTDIR}/_ext/2031934962/plib_port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb ${PACK_COMMON_OPTIONS}  -Os -ffunction-sections -mlong-calls -I "../src/config/toy-train-config" -I "../src/packs/ATSAMD21G18A_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2031934962/plib_port.o.d" -o ${OBJECTDIR}/_ext/2031934962/plib_port.o ../src/config/toy-train-config/peripheral/port/plib_port.c  -DXPRJ_toy-train-config=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/2071837988/plib_sercom2_usart.o: ../src/config/toy-train-config/peripheral/sercom/usart/plib_sercom2_usart.c  .generated_files/flags/toy-train-config/1542cfb0ce2ae4e1c94f54d8baf3c23b29379771 .generated_files/flags/toy-train-config/6e6727ac753fc01c5df2b745c8483e752d55e4da
	@${MKDIR} "${OBJECTDIR}/_ext/2071837988" 
	@${RM} ${OBJECTDIR}/_ext/2071837988/plib_sercom2_usart.o.d 
	@${RM} ${OBJECTDIR}/_ext/2071837988/plib_sercom2_usart.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb ${PACK_COMMON_OPTIONS}  -Os -ffunction-sections -mlong-calls -I "../src/config/toy-train-config" -I "../src/packs/ATSAMD21G18A_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2071837988/plib_sercom2_usart.o.d" -o ${OBJECTDIR}/_ext/2071837988/plib_sercom2_usart.o ../src/config/toy-train-config/peripheral/sercom/usart/plib_sercom2_usart.c  -DXPRJ_toy-train-config=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/2071837988/plib_sercom0_usart.o: ../src/config/toy-train-config/peripheral/sercom/usart/plib_sercom0_usart.c  .generated_files/flags/toy-train-config/9ee46b2b3cc3c0ebdef49bebfee0f4c812c41d5d .generated_files/flags/toy-train-config/6e6727ac753fc01c5df2b745c8483e752d55e4da
	@${MKDIR} "${OBJECTDIR}/_ext/2071837988" 
	@${RM} ${OBJECTDIR}/_ext/2071837988/plib_sercom0_usart.o.d 
	@${RM} ${OBJECTDIR}/_ext/2071837988/plib_sercom0_usart.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb ${PACK_COMMON_OPTIONS}  -Os -ffunction-sections -mlong-calls -I "../src/config/toy-train-config" -I "../src/packs/ATSAMD21G18A_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2071837988/plib_sercom0_usart.o.d" -o ${OBJECTDIR}/_ext/2071837988/plib_sercom0_usart.o ../src/config/toy-train-config/peripheral/sercom/usart/plib_sercom0_usart.c  -DXPRJ_toy-train-config=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1450520259/plib_systick.o: ../src/config/toy-train-config/peripheral/systick/plib_systick.c  .generated_files/flags/toy-train-config/66372a9bba4458c2b4c696c7affc33e72c5cf21c .generated_files/flags/toy-train-config/6e6727ac753fc01c5df2b745c8483e752d55e4da
	@${MKDIR} "${OBJECTDIR}/_ext/1450520259" 
	@${RM} ${OBJECTDIR}/_ext/1450520259/plib_systick.o.d 
	@${RM} ${OBJECTDIR}/_ext/1450520259/plib_systick.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb ${PACK_COMMON_OPTIONS}  -Os -ffunction-sections -mlong-calls -I "../src/config/toy-train-config" -I "../src/packs/ATSAMD21G18A_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1450520259/plib_systick.o.d" -o ${OBJECTDIR}/_ext/1450520259/plib_systick.o ../src/config/toy-train-config/peripheral/systick/plib_systick.c  -DXPRJ_toy-train-config=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/873621700/plib_tc3.o: ../src/config/toy-train-config/peripheral/tc/plib_tc3.c  .generated_files/flags/toy-train-config/ab024108fb5dc909303bb0277adf5dfcdc1cc47f .generated_files/flags/toy-train-config/6e6727ac753fc01c5df2b745c8483e752d55e4da
	@${MKDIR} "${OBJECTDIR}/_ext/873621700" 
	@${RM} ${OBJECTDIR}/_ext/873621700/plib_tc3.o.d 
	@${RM} ${OBJECTDIR}/_ext/873621700/plib_tc3.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb ${PACK_COMMON_OPTIONS}  -Os -ffunction-sections -mlong-calls -I "../src/config/toy-train-config" -I "../src/packs/ATSAMD21G18A_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/873621700/plib_tc3.o.d" -o ${OBJECTDIR}/_ext/873621700/plib_tc3.o ../src/config/toy-train-config/peripheral/tc/plib_tc3.c  -DXPRJ_toy-train-config=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/873621700/plib_tc4.o: ../src/config/toy-train-config/peripheral/tc/plib_tc4.c  .generated_files/flags/toy-train-config/d65c3ec974e4e2d8d55ae88779157b8f8c0132fd .generated_files/flags/toy-train-config/6e6727ac753fc01c5df2b745c8483e752d55e4da
	@${MKDIR} "${OBJECTDIR}/_ext/873621700" 
	@${RM} ${OBJECTDIR}/_ext/873621700/plib_tc4.o.d 
	@${RM} ${OBJECTDIR}/_ext/873621700/plib_tc4.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb ${PACK_COMMON_OPTIONS}  -Os -ffunction-sections -mlong-calls -I "../src/config/toy-train-config" -I "../src/packs/ATSAMD21G18A_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/873621700/plib_tc4.o.d" -o ${OBJECTDIR}/_ext/873621700/plib_tc4.o ../src/config/toy-train-config/peripheral/tc/plib_tc4.c  -DXPRJ_toy-train-config=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1312468825/plib_tcc2.o: ../src/config/toy-train-config/peripheral/tcc/plib_tcc2.c  .generated_files/flags/toy-train-config/edea3ba72c677527b2716739984f5f509a6da1f8 .generated_files/flags/toy-train-config/6e6727ac753fc01c5df2b745c8483e752d55e4da
	@${MKDIR} "${OBJECTDIR}/_ext/1312468825" 
	@${RM} ${OBJECTDIR}/_ext/1312468825/plib_tcc2.o.d 
	@${RM} ${OBJECTDIR}/_ext/1312468825/plib_tcc2.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb ${PACK_COMMON_OPTIONS}  -Os -ffunction-sections -mlong-calls -I "../src/config/toy-train-config" -I "../src/packs/ATSAMD21G18A_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1312468825/plib_tcc2.o.d" -o ${OBJECTDIR}/_ext/1312468825/plib_tcc2.o ../src/config/toy-train-config/peripheral/tcc/plib_tcc2.c  -DXPRJ_toy-train-config=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1312468825/plib_tcc0.o: ../src/config/toy-train-config/peripheral/tcc/plib_tcc0.c  .generated_files/flags/toy-train-config/dac84a52a79ef25c2d85dbd2cd77b378a65ad579 .generated_files/flags/toy-train-config/6e6727ac753fc01c5df2b745c8483e752d55e4da
	@${MKDIR} "${OBJECTDIR}/_ext/1312468825" 
	@${RM} ${OBJECTDIR}/_ext/1312468825/plib_tcc0.o.d 
	@${RM} ${OBJECTDIR}/_ext/1312468825/plib_tcc0.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb ${PACK_COMMON_OPTIONS}  -Os -ffunction-sections -mlong-calls -I "../src/config/toy-train-config" -I "../src/packs/ATSAMD21G18A_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1312468825/plib_tcc0.o.d" -o ${OBJECTDIR}/_ext/1312468825/plib_tcc0.o ../src/config/toy-train-config/peripheral/tcc/plib_tcc0.c  -DXPRJ_toy-train-config=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1312465894/plib_wdt.o: ../src/config/toy-train-config/peripheral/wdt/plib_wdt.c  .generated_files/flags/toy-train-config/fffbc3aeda50973b7f10511bb8c789ffdb2e79c7 .generated_files/flags/toy-train-config/6e6727ac753fc01c5df2b745c8483e752d55e4da
	@${MKDIR} "${OBJECTDIR}/_ext/1312465894" 
	@${RM} ${OBJECTDIR}/_ext/1312465894/plib_wdt.o.d 
	@${RM} ${OBJECTDIR}/_ext/1312465894/plib_wdt.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb ${PACK_COMMON_OPTIONS}  -Os -ffunction-sections -mlong-calls -I "../src/config/toy-train-config" -I "../src/packs/ATSAMD21G18A_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1312465894/plib_wdt.o.d" -o ${OBJECTDIR}/_ext/1312465894/plib_wdt.o ../src/config/toy-train-config/peripheral/wdt/plib_wdt.c  -DXPRJ_toy-train-config=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/336147711/gcc_monitor.o: ../../../../../gcc/src_gcc_toolchain/gcc_monitor.c  .generated_files/flags/toy-train-config/4bf38a7a12e256955323c30669ef55e50a4ae4b4 .generated_files/flags/toy-train-config/6e6727ac753fc01c5df2b745c8483e752d55e4da
	@${MKDIR} "${OBJECTDIR}/_ext/336147711" 
	@${RM} ${OBJECTDIR}/_ext/336147711/gcc_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/336147711/gcc_monitor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb ${PACK_COMMON_OPTIONS}  -Os -ffunction-sections -mlong-calls -I "../src/config/toy-train-config" -I "../src/packs/ATSAMD21G18A_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/336147711/gcc_monitor.o.d" -o ${OBJECTDIR}/_ext/336147711/gcc_monitor.o ../../../../../gcc/src_gcc_toolchain/gcc_monitor.c  -DXPRJ_toy-train-config=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1423632105/initialization.o: ../src/config/toy-train-config/initialization.c  .generated_files/flags/toy-train-config/c5ee50a4026fdbb30b3acfdefe60d663bc200d1d .generated_files/flags/toy-train-config/6e6727ac753fc01c5df2b745c8483e752d55e4da
	@${MKDIR} "${OBJECTDIR}/_ext/1423632105" 
	@${RM} ${OBJECTDIR}/_ext/1423632105/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/1423632105/initialization.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb ${PACK_COMMON_OPTIONS}  -Os -ffunction-sections -mlong-calls -I "../src/config/toy-train-config" -I "../src/packs/ATSAMD21G18A_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1423632105/initialization.o.d" -o ${OBJECTDIR}/_ext/1423632105/initialization.o ../src/config/toy-train-config/initialization.c  -DXPRJ_toy-train-config=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1423632105/interrupts.o: ../src/config/toy-train-config/interrupts.c  .generated_files/flags/toy-train-config/104bc3ecd87c16b441bf8ad8279f8b5133f518d0 .generated_files/flags/toy-train-config/6e6727ac753fc01c5df2b745c8483e752d55e4da
	@${MKDIR} "${OBJECTDIR}/_ext/1423632105" 
	@${RM} ${OBJECTDIR}/_ext/1423632105/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/1423632105/interrupts.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb ${PACK_COMMON_OPTIONS}  -Os -ffunction-sections -mlong-calls -I "../src/config/toy-train-config" -I "../src/packs/ATSAMD21G18A_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1423632105/interrupts.o.d" -o ${OBJECTDIR}/_ext/1423632105/interrupts.o ../src/config/toy-train-config/interrupts.c  -DXPRJ_toy-train-config=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1423632105/exceptions.o: ../src/config/toy-train-config/exceptions.c  .generated_files/flags/toy-train-config/d5dacf0c097899d6e48881feb5e59396c2bf461a .generated_files/flags/toy-train-config/6e6727ac753fc01c5df2b745c8483e752d55e4da
	@${MKDIR} "${OBJECTDIR}/_ext/1423632105" 
	@${RM} ${OBJECTDIR}/_ext/1423632105/exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/1423632105/exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb ${PACK_COMMON_OPTIONS}  -Os -ffunction-sections -mlong-calls -I "../src/config/toy-train-config" -I "../src/packs/ATSAMD21G18A_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1423632105/exceptions.o.d" -o ${OBJECTDIR}/_ext/1423632105/exceptions.o ../src/config/toy-train-config/exceptions.c  -DXPRJ_toy-train-config=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/336147711/libc_syscalls.o: ../../../../../gcc/src_gcc_toolchain/libc_syscalls.c  .generated_files/flags/toy-train-config/94e339f0d7eabe4e0d12a46392dd4857fd276330 .generated_files/flags/toy-train-config/6e6727ac753fc01c5df2b745c8483e752d55e4da
	@${MKDIR} "${OBJECTDIR}/_ext/336147711" 
	@${RM} ${OBJECTDIR}/_ext/336147711/libc_syscalls.o.d 
	@${RM} ${OBJECTDIR}/_ext/336147711/libc_syscalls.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb ${PACK_COMMON_OPTIONS}  -Os -ffunction-sections -mlong-calls -I "../src/config/toy-train-config" -I "../src/packs/ATSAMD21G18A_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/336147711/libc_syscalls.o.d" -o ${OBJECTDIR}/_ext/336147711/libc_syscalls.o ../../../../../gcc/src_gcc_toolchain/libc_syscalls.c  -DXPRJ_toy-train-config=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/336147711/startup_gcc.o: ../../../../../gcc/src_gcc_toolchain/startup_gcc.c  .generated_files/flags/toy-train-config/950fa387be56db79909f49fbf3d976aea15698bd .generated_files/flags/toy-train-config/6e6727ac753fc01c5df2b745c8483e752d55e4da
	@${MKDIR} "${OBJECTDIR}/_ext/336147711" 
	@${RM} ${OBJECTDIR}/_ext/336147711/startup_gcc.o.d 
	@${RM} ${OBJECTDIR}/_ext/336147711/startup_gcc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb ${PACK_COMMON_OPTIONS}  -Os -ffunction-sections -mlong-calls -I "../src/config/toy-train-config" -I "../src/packs/ATSAMD21G18A_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/336147711/startup_gcc.o.d" -o ${OBJECTDIR}/_ext/336147711/startup_gcc.o ../../../../../gcc/src_gcc_toolchain/startup_gcc.c  -DXPRJ_toy-train-config=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1360937237/sampleMusicTwo.o: ../src/sampleMusicTwo.c  .generated_files/flags/toy-train-config/3072d424a9067fd440e6f719dc76d4bd9cb3de7e .generated_files/flags/toy-train-config/6e6727ac753fc01c5df2b745c8483e752d55e4da
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/sampleMusicTwo.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/sampleMusicTwo.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb ${PACK_COMMON_OPTIONS}  -Os -ffunction-sections -mlong-calls -I "../src/config/toy-train-config" -I "../src/packs/ATSAMD21G18A_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/sampleMusicTwo.o.d" -o ${OBJECTDIR}/_ext/1360937237/sampleMusicTwo.o ../src/sampleMusicTwo.c  -DXPRJ_toy-train-config=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1360937237/sampleMusicOne.o: ../src/sampleMusicOne.c  .generated_files/flags/toy-train-config/d9208b6031f9dc0192bc73259a24c1ea5e064491 .generated_files/flags/toy-train-config/6e6727ac753fc01c5df2b745c8483e752d55e4da
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/sampleMusicOne.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/sampleMusicOne.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb ${PACK_COMMON_OPTIONS}  -Os -ffunction-sections -mlong-calls -I "../src/config/toy-train-config" -I "../src/packs/ATSAMD21G18A_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/sampleMusicOne.o.d" -o ${OBJECTDIR}/_ext/1360937237/sampleMusicOne.o ../src/sampleMusicOne.c  -DXPRJ_toy-train-config=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1360937237/powerOnMusic.o: ../src/powerOnMusic.c  .generated_files/flags/toy-train-config/9d9830bfc24ed8729f06f3ce99bd617e27c1ab31 .generated_files/flags/toy-train-config/6e6727ac753fc01c5df2b745c8483e752d55e4da
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/powerOnMusic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/powerOnMusic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb ${PACK_COMMON_OPTIONS}  -Os -ffunction-sections -mlong-calls -I "../src/config/toy-train-config" -I "../src/packs/ATSAMD21G18A_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/powerOnMusic.o.d" -o ${OBJECTDIR}/_ext/1360937237/powerOnMusic.o ../src/powerOnMusic.c  -DXPRJ_toy-train-config=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1360937237/powerOffMusic.o: ../src/powerOffMusic.c  .generated_files/flags/toy-train-config/e680ba01a056ddd7d677066978b5398fe379e8e4 .generated_files/flags/toy-train-config/6e6727ac753fc01c5df2b745c8483e752d55e4da
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/powerOffMusic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/powerOffMusic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb ${PACK_COMMON_OPTIONS}  -Os -ffunction-sections -mlong-calls -I "../src/config/toy-train-config" -I "../src/packs/ATSAMD21G18A_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/powerOffMusic.o.d" -o ${OBJECTDIR}/_ext/1360937237/powerOffMusic.o ../src/powerOffMusic.c  -DXPRJ_toy-train-config=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1360937237/hornMusic.o: ../src/hornMusic.c  .generated_files/flags/toy-train-config/836c4611283f94c2effc0c89de6566d7a0f896d5 .generated_files/flags/toy-train-config/6e6727ac753fc01c5df2b745c8483e752d55e4da
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/hornMusic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/hornMusic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb ${PACK_COMMON_OPTIONS}  -Os -ffunction-sections -mlong-calls -I "../src/config/toy-train-config" -I "../src/packs/ATSAMD21G18A_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/hornMusic.o.d" -o ${OBJECTDIR}/_ext/1360937237/hornMusic.o ../src/hornMusic.c  -DXPRJ_toy-train-config=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1360937237/carWashMusic.o: ../src/carWashMusic.c  .generated_files/flags/toy-train-config/71516e21a7e508a1d65eadcb36a4ee465fda54c5 .generated_files/flags/toy-train-config/6e6727ac753fc01c5df2b745c8483e752d55e4da
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/carWashMusic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/carWashMusic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb ${PACK_COMMON_OPTIONS}  -Os -ffunction-sections -mlong-calls -I "../src/config/toy-train-config" -I "../src/packs/ATSAMD21G18A_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/carWashMusic.o.d" -o ${OBJECTDIR}/_ext/1360937237/carWashMusic.o ../src/carWashMusic.c  -DXPRJ_toy-train-config=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1360937237/bleOnMusic.o: ../src/bleOnMusic.c  .generated_files/flags/toy-train-config/6925cf6ee2336532e7cb80c5660d4e09bfb7af3a .generated_files/flags/toy-train-config/6e6727ac753fc01c5df2b745c8483e752d55e4da
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/bleOnMusic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/bleOnMusic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb ${PACK_COMMON_OPTIONS}  -Os -ffunction-sections -mlong-calls -I "../src/config/toy-train-config" -I "../src/packs/ATSAMD21G18A_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/bleOnMusic.o.d" -o ${OBJECTDIR}/_ext/1360937237/bleOnMusic.o ../src/bleOnMusic.c  -DXPRJ_toy-train-config=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1360937237/bleOffMusic.o: ../src/bleOffMusic.c  .generated_files/flags/toy-train-config/c924efdf499346795350ffa58d5fece2ad9e7f9a .generated_files/flags/toy-train-config/6e6727ac753fc01c5df2b745c8483e752d55e4da
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/bleOffMusic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/bleOffMusic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb ${PACK_COMMON_OPTIONS}  -Os -ffunction-sections -mlong-calls -I "../src/config/toy-train-config" -I "../src/packs/ATSAMD21G18A_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/bleOffMusic.o.d" -o ${OBJECTDIR}/_ext/1360937237/bleOffMusic.o ../src/bleOffMusic.c  -DXPRJ_toy-train-config=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1360937237/bellMusic.o: ../src/bellMusic.c  .generated_files/flags/toy-train-config/1a6f868230623a50988eb6796e5b22ba9cbad2ec .generated_files/flags/toy-train-config/6e6727ac753fc01c5df2b745c8483e752d55e4da
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/bellMusic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/bellMusic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb ${PACK_COMMON_OPTIONS}  -Os -ffunction-sections -mlong-calls -I "../src/config/toy-train-config" -I "../src/packs/ATSAMD21G18A_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/bellMusic.o.d" -o ${OBJECTDIR}/_ext/1360937237/bellMusic.o ../src/bellMusic.c  -DXPRJ_toy-train-config=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1360937237/music.o: ../src/music.c  .generated_files/flags/toy-train-config/b858084b1dc6797382669109d9e718d5b3eb71c0 .generated_files/flags/toy-train-config/6e6727ac753fc01c5df2b745c8483e752d55e4da
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/music.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/music.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb ${PACK_COMMON_OPTIONS}  -Os -ffunction-sections -mlong-calls -I "../src/config/toy-train-config" -I "../src/packs/ATSAMD21G18A_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/music.o.d" -o ${OBJECTDIR}/_ext/1360937237/music.o ../src/music.c  -DXPRJ_toy-train-config=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1360937237/rgbLed.o: ../src/rgbLed.c  .generated_files/flags/toy-train-config/559950dee7af232fa847f5a830d9b43a6aee3b1a .generated_files/flags/toy-train-config/6e6727ac753fc01c5df2b745c8483e752d55e4da
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/rgbLed.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/rgbLed.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb ${PACK_COMMON_OPTIONS}  -Os -ffunction-sections -mlong-calls -I "../src/config/toy-train-config" -I "../src/packs/ATSAMD21G18A_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/rgbLed.o.d" -o ${OBJECTDIR}/_ext/1360937237/rgbLed.o ../src/rgbLed.c  -DXPRJ_toy-train-config=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1360937237/motorControl.o: ../src/motorControl.c  .generated_files/flags/toy-train-config/80284a44fa8c7ade342710318be53d8c9b3b3d53 .generated_files/flags/toy-train-config/6e6727ac753fc01c5df2b745c8483e752d55e4da
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/motorControl.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/motorControl.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb ${PACK_COMMON_OPTIONS}  -Os -ffunction-sections -mlong-calls -I "../src/config/toy-train-config" -I "../src/packs/ATSAMD21G18A_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/motorControl.o.d" -o ${OBJECTDIR}/_ext/1360937237/motorControl.o ../src/motorControl.c  -DXPRJ_toy-train-config=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  .generated_files/flags/toy-train-config/5e09c87be4b8b4d44b443a78e300ca2553b0fd3 .generated_files/flags/toy-train-config/6e6727ac753fc01c5df2b745c8483e752d55e4da
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb ${PACK_COMMON_OPTIONS}  -Os -ffunction-sections -mlong-calls -I "../src/config/toy-train-config" -I "../src/packs/ATSAMD21G18A_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c  -DXPRJ_toy-train-config=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1360937237/hallSensor.o: ../src/hallSensor.c  .generated_files/flags/toy-train-config/9ef8c2dab4b686595771d3f828f2b2b124434813 .generated_files/flags/toy-train-config/6e6727ac753fc01c5df2b745c8483e752d55e4da
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/hallSensor.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/hallSensor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb ${PACK_COMMON_OPTIONS}  -Os -ffunction-sections -mlong-calls -I "../src/config/toy-train-config" -I "../src/packs/ATSAMD21G18A_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/hallSensor.o.d" -o ${OBJECTDIR}/_ext/1360937237/hallSensor.o ../src/hallSensor.c  -DXPRJ_toy-train-config=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1360937237/colorDetect.o: ../src/colorDetect.c  .generated_files/flags/toy-train-config/fd8beac2384b38f111f72694b707433dc0c5fde7 .generated_files/flags/toy-train-config/6e6727ac753fc01c5df2b745c8483e752d55e4da
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/colorDetect.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/colorDetect.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb ${PACK_COMMON_OPTIONS}  -Os -ffunction-sections -mlong-calls -I "../src/config/toy-train-config" -I "../src/packs/ATSAMD21G18A_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/colorDetect.o.d" -o ${OBJECTDIR}/_ext/1360937237/colorDetect.o ../src/colorDetect.c  -DXPRJ_toy-train-config=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1360937237/bluetooth.o: ../src/bluetooth.c  .generated_files/flags/toy-train-config/a09a6aa670e2732300bdb26bf741835b6c8ab35f .generated_files/flags/toy-train-config/6e6727ac753fc01c5df2b745c8483e752d55e4da
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/bluetooth.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/bluetooth.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb ${PACK_COMMON_OPTIONS}  -Os -ffunction-sections -mlong-calls -I "../src/config/toy-train-config" -I "../src/packs/ATSAMD21G18A_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/bluetooth.o.d" -o ${OBJECTDIR}/_ext/1360937237/bluetooth.o ../src/bluetooth.c  -DXPRJ_toy-train-config=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1360937237/audio.o: ../src/audio.c  .generated_files/flags/toy-train-config/f6691fd2717e79b9fcac2d1febf1bfdd853a1332 .generated_files/flags/toy-train-config/6e6727ac753fc01c5df2b745c8483e752d55e4da
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/audio.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/audio.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb ${PACK_COMMON_OPTIONS}  -Os -ffunction-sections -mlong-calls -I "../src/config/toy-train-config" -I "../src/packs/ATSAMD21G18A_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/audio.o.d" -o ${OBJECTDIR}/_ext/1360937237/audio.o ../src/audio.c  -DXPRJ_toy-train-config=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1360937237/AppGlobals.o: ../src/AppGlobals.c  .generated_files/flags/toy-train-config/d907f3d1634b2f294371c166c1b418a11a8fc3b1 .generated_files/flags/toy-train-config/6e6727ac753fc01c5df2b745c8483e752d55e4da
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/AppGlobals.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/AppGlobals.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb ${PACK_COMMON_OPTIONS}  -Os -ffunction-sections -mlong-calls -I "../src/config/toy-train-config" -I "../src/packs/ATSAMD21G18A_DFP" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/AppGlobals.o.d" -o ${OBJECTDIR}/_ext/1360937237/AppGlobals.o ../src/AppGlobals.c  -DXPRJ_toy-train-config=$(CND_CONF)  $(COMPARISON_BUILD) 
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compileCPP
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${DISTDIR}/toy-train.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    ../src/config/toy-train-config/ATSAMD21G18A.ld
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -mcpu=cortex-m0plus   -gdwarf-2  -D__$(MP_PROCESSOR_OPTION)__   -T"../src/config/toy-train-config/ATSAMD21G18A.ld"  -mthumb --specs=nosys.specs -Wl,-Map="${DISTDIR}/toy-train.X.${IMAGE_TYPE}.map"  -o ${DISTDIR}/toy-train.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}      -DXPRJ_toy-train-config=$(CND_CONF)  $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1 -Wl,--gc-sections  
	
	
	
	
	
	
else
${DISTDIR}/toy-train.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   ../src/config/toy-train-config/ATSAMD21G18A.ld
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -mcpu=cortex-m0plus  -D__$(MP_PROCESSOR_OPTION)__   -T"../src/config/toy-train-config/ATSAMD21G18A.ld"  -mthumb --specs=nosys.specs -Wl,-Map="${DISTDIR}/toy-train.X.${IMAGE_TYPE}.map"  -o ${DISTDIR}/toy-train.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}      -DXPRJ_toy-train-config=$(CND_CONF)  $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION) -Wl,--gc-sections  
	
	${MP_CC_DIR}/arm-none-eabi-objcopy -O ihex -R .eeprom -R .fuse -R .lock -R .signature "${DISTDIR}/toy-train.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}" "${DISTDIR}/toy-train.X.${IMAGE_TYPE}.hex"
	
	
	
	
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r ${OBJECTDIR}
	${RM} -r ${DISTDIR}

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell "${PATH_TO_IDE_BIN}"mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif

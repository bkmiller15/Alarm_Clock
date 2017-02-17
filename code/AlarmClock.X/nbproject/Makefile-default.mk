#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Include project Makefile
include Makefile

# Environment
MKDIR=mkdir -p
RM=rm -f 
CP=cp 

# Macros
CND_CONF=default
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/AlarmClock.X.${IMAGE_TYPE}.cof
else
IMAGE_TYPE=production
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/AlarmClock.X.${IMAGE_TYPE}.cof
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Object Files
OBJECTFILES=${OBJECTDIR}/trunk/ACDB.o ${OBJECTDIR}/trunk/AD.o ${OBJECTDIR}/trunk/BlueLEDs.o ${OBJECTDIR}/trunk/LCD.o ${OBJECTDIR}/trunk/PIC.o ${OBJECTDIR}/trunk/SPI.o ${OBJECTDIR}/trunk/Screens.o ${OBJECTDIR}/trunk/Timers.o ${OBJECTDIR}/trunk/helper.o ${OBJECTDIR}/trunk/main.o


CFLAGS=
ASFLAGS=
LDLIBSOPTIONS=

# Path to java used to run MPLAB X when this makefile was created
MP_JAVA_PATH=/opt/icedtea6-bin-1.10.4/jre/bin/
OS_CURRENT="$(shell uname -s)"
############# Tool locations ##########################################
# If you copy a project from one host to another, the path where the  #
# compiler is installed may be different.                             #
# If you open this project with MPLAB X in the new host, this         #
# makefile will be regenerated and the paths will be corrected.       #
#######################################################################
MP_CC=/opt/microchip/mplabc18/v3.40/bin/mcc18
# MP_BC is not defined
MP_AS=/opt/microchip/mplabc18/v3.40/bin/../mpasm/MPASMWIN
MP_LD=/opt/microchip/mplabc18/v3.40/bin/mplink
MP_AR=/opt/microchip/mplabc18/v3.40/bin/mplib
# MP_BC is not defined
MP_CC_DIR=/opt/microchip/mplabc18/v3.40/bin
# MP_BC_DIR is not defined
MP_AS_DIR=/opt/microchip/mplabc18/v3.40/bin/../mpasm
MP_LD_DIR=/opt/microchip/mplabc18/v3.40/bin
MP_AR_DIR=/opt/microchip/mplabc18/v3.40/bin
# MP_BC_DIR is not defined

# This makefile will use a C preprocessor to generate dependency files
MP_CPP=/opt/microchip/mplabx/mplab_ide/mplab_ide/modules/../../bin/mplab-cpp

.build-conf: ${BUILD_SUBPROJECTS}
	${MAKE}  -f nbproject/Makefile-default.mk dist/${CND_CONF}/${IMAGE_TYPE}/AlarmClock.X.${IMAGE_TYPE}.cof

MP_PROCESSOR_OPTION=18F4550
MP_PROCESSOR_OPTION_LD=18f4550
MP_LINKER_DEBUG_OPTION= -u_DEBUGCODESTART=0x7dc0 -u_DEBUGCODELEN=0x240 -u_DEBUGDATASTART=0x3f4 -u_DEBUGDATALEN=0xb
# ------------------------------------------------------------------------------------
# Rules for buildStep: createRevGrep
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
__revgrep__:   nbproject/Makefile-${CND_CONF}.mk
	@echo 'grep -q $$@' > __revgrep__
	@echo 'if [ "$$?" -ne "0" ]; then' >> __revgrep__
	@echo '  exit 0' >> __revgrep__
	@echo 'else' >> __revgrep__
	@echo '  exit 1' >> __revgrep__
	@echo 'fi' >> __revgrep__
	@chmod +x __revgrep__
else
__revgrep__:   nbproject/Makefile-${CND_CONF}.mk
	@echo 'grep -q $$@' > __revgrep__
	@echo 'if [ "$$?" -ne "0" ]; then' >> __revgrep__
	@echo '  exit 0' >> __revgrep__
	@echo 'else' >> __revgrep__
	@echo '  exit 1' >> __revgrep__
	@echo 'fi' >> __revgrep__
	@chmod +x __revgrep__
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/trunk/PIC.o: trunk/PIC.c  nbproject/Makefile-${CND_CONF}.mk
	${RM} ${OBJECTDIR}/trunk/PIC.o.d 
	${MKDIR} ${OBJECTDIR}/trunk 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -p$(MP_PROCESSOR_OPTION)   -I ${MP_CC_DIR}/../h  -fo ${OBJECTDIR}/trunk/PIC.o   trunk/PIC.c  > ${OBJECTDIR}/trunk/PIC.err 2>&1 ; if [ $$? -eq 0 ] ; then cat ${OBJECTDIR}/trunk/PIC.err | sed 's/\(^.*:.*:\)\(Warning\)\(.*$$\)/\1 \2:\3/g' ; else cat ${OBJECTDIR}/trunk/PIC.err | sed 's/\(^.*:.*:\)\(Error\)\(.*$$\)/\1 \2:\3/g' ; exit 1 ; fi
	${MP_CPP}  -MMD ${OBJECTDIR}/trunk/PIC.o.temp trunk/PIC.c __temp_cpp_output__ -D __18F4550 -D __18CXX -I /opt/microchip/mplabc18/v3.40/bin/../h  -D__18F4550
	printf "%s/" ${OBJECTDIR}/trunk > ${OBJECTDIR}/trunk/PIC.o.d
ifneq (,$(findstring MINGW32,$(OS_CURRENT)))
	cat ${OBJECTDIR}/trunk/PIC.o.temp | sed -e 's/\\\ /__SPACES__/g' -e's/\\$$/__EOL__/g' -e 's/\\/\//g' -e 's/__SPACES__/\\\ /g' -e 's/__EOL__/\\/g' >> ${OBJECTDIR}/trunk/PIC.o.d
else
	cat ${OBJECTDIR}/trunk/PIC.o.temp >> ${OBJECTDIR}/trunk/PIC.o.d
endif
	${RM} __temp_cpp_output__
${OBJECTDIR}/trunk/SPI.o: trunk/SPI.c  nbproject/Makefile-${CND_CONF}.mk
	${RM} ${OBJECTDIR}/trunk/SPI.o.d 
	${MKDIR} ${OBJECTDIR}/trunk 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -p$(MP_PROCESSOR_OPTION)   -I ${MP_CC_DIR}/../h  -fo ${OBJECTDIR}/trunk/SPI.o   trunk/SPI.c  > ${OBJECTDIR}/trunk/SPI.err 2>&1 ; if [ $$? -eq 0 ] ; then cat ${OBJECTDIR}/trunk/SPI.err | sed 's/\(^.*:.*:\)\(Warning\)\(.*$$\)/\1 \2:\3/g' ; else cat ${OBJECTDIR}/trunk/SPI.err | sed 's/\(^.*:.*:\)\(Error\)\(.*$$\)/\1 \2:\3/g' ; exit 1 ; fi
	${MP_CPP}  -MMD ${OBJECTDIR}/trunk/SPI.o.temp trunk/SPI.c __temp_cpp_output__ -D __18F4550 -D __18CXX -I /opt/microchip/mplabc18/v3.40/bin/../h  -D__18F4550
	printf "%s/" ${OBJECTDIR}/trunk > ${OBJECTDIR}/trunk/SPI.o.d
ifneq (,$(findstring MINGW32,$(OS_CURRENT)))
	cat ${OBJECTDIR}/trunk/SPI.o.temp | sed -e 's/\\\ /__SPACES__/g' -e's/\\$$/__EOL__/g' -e 's/\\/\//g' -e 's/__SPACES__/\\\ /g' -e 's/__EOL__/\\/g' >> ${OBJECTDIR}/trunk/SPI.o.d
else
	cat ${OBJECTDIR}/trunk/SPI.o.temp >> ${OBJECTDIR}/trunk/SPI.o.d
endif
	${RM} __temp_cpp_output__
${OBJECTDIR}/trunk/Timers.o: trunk/Timers.c  nbproject/Makefile-${CND_CONF}.mk
	${RM} ${OBJECTDIR}/trunk/Timers.o.d 
	${MKDIR} ${OBJECTDIR}/trunk 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -p$(MP_PROCESSOR_OPTION)   -I ${MP_CC_DIR}/../h  -fo ${OBJECTDIR}/trunk/Timers.o   trunk/Timers.c  > ${OBJECTDIR}/trunk/Timers.err 2>&1 ; if [ $$? -eq 0 ] ; then cat ${OBJECTDIR}/trunk/Timers.err | sed 's/\(^.*:.*:\)\(Warning\)\(.*$$\)/\1 \2:\3/g' ; else cat ${OBJECTDIR}/trunk/Timers.err | sed 's/\(^.*:.*:\)\(Error\)\(.*$$\)/\1 \2:\3/g' ; exit 1 ; fi
	${MP_CPP}  -MMD ${OBJECTDIR}/trunk/Timers.o.temp trunk/Timers.c __temp_cpp_output__ -D __18F4550 -D __18CXX -I /opt/microchip/mplabc18/v3.40/bin/../h  -D__18F4550
	printf "%s/" ${OBJECTDIR}/trunk > ${OBJECTDIR}/trunk/Timers.o.d
ifneq (,$(findstring MINGW32,$(OS_CURRENT)))
	cat ${OBJECTDIR}/trunk/Timers.o.temp | sed -e 's/\\\ /__SPACES__/g' -e's/\\$$/__EOL__/g' -e 's/\\/\//g' -e 's/__SPACES__/\\\ /g' -e 's/__EOL__/\\/g' >> ${OBJECTDIR}/trunk/Timers.o.d
else
	cat ${OBJECTDIR}/trunk/Timers.o.temp >> ${OBJECTDIR}/trunk/Timers.o.d
endif
	${RM} __temp_cpp_output__
${OBJECTDIR}/trunk/ACDB.o: trunk/ACDB.c  nbproject/Makefile-${CND_CONF}.mk
	${RM} ${OBJECTDIR}/trunk/ACDB.o.d 
	${MKDIR} ${OBJECTDIR}/trunk 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -p$(MP_PROCESSOR_OPTION)   -I ${MP_CC_DIR}/../h  -fo ${OBJECTDIR}/trunk/ACDB.o   trunk/ACDB.c  > ${OBJECTDIR}/trunk/ACDB.err 2>&1 ; if [ $$? -eq 0 ] ; then cat ${OBJECTDIR}/trunk/ACDB.err | sed 's/\(^.*:.*:\)\(Warning\)\(.*$$\)/\1 \2:\3/g' ; else cat ${OBJECTDIR}/trunk/ACDB.err | sed 's/\(^.*:.*:\)\(Error\)\(.*$$\)/\1 \2:\3/g' ; exit 1 ; fi
	${MP_CPP}  -MMD ${OBJECTDIR}/trunk/ACDB.o.temp trunk/ACDB.c __temp_cpp_output__ -D __18F4550 -D __18CXX -I /opt/microchip/mplabc18/v3.40/bin/../h  -D__18F4550
	printf "%s/" ${OBJECTDIR}/trunk > ${OBJECTDIR}/trunk/ACDB.o.d
ifneq (,$(findstring MINGW32,$(OS_CURRENT)))
	cat ${OBJECTDIR}/trunk/ACDB.o.temp | sed -e 's/\\\ /__SPACES__/g' -e's/\\$$/__EOL__/g' -e 's/\\/\//g' -e 's/__SPACES__/\\\ /g' -e 's/__EOL__/\\/g' >> ${OBJECTDIR}/trunk/ACDB.o.d
else
	cat ${OBJECTDIR}/trunk/ACDB.o.temp >> ${OBJECTDIR}/trunk/ACDB.o.d
endif
	${RM} __temp_cpp_output__
${OBJECTDIR}/trunk/main.o: trunk/main.c  nbproject/Makefile-${CND_CONF}.mk
	${RM} ${OBJECTDIR}/trunk/main.o.d 
	${MKDIR} ${OBJECTDIR}/trunk 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -p$(MP_PROCESSOR_OPTION)   -I ${MP_CC_DIR}/../h  -fo ${OBJECTDIR}/trunk/main.o   trunk/main.c  > ${OBJECTDIR}/trunk/main.err 2>&1 ; if [ $$? -eq 0 ] ; then cat ${OBJECTDIR}/trunk/main.err | sed 's/\(^.*:.*:\)\(Warning\)\(.*$$\)/\1 \2:\3/g' ; else cat ${OBJECTDIR}/trunk/main.err | sed 's/\(^.*:.*:\)\(Error\)\(.*$$\)/\1 \2:\3/g' ; exit 1 ; fi
	${MP_CPP}  -MMD ${OBJECTDIR}/trunk/main.o.temp trunk/main.c __temp_cpp_output__ -D __18F4550 -D __18CXX -I /opt/microchip/mplabc18/v3.40/bin/../h  -D__18F4550
	printf "%s/" ${OBJECTDIR}/trunk > ${OBJECTDIR}/trunk/main.o.d
ifneq (,$(findstring MINGW32,$(OS_CURRENT)))
	cat ${OBJECTDIR}/trunk/main.o.temp | sed -e 's/\\\ /__SPACES__/g' -e's/\\$$/__EOL__/g' -e 's/\\/\//g' -e 's/__SPACES__/\\\ /g' -e 's/__EOL__/\\/g' >> ${OBJECTDIR}/trunk/main.o.d
else
	cat ${OBJECTDIR}/trunk/main.o.temp >> ${OBJECTDIR}/trunk/main.o.d
endif
	${RM} __temp_cpp_output__
${OBJECTDIR}/trunk/helper.o: trunk/helper.c  nbproject/Makefile-${CND_CONF}.mk
	${RM} ${OBJECTDIR}/trunk/helper.o.d 
	${MKDIR} ${OBJECTDIR}/trunk 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -p$(MP_PROCESSOR_OPTION)   -I ${MP_CC_DIR}/../h  -fo ${OBJECTDIR}/trunk/helper.o   trunk/helper.c  > ${OBJECTDIR}/trunk/helper.err 2>&1 ; if [ $$? -eq 0 ] ; then cat ${OBJECTDIR}/trunk/helper.err | sed 's/\(^.*:.*:\)\(Warning\)\(.*$$\)/\1 \2:\3/g' ; else cat ${OBJECTDIR}/trunk/helper.err | sed 's/\(^.*:.*:\)\(Error\)\(.*$$\)/\1 \2:\3/g' ; exit 1 ; fi
	${MP_CPP}  -MMD ${OBJECTDIR}/trunk/helper.o.temp trunk/helper.c __temp_cpp_output__ -D __18F4550 -D __18CXX -I /opt/microchip/mplabc18/v3.40/bin/../h  -D__18F4550
	printf "%s/" ${OBJECTDIR}/trunk > ${OBJECTDIR}/trunk/helper.o.d
ifneq (,$(findstring MINGW32,$(OS_CURRENT)))
	cat ${OBJECTDIR}/trunk/helper.o.temp | sed -e 's/\\\ /__SPACES__/g' -e's/\\$$/__EOL__/g' -e 's/\\/\//g' -e 's/__SPACES__/\\\ /g' -e 's/__EOL__/\\/g' >> ${OBJECTDIR}/trunk/helper.o.d
else
	cat ${OBJECTDIR}/trunk/helper.o.temp >> ${OBJECTDIR}/trunk/helper.o.d
endif
	${RM} __temp_cpp_output__
${OBJECTDIR}/trunk/AD.o: trunk/AD.c  nbproject/Makefile-${CND_CONF}.mk
	${RM} ${OBJECTDIR}/trunk/AD.o.d 
	${MKDIR} ${OBJECTDIR}/trunk 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -p$(MP_PROCESSOR_OPTION)   -I ${MP_CC_DIR}/../h  -fo ${OBJECTDIR}/trunk/AD.o   trunk/AD.c  > ${OBJECTDIR}/trunk/AD.err 2>&1 ; if [ $$? -eq 0 ] ; then cat ${OBJECTDIR}/trunk/AD.err | sed 's/\(^.*:.*:\)\(Warning\)\(.*$$\)/\1 \2:\3/g' ; else cat ${OBJECTDIR}/trunk/AD.err | sed 's/\(^.*:.*:\)\(Error\)\(.*$$\)/\1 \2:\3/g' ; exit 1 ; fi
	${MP_CPP}  -MMD ${OBJECTDIR}/trunk/AD.o.temp trunk/AD.c __temp_cpp_output__ -D __18F4550 -D __18CXX -I /opt/microchip/mplabc18/v3.40/bin/../h  -D__18F4550
	printf "%s/" ${OBJECTDIR}/trunk > ${OBJECTDIR}/trunk/AD.o.d
ifneq (,$(findstring MINGW32,$(OS_CURRENT)))
	cat ${OBJECTDIR}/trunk/AD.o.temp | sed -e 's/\\\ /__SPACES__/g' -e's/\\$$/__EOL__/g' -e 's/\\/\//g' -e 's/__SPACES__/\\\ /g' -e 's/__EOL__/\\/g' >> ${OBJECTDIR}/trunk/AD.o.d
else
	cat ${OBJECTDIR}/trunk/AD.o.temp >> ${OBJECTDIR}/trunk/AD.o.d
endif
	${RM} __temp_cpp_output__
${OBJECTDIR}/trunk/LCD.o: trunk/LCD.c  nbproject/Makefile-${CND_CONF}.mk
	${RM} ${OBJECTDIR}/trunk/LCD.o.d 
	${MKDIR} ${OBJECTDIR}/trunk 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -p$(MP_PROCESSOR_OPTION)   -I ${MP_CC_DIR}/../h  -fo ${OBJECTDIR}/trunk/LCD.o   trunk/LCD.c  > ${OBJECTDIR}/trunk/LCD.err 2>&1 ; if [ $$? -eq 0 ] ; then cat ${OBJECTDIR}/trunk/LCD.err | sed 's/\(^.*:.*:\)\(Warning\)\(.*$$\)/\1 \2:\3/g' ; else cat ${OBJECTDIR}/trunk/LCD.err | sed 's/\(^.*:.*:\)\(Error\)\(.*$$\)/\1 \2:\3/g' ; exit 1 ; fi
	${MP_CPP}  -MMD ${OBJECTDIR}/trunk/LCD.o.temp trunk/LCD.c __temp_cpp_output__ -D __18F4550 -D __18CXX -I /opt/microchip/mplabc18/v3.40/bin/../h  -D__18F4550
	printf "%s/" ${OBJECTDIR}/trunk > ${OBJECTDIR}/trunk/LCD.o.d
ifneq (,$(findstring MINGW32,$(OS_CURRENT)))
	cat ${OBJECTDIR}/trunk/LCD.o.temp | sed -e 's/\\\ /__SPACES__/g' -e's/\\$$/__EOL__/g' -e 's/\\/\//g' -e 's/__SPACES__/\\\ /g' -e 's/__EOL__/\\/g' >> ${OBJECTDIR}/trunk/LCD.o.d
else
	cat ${OBJECTDIR}/trunk/LCD.o.temp >> ${OBJECTDIR}/trunk/LCD.o.d
endif
	${RM} __temp_cpp_output__
${OBJECTDIR}/trunk/Screens.o: trunk/Screens.c  nbproject/Makefile-${CND_CONF}.mk
	${RM} ${OBJECTDIR}/trunk/Screens.o.d 
	${MKDIR} ${OBJECTDIR}/trunk 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -p$(MP_PROCESSOR_OPTION)   -I ${MP_CC_DIR}/../h  -fo ${OBJECTDIR}/trunk/Screens.o   trunk/Screens.c  > ${OBJECTDIR}/trunk/Screens.err 2>&1 ; if [ $$? -eq 0 ] ; then cat ${OBJECTDIR}/trunk/Screens.err | sed 's/\(^.*:.*:\)\(Warning\)\(.*$$\)/\1 \2:\3/g' ; else cat ${OBJECTDIR}/trunk/Screens.err | sed 's/\(^.*:.*:\)\(Error\)\(.*$$\)/\1 \2:\3/g' ; exit 1 ; fi
	${MP_CPP}  -MMD ${OBJECTDIR}/trunk/Screens.o.temp trunk/Screens.c __temp_cpp_output__ -D __18F4550 -D __18CXX -I /opt/microchip/mplabc18/v3.40/bin/../h  -D__18F4550
	printf "%s/" ${OBJECTDIR}/trunk > ${OBJECTDIR}/trunk/Screens.o.d
ifneq (,$(findstring MINGW32,$(OS_CURRENT)))
	cat ${OBJECTDIR}/trunk/Screens.o.temp | sed -e 's/\\\ /__SPACES__/g' -e's/\\$$/__EOL__/g' -e 's/\\/\//g' -e 's/__SPACES__/\\\ /g' -e 's/__EOL__/\\/g' >> ${OBJECTDIR}/trunk/Screens.o.d
else
	cat ${OBJECTDIR}/trunk/Screens.o.temp >> ${OBJECTDIR}/trunk/Screens.o.d
endif
	${RM} __temp_cpp_output__
${OBJECTDIR}/trunk/BlueLEDs.o: trunk/BlueLEDs.c  nbproject/Makefile-${CND_CONF}.mk
	${RM} ${OBJECTDIR}/trunk/BlueLEDs.o.d 
	${MKDIR} ${OBJECTDIR}/trunk 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -p$(MP_PROCESSOR_OPTION)   -I ${MP_CC_DIR}/../h  -fo ${OBJECTDIR}/trunk/BlueLEDs.o   trunk/BlueLEDs.c  > ${OBJECTDIR}/trunk/BlueLEDs.err 2>&1 ; if [ $$? -eq 0 ] ; then cat ${OBJECTDIR}/trunk/BlueLEDs.err | sed 's/\(^.*:.*:\)\(Warning\)\(.*$$\)/\1 \2:\3/g' ; else cat ${OBJECTDIR}/trunk/BlueLEDs.err | sed 's/\(^.*:.*:\)\(Error\)\(.*$$\)/\1 \2:\3/g' ; exit 1 ; fi
	${MP_CPP}  -MMD ${OBJECTDIR}/trunk/BlueLEDs.o.temp trunk/BlueLEDs.c __temp_cpp_output__ -D __18F4550 -D __18CXX -I /opt/microchip/mplabc18/v3.40/bin/../h  -D__18F4550
	printf "%s/" ${OBJECTDIR}/trunk > ${OBJECTDIR}/trunk/BlueLEDs.o.d
ifneq (,$(findstring MINGW32,$(OS_CURRENT)))
	cat ${OBJECTDIR}/trunk/BlueLEDs.o.temp | sed -e 's/\\\ /__SPACES__/g' -e's/\\$$/__EOL__/g' -e 's/\\/\//g' -e 's/__SPACES__/\\\ /g' -e 's/__EOL__/\\/g' >> ${OBJECTDIR}/trunk/BlueLEDs.o.d
else
	cat ${OBJECTDIR}/trunk/BlueLEDs.o.temp >> ${OBJECTDIR}/trunk/BlueLEDs.o.d
endif
	${RM} __temp_cpp_output__
else
${OBJECTDIR}/trunk/PIC.o: trunk/PIC.c  nbproject/Makefile-${CND_CONF}.mk
	${RM} ${OBJECTDIR}/trunk/PIC.o.d 
	${MKDIR} ${OBJECTDIR}/trunk 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION)   -I ${MP_CC_DIR}/../h  -fo ${OBJECTDIR}/trunk/PIC.o   trunk/PIC.c  > ${OBJECTDIR}/trunk/PIC.err 2>&1 ; if [ $$? -eq 0 ] ; then cat ${OBJECTDIR}/trunk/PIC.err | sed 's/\(^.*:.*:\)\(Warning\)\(.*$$\)/\1 \2:\3/g' ; else cat ${OBJECTDIR}/trunk/PIC.err | sed 's/\(^.*:.*:\)\(Error\)\(.*$$\)/\1 \2:\3/g' ; exit 1 ; fi
	${MP_CPP}  -MMD ${OBJECTDIR}/trunk/PIC.o.temp trunk/PIC.c __temp_cpp_output__ -D __18F4550 -D __18CXX -I /opt/microchip/mplabc18/v3.40/bin/../h  -D__18F4550
	printf "%s/" ${OBJECTDIR}/trunk > ${OBJECTDIR}/trunk/PIC.o.d
ifneq (,$(findstring MINGW32,$(OS_CURRENT)))
	cat ${OBJECTDIR}/trunk/PIC.o.temp | sed -e 's/\\\ /__SPACES__/g' -e's/\\$$/__EOL__/g' -e 's/\\/\//g' -e 's/__SPACES__/\\\ /g' -e 's/__EOL__/\\/g' >> ${OBJECTDIR}/trunk/PIC.o.d
else
	cat ${OBJECTDIR}/trunk/PIC.o.temp >> ${OBJECTDIR}/trunk/PIC.o.d
endif
	${RM} __temp_cpp_output__
${OBJECTDIR}/trunk/SPI.o: trunk/SPI.c  nbproject/Makefile-${CND_CONF}.mk
	${RM} ${OBJECTDIR}/trunk/SPI.o.d 
	${MKDIR} ${OBJECTDIR}/trunk 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION)   -I ${MP_CC_DIR}/../h  -fo ${OBJECTDIR}/trunk/SPI.o   trunk/SPI.c  > ${OBJECTDIR}/trunk/SPI.err 2>&1 ; if [ $$? -eq 0 ] ; then cat ${OBJECTDIR}/trunk/SPI.err | sed 's/\(^.*:.*:\)\(Warning\)\(.*$$\)/\1 \2:\3/g' ; else cat ${OBJECTDIR}/trunk/SPI.err | sed 's/\(^.*:.*:\)\(Error\)\(.*$$\)/\1 \2:\3/g' ; exit 1 ; fi
	${MP_CPP}  -MMD ${OBJECTDIR}/trunk/SPI.o.temp trunk/SPI.c __temp_cpp_output__ -D __18F4550 -D __18CXX -I /opt/microchip/mplabc18/v3.40/bin/../h  -D__18F4550
	printf "%s/" ${OBJECTDIR}/trunk > ${OBJECTDIR}/trunk/SPI.o.d
ifneq (,$(findstring MINGW32,$(OS_CURRENT)))
	cat ${OBJECTDIR}/trunk/SPI.o.temp | sed -e 's/\\\ /__SPACES__/g' -e's/\\$$/__EOL__/g' -e 's/\\/\//g' -e 's/__SPACES__/\\\ /g' -e 's/__EOL__/\\/g' >> ${OBJECTDIR}/trunk/SPI.o.d
else
	cat ${OBJECTDIR}/trunk/SPI.o.temp >> ${OBJECTDIR}/trunk/SPI.o.d
endif
	${RM} __temp_cpp_output__
${OBJECTDIR}/trunk/Timers.o: trunk/Timers.c  nbproject/Makefile-${CND_CONF}.mk
	${RM} ${OBJECTDIR}/trunk/Timers.o.d 
	${MKDIR} ${OBJECTDIR}/trunk 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION)   -I ${MP_CC_DIR}/../h  -fo ${OBJECTDIR}/trunk/Timers.o   trunk/Timers.c  > ${OBJECTDIR}/trunk/Timers.err 2>&1 ; if [ $$? -eq 0 ] ; then cat ${OBJECTDIR}/trunk/Timers.err | sed 's/\(^.*:.*:\)\(Warning\)\(.*$$\)/\1 \2:\3/g' ; else cat ${OBJECTDIR}/trunk/Timers.err | sed 's/\(^.*:.*:\)\(Error\)\(.*$$\)/\1 \2:\3/g' ; exit 1 ; fi
	${MP_CPP}  -MMD ${OBJECTDIR}/trunk/Timers.o.temp trunk/Timers.c __temp_cpp_output__ -D __18F4550 -D __18CXX -I /opt/microchip/mplabc18/v3.40/bin/../h  -D__18F4550
	printf "%s/" ${OBJECTDIR}/trunk > ${OBJECTDIR}/trunk/Timers.o.d
ifneq (,$(findstring MINGW32,$(OS_CURRENT)))
	cat ${OBJECTDIR}/trunk/Timers.o.temp | sed -e 's/\\\ /__SPACES__/g' -e's/\\$$/__EOL__/g' -e 's/\\/\//g' -e 's/__SPACES__/\\\ /g' -e 's/__EOL__/\\/g' >> ${OBJECTDIR}/trunk/Timers.o.d
else
	cat ${OBJECTDIR}/trunk/Timers.o.temp >> ${OBJECTDIR}/trunk/Timers.o.d
endif
	${RM} __temp_cpp_output__
${OBJECTDIR}/trunk/ACDB.o: trunk/ACDB.c  nbproject/Makefile-${CND_CONF}.mk
	${RM} ${OBJECTDIR}/trunk/ACDB.o.d 
	${MKDIR} ${OBJECTDIR}/trunk 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION)   -I ${MP_CC_DIR}/../h  -fo ${OBJECTDIR}/trunk/ACDB.o   trunk/ACDB.c  > ${OBJECTDIR}/trunk/ACDB.err 2>&1 ; if [ $$? -eq 0 ] ; then cat ${OBJECTDIR}/trunk/ACDB.err | sed 's/\(^.*:.*:\)\(Warning\)\(.*$$\)/\1 \2:\3/g' ; else cat ${OBJECTDIR}/trunk/ACDB.err | sed 's/\(^.*:.*:\)\(Error\)\(.*$$\)/\1 \2:\3/g' ; exit 1 ; fi
	${MP_CPP}  -MMD ${OBJECTDIR}/trunk/ACDB.o.temp trunk/ACDB.c __temp_cpp_output__ -D __18F4550 -D __18CXX -I /opt/microchip/mplabc18/v3.40/bin/../h  -D__18F4550
	printf "%s/" ${OBJECTDIR}/trunk > ${OBJECTDIR}/trunk/ACDB.o.d
ifneq (,$(findstring MINGW32,$(OS_CURRENT)))
	cat ${OBJECTDIR}/trunk/ACDB.o.temp | sed -e 's/\\\ /__SPACES__/g' -e's/\\$$/__EOL__/g' -e 's/\\/\//g' -e 's/__SPACES__/\\\ /g' -e 's/__EOL__/\\/g' >> ${OBJECTDIR}/trunk/ACDB.o.d
else
	cat ${OBJECTDIR}/trunk/ACDB.o.temp >> ${OBJECTDIR}/trunk/ACDB.o.d
endif
	${RM} __temp_cpp_output__
${OBJECTDIR}/trunk/main.o: trunk/main.c  nbproject/Makefile-${CND_CONF}.mk
	${RM} ${OBJECTDIR}/trunk/main.o.d 
	${MKDIR} ${OBJECTDIR}/trunk 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION)   -I ${MP_CC_DIR}/../h  -fo ${OBJECTDIR}/trunk/main.o   trunk/main.c  > ${OBJECTDIR}/trunk/main.err 2>&1 ; if [ $$? -eq 0 ] ; then cat ${OBJECTDIR}/trunk/main.err | sed 's/\(^.*:.*:\)\(Warning\)\(.*$$\)/\1 \2:\3/g' ; else cat ${OBJECTDIR}/trunk/main.err | sed 's/\(^.*:.*:\)\(Error\)\(.*$$\)/\1 \2:\3/g' ; exit 1 ; fi
	${MP_CPP}  -MMD ${OBJECTDIR}/trunk/main.o.temp trunk/main.c __temp_cpp_output__ -D __18F4550 -D __18CXX -I /opt/microchip/mplabc18/v3.40/bin/../h  -D__18F4550
	printf "%s/" ${OBJECTDIR}/trunk > ${OBJECTDIR}/trunk/main.o.d
ifneq (,$(findstring MINGW32,$(OS_CURRENT)))
	cat ${OBJECTDIR}/trunk/main.o.temp | sed -e 's/\\\ /__SPACES__/g' -e's/\\$$/__EOL__/g' -e 's/\\/\//g' -e 's/__SPACES__/\\\ /g' -e 's/__EOL__/\\/g' >> ${OBJECTDIR}/trunk/main.o.d
else
	cat ${OBJECTDIR}/trunk/main.o.temp >> ${OBJECTDIR}/trunk/main.o.d
endif
	${RM} __temp_cpp_output__
${OBJECTDIR}/trunk/helper.o: trunk/helper.c  nbproject/Makefile-${CND_CONF}.mk
	${RM} ${OBJECTDIR}/trunk/helper.o.d 
	${MKDIR} ${OBJECTDIR}/trunk 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION)   -I ${MP_CC_DIR}/../h  -fo ${OBJECTDIR}/trunk/helper.o   trunk/helper.c  > ${OBJECTDIR}/trunk/helper.err 2>&1 ; if [ $$? -eq 0 ] ; then cat ${OBJECTDIR}/trunk/helper.err | sed 's/\(^.*:.*:\)\(Warning\)\(.*$$\)/\1 \2:\3/g' ; else cat ${OBJECTDIR}/trunk/helper.err | sed 's/\(^.*:.*:\)\(Error\)\(.*$$\)/\1 \2:\3/g' ; exit 1 ; fi
	${MP_CPP}  -MMD ${OBJECTDIR}/trunk/helper.o.temp trunk/helper.c __temp_cpp_output__ -D __18F4550 -D __18CXX -I /opt/microchip/mplabc18/v3.40/bin/../h  -D__18F4550
	printf "%s/" ${OBJECTDIR}/trunk > ${OBJECTDIR}/trunk/helper.o.d
ifneq (,$(findstring MINGW32,$(OS_CURRENT)))
	cat ${OBJECTDIR}/trunk/helper.o.temp | sed -e 's/\\\ /__SPACES__/g' -e's/\\$$/__EOL__/g' -e 's/\\/\//g' -e 's/__SPACES__/\\\ /g' -e 's/__EOL__/\\/g' >> ${OBJECTDIR}/trunk/helper.o.d
else
	cat ${OBJECTDIR}/trunk/helper.o.temp >> ${OBJECTDIR}/trunk/helper.o.d
endif
	${RM} __temp_cpp_output__
${OBJECTDIR}/trunk/AD.o: trunk/AD.c  nbproject/Makefile-${CND_CONF}.mk
	${RM} ${OBJECTDIR}/trunk/AD.o.d 
	${MKDIR} ${OBJECTDIR}/trunk 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION)   -I ${MP_CC_DIR}/../h  -fo ${OBJECTDIR}/trunk/AD.o   trunk/AD.c  > ${OBJECTDIR}/trunk/AD.err 2>&1 ; if [ $$? -eq 0 ] ; then cat ${OBJECTDIR}/trunk/AD.err | sed 's/\(^.*:.*:\)\(Warning\)\(.*$$\)/\1 \2:\3/g' ; else cat ${OBJECTDIR}/trunk/AD.err | sed 's/\(^.*:.*:\)\(Error\)\(.*$$\)/\1 \2:\3/g' ; exit 1 ; fi
	${MP_CPP}  -MMD ${OBJECTDIR}/trunk/AD.o.temp trunk/AD.c __temp_cpp_output__ -D __18F4550 -D __18CXX -I /opt/microchip/mplabc18/v3.40/bin/../h  -D__18F4550
	printf "%s/" ${OBJECTDIR}/trunk > ${OBJECTDIR}/trunk/AD.o.d
ifneq (,$(findstring MINGW32,$(OS_CURRENT)))
	cat ${OBJECTDIR}/trunk/AD.o.temp | sed -e 's/\\\ /__SPACES__/g' -e's/\\$$/__EOL__/g' -e 's/\\/\//g' -e 's/__SPACES__/\\\ /g' -e 's/__EOL__/\\/g' >> ${OBJECTDIR}/trunk/AD.o.d
else
	cat ${OBJECTDIR}/trunk/AD.o.temp >> ${OBJECTDIR}/trunk/AD.o.d
endif
	${RM} __temp_cpp_output__
${OBJECTDIR}/trunk/LCD.o: trunk/LCD.c  nbproject/Makefile-${CND_CONF}.mk
	${RM} ${OBJECTDIR}/trunk/LCD.o.d 
	${MKDIR} ${OBJECTDIR}/trunk 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION)   -I ${MP_CC_DIR}/../h  -fo ${OBJECTDIR}/trunk/LCD.o   trunk/LCD.c  > ${OBJECTDIR}/trunk/LCD.err 2>&1 ; if [ $$? -eq 0 ] ; then cat ${OBJECTDIR}/trunk/LCD.err | sed 's/\(^.*:.*:\)\(Warning\)\(.*$$\)/\1 \2:\3/g' ; else cat ${OBJECTDIR}/trunk/LCD.err | sed 's/\(^.*:.*:\)\(Error\)\(.*$$\)/\1 \2:\3/g' ; exit 1 ; fi
	${MP_CPP}  -MMD ${OBJECTDIR}/trunk/LCD.o.temp trunk/LCD.c __temp_cpp_output__ -D __18F4550 -D __18CXX -I /opt/microchip/mplabc18/v3.40/bin/../h  -D__18F4550
	printf "%s/" ${OBJECTDIR}/trunk > ${OBJECTDIR}/trunk/LCD.o.d
ifneq (,$(findstring MINGW32,$(OS_CURRENT)))
	cat ${OBJECTDIR}/trunk/LCD.o.temp | sed -e 's/\\\ /__SPACES__/g' -e's/\\$$/__EOL__/g' -e 's/\\/\//g' -e 's/__SPACES__/\\\ /g' -e 's/__EOL__/\\/g' >> ${OBJECTDIR}/trunk/LCD.o.d
else
	cat ${OBJECTDIR}/trunk/LCD.o.temp >> ${OBJECTDIR}/trunk/LCD.o.d
endif
	${RM} __temp_cpp_output__
${OBJECTDIR}/trunk/Screens.o: trunk/Screens.c  nbproject/Makefile-${CND_CONF}.mk
	${RM} ${OBJECTDIR}/trunk/Screens.o.d 
	${MKDIR} ${OBJECTDIR}/trunk 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION)   -I ${MP_CC_DIR}/../h  -fo ${OBJECTDIR}/trunk/Screens.o   trunk/Screens.c  > ${OBJECTDIR}/trunk/Screens.err 2>&1 ; if [ $$? -eq 0 ] ; then cat ${OBJECTDIR}/trunk/Screens.err | sed 's/\(^.*:.*:\)\(Warning\)\(.*$$\)/\1 \2:\3/g' ; else cat ${OBJECTDIR}/trunk/Screens.err | sed 's/\(^.*:.*:\)\(Error\)\(.*$$\)/\1 \2:\3/g' ; exit 1 ; fi
	${MP_CPP}  -MMD ${OBJECTDIR}/trunk/Screens.o.temp trunk/Screens.c __temp_cpp_output__ -D __18F4550 -D __18CXX -I /opt/microchip/mplabc18/v3.40/bin/../h  -D__18F4550
	printf "%s/" ${OBJECTDIR}/trunk > ${OBJECTDIR}/trunk/Screens.o.d
ifneq (,$(findstring MINGW32,$(OS_CURRENT)))
	cat ${OBJECTDIR}/trunk/Screens.o.temp | sed -e 's/\\\ /__SPACES__/g' -e's/\\$$/__EOL__/g' -e 's/\\/\//g' -e 's/__SPACES__/\\\ /g' -e 's/__EOL__/\\/g' >> ${OBJECTDIR}/trunk/Screens.o.d
else
	cat ${OBJECTDIR}/trunk/Screens.o.temp >> ${OBJECTDIR}/trunk/Screens.o.d
endif
	${RM} __temp_cpp_output__
${OBJECTDIR}/trunk/BlueLEDs.o: trunk/BlueLEDs.c  nbproject/Makefile-${CND_CONF}.mk
	${RM} ${OBJECTDIR}/trunk/BlueLEDs.o.d 
	${MKDIR} ${OBJECTDIR}/trunk 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION)   -I ${MP_CC_DIR}/../h  -fo ${OBJECTDIR}/trunk/BlueLEDs.o   trunk/BlueLEDs.c  > ${OBJECTDIR}/trunk/BlueLEDs.err 2>&1 ; if [ $$? -eq 0 ] ; then cat ${OBJECTDIR}/trunk/BlueLEDs.err | sed 's/\(^.*:.*:\)\(Warning\)\(.*$$\)/\1 \2:\3/g' ; else cat ${OBJECTDIR}/trunk/BlueLEDs.err | sed 's/\(^.*:.*:\)\(Error\)\(.*$$\)/\1 \2:\3/g' ; exit 1 ; fi
	${MP_CPP}  -MMD ${OBJECTDIR}/trunk/BlueLEDs.o.temp trunk/BlueLEDs.c __temp_cpp_output__ -D __18F4550 -D __18CXX -I /opt/microchip/mplabc18/v3.40/bin/../h  -D__18F4550
	printf "%s/" ${OBJECTDIR}/trunk > ${OBJECTDIR}/trunk/BlueLEDs.o.d
ifneq (,$(findstring MINGW32,$(OS_CURRENT)))
	cat ${OBJECTDIR}/trunk/BlueLEDs.o.temp | sed -e 's/\\\ /__SPACES__/g' -e's/\\$$/__EOL__/g' -e 's/\\/\//g' -e 's/__SPACES__/\\\ /g' -e 's/__EOL__/\\/g' >> ${OBJECTDIR}/trunk/BlueLEDs.o.d
else
	cat ${OBJECTDIR}/trunk/BlueLEDs.o.temp >> ${OBJECTDIR}/trunk/BlueLEDs.o.d
endif
	${RM} __temp_cpp_output__
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/AlarmClock.X.${IMAGE_TYPE}.cof: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_LD} $(MP_EXTRA_LD_PRE)   -p$(MP_PROCESSOR_OPTION_LD)  -w -x -u_DEBUG   -z__MPLAB_BUILD=1  -u_CRUNTIME -z__MPLAB_DEBUG=1 -z__MPLAB_DEBUGGER_ICD3=1 $(MP_LINKER_DEBUG_OPTION) -l ${MP_CC_DIR}/../lib  -odist/${CND_CONF}/${IMAGE_TYPE}/AlarmClock.X.${IMAGE_TYPE}.cof ${OBJECTFILES}      
else
dist/${CND_CONF}/${IMAGE_TYPE}/AlarmClock.X.${IMAGE_TYPE}.cof: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_LD} $(MP_EXTRA_LD_PRE)   -p$(MP_PROCESSOR_OPTION_LD)  -w    -z__MPLAB_BUILD=1  -u_CRUNTIME -l ${MP_CC_DIR}/../lib  -odist/${CND_CONF}/${IMAGE_TYPE}/AlarmClock.X.${IMAGE_TYPE}.cof ${OBJECTFILES}      
endif


# Subprojects
.build-subprojects:

# Clean Targets
.clean-conf:
	${RM} -r build/default
	${RM} -r dist/default

# Enable dependency checking
.dep.inc: .depcheck-impl

include .dep.inc

#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Environment
MKDIR=mkdir
CP=cp
GREP=grep
NM=nm
CCADMIN=CCadmin
RANLIB=ranlib
CC=gcc
CCC=g++
CXX=g++
FC=gfortran
AS=as

# Macros
CND_PLATFORM=GNU-Linux
CND_DLIB_EXT=so
CND_CONF=Debug
CND_DISTDIR=dist
CND_BUILDDIR=build

# Include project Makefile
include Makefile

# Object Directory
OBJECTDIR=${CND_BUILDDIR}/${CND_CONF}/${CND_PLATFORM}

# Object Files
OBJECTFILES= \
	${OBJECTDIR}/ZApiBroadcastMsgHandler.o \
	${OBJECTDIR}/ZApiCalcAddHandler.o \
	${OBJECTDIR}/ZApiCalcDivHandler.o \
	${OBJECTDIR}/ZApiCalcMulHandler.o \
	${OBJECTDIR}/ZApiCalculatorHandler.o \
	${OBJECTDIR}/ZApiExceptionHandler.o \
	${OBJECTDIR}/ZApiMTGProtobufHandler.o \
	${OBJECTDIR}/ZApiMTGStringHandler.o \
	${OBJECTDIR}/ZApiUtil.o \
	${OBJECTDIR}/ZConfigReader.o \
	${OBJECTDIR}/ZHandlerFactory.o \
	${OBJECTDIR}/ZHttpServer.o \
	${OBJECTDIR}/ZLogUtil.o \
	${OBJECTDIR}/inireader/INIReader.o \
	${OBJECTDIR}/inireader/ini.o \
	${OBJECTDIR}/main.o


# C Compiler Flags
CFLAGS=

# CC Compiler Flags
CCFLAGS=
CXXFLAGS=

# Fortran Compiler Flags
FFLAGS=

# Assembler Flags
ASFLAGS=

# Link Libraries and Options
LDLIBSOPTIONS=/usr/local/lib/libPocoNetd.a /usr/local/lib/libPocoUtild.a /usr/local/lib/libPocoJSONd.a /usr/local/lib/libPocoXMLd.a /usr/local/lib/libPocoDatad.a /usr/local/lib/libPocoFoundationd.a /usr/local/lib/libPocoCryptod.a /usr/local/lib/libPocoNetSSLd.a -lpthread /usr/lib/x86_64-linux-gnu/librt.a /usr/lib/x86_64-linux-gnu/libz.a /usr/lib/x86_64-linux-gnu/libssl.a /usr/lib/x86_64-linux-gnu/libcrypto.a -ldl

# Build Targets
.build-conf: ${BUILD_SUBPROJECTS}
	"${MAKE}"  -f nbproject/Makefile-${CND_CONF}.mk ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/zpgroupservice

${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/zpgroupservice: /usr/local/lib/libPocoNetd.a

${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/zpgroupservice: /usr/local/lib/libPocoUtild.a

${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/zpgroupservice: /usr/local/lib/libPocoJSONd.a

${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/zpgroupservice: /usr/local/lib/libPocoXMLd.a

${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/zpgroupservice: /usr/local/lib/libPocoDatad.a

${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/zpgroupservice: /usr/local/lib/libPocoFoundationd.a

${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/zpgroupservice: /usr/local/lib/libPocoCryptod.a

${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/zpgroupservice: /usr/local/lib/libPocoNetSSLd.a

${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/zpgroupservice: /usr/lib/x86_64-linux-gnu/librt.a

${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/zpgroupservice: /usr/lib/x86_64-linux-gnu/libz.a

${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/zpgroupservice: /usr/lib/x86_64-linux-gnu/libssl.a

${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/zpgroupservice: /usr/lib/x86_64-linux-gnu/libcrypto.a

${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/zpgroupservice: ${OBJECTFILES}
	${MKDIR} -p ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}
	${LINK.cc} -o ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/zpgroupservice ${OBJECTFILES} ${LDLIBSOPTIONS}

${OBJECTDIR}/ZApiBroadcastMsgHandler.o: ZApiBroadcastMsgHandler.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -g -DWRITE_LOG -std=c++11 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/ZApiBroadcastMsgHandler.o ZApiBroadcastMsgHandler.cpp

${OBJECTDIR}/ZApiCalcAddHandler.o: ZApiCalcAddHandler.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -g -DWRITE_LOG -std=c++11 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/ZApiCalcAddHandler.o ZApiCalcAddHandler.cpp

${OBJECTDIR}/ZApiCalcDivHandler.o: ZApiCalcDivHandler.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -g -DWRITE_LOG -std=c++11 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/ZApiCalcDivHandler.o ZApiCalcDivHandler.cpp

${OBJECTDIR}/ZApiCalcMulHandler.o: ZApiCalcMulHandler.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -g -DWRITE_LOG -std=c++11 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/ZApiCalcMulHandler.o ZApiCalcMulHandler.cpp

${OBJECTDIR}/ZApiCalculatorHandler.o: ZApiCalculatorHandler.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -g -DWRITE_LOG -std=c++11 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/ZApiCalculatorHandler.o ZApiCalculatorHandler.cpp

${OBJECTDIR}/ZApiExceptionHandler.o: ZApiExceptionHandler.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -g -DWRITE_LOG -std=c++11 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/ZApiExceptionHandler.o ZApiExceptionHandler.cpp

${OBJECTDIR}/ZApiMTGProtobufHandler.o: ZApiMTGProtobufHandler.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -g -DWRITE_LOG -std=c++11 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/ZApiMTGProtobufHandler.o ZApiMTGProtobufHandler.cpp

${OBJECTDIR}/ZApiMTGStringHandler.o: ZApiMTGStringHandler.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -g -DWRITE_LOG -std=c++11 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/ZApiMTGStringHandler.o ZApiMTGStringHandler.cpp

${OBJECTDIR}/ZApiUtil.o: ZApiUtil.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -g -DWRITE_LOG -std=c++11 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/ZApiUtil.o ZApiUtil.cpp

${OBJECTDIR}/ZConfigReader.o: ZConfigReader.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -g -DWRITE_LOG -std=c++11 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/ZConfigReader.o ZConfigReader.cpp

${OBJECTDIR}/ZHandlerFactory.o: ZHandlerFactory.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -g -DWRITE_LOG -std=c++11 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/ZHandlerFactory.o ZHandlerFactory.cpp

${OBJECTDIR}/ZHttpServer.o: ZHttpServer.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -g -DWRITE_LOG -std=c++11 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/ZHttpServer.o ZHttpServer.cpp

${OBJECTDIR}/ZLogUtil.o: ZLogUtil.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -g -DWRITE_LOG -std=c++11 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/ZLogUtil.o ZLogUtil.cpp

${OBJECTDIR}/inireader/INIReader.o: inireader/INIReader.cpp 
	${MKDIR} -p ${OBJECTDIR}/inireader
	${RM} "$@.d"
	$(COMPILE.cc) -g -DWRITE_LOG -std=c++11 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/inireader/INIReader.o inireader/INIReader.cpp

${OBJECTDIR}/inireader/ini.o: inireader/ini.c 
	${MKDIR} -p ${OBJECTDIR}/inireader
	${RM} "$@.d"
	$(COMPILE.c) -g -std=c11 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/inireader/ini.o inireader/ini.c

${OBJECTDIR}/main.o: main.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -g -DWRITE_LOG -std=c++11 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/main.o main.cpp

# Subprojects
.build-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r ${CND_BUILDDIR}/${CND_CONF}
	${RM} ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/zpgroupservice

# Subprojects
.clean-subprojects:

# Enable dependency checking
.dep.inc: .depcheck-impl

include .dep.inc

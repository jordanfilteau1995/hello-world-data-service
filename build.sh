#!/bin/sh

ZSS=../zss
ZOWECOMMON=${ZSS}/deps/zowe-common-c

c89 -D_OPEN_THREADS -D_XOPEN_SOURCE=600 -DAPF_AUTHORIZED=0 -DNOIBMHTTP \
"-Wa,goff" "-Wc,langlvl(EXTC99),float(HEX),agg,expo,list(),so(),search(),\
goff,xref,gonum,roconst,gonum,asm,asmlib('SYS1.MACLIB'),asmlib('CEE.SCEEMAC'),dll" -Wl,dll \
-I ${ZSS}/h -I ${ZOWECOMMON}/h \
-o ${ZSS}/bin/helloWorld.so \
helloWorldDataService.c \
pluginAPI.x \

extattr +ap ${ZSS}/bin/helloWorld.so

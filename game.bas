!- =============================================
!- [3000] NEW GAME INITIALIZE
!- =============================================
3000 PTS=0   : REM PLAYER POINTS
3001 SL%=0   : REM SNAKE TAIL
3002 SD%=-1  : REM SNAKE HEAD
3003 SN$="W" : REM SNAKE DIRECTION
3004 FH%=0   : REM FLAG HEART
3005 HX=0    : REM HEART X
3006 HY=0    : REM HEART Y
3007 LN$=SN$ : REM LAST DIRECTION
3008 MT=1    : REM MAX DELTA TIME
3050 GOSUB 2000
3051 P1%=10
3052 FOR I=0 TO 3
3053 P0%=21-I
3054 GOSUB 4100
3055 NEXT I
3056 UT=TIME
!- =============================================
!- [3100] GAME LOOP LOGIC
!- =============================================
3100 GET KC$
3101 IF KC$=" "    THEN GOSUB 2300 : REM PAUSE
3102 IF KC$="{F1}" THEN GOSUB 2100 : REM HELP
3103 IF KC$="H"    THEN 3106 : REM LEFT
3104 IF KC$="L"    THEN 3111 : REM RIGHT
3105 GOTO 3116 : REM 3121
!- =============================================
!- TURN LEFT
!- =============================================
3106 IF LN$="N" THEN SN$="W"
3107 IF LN$="E" THEN SN$="N"
3108 IF LN$="S" THEN SN$="E"
3109 IF LN$="W" THEN SN$="S"
3110 GOTO 3116 : REM 3121
!- =============================================
!- TURN RIGHT
!- =============================================
3111 IF LN$="N" THEN SN$="E"
3112 IF LN$="E" THEN SN$="S"
3113 IF LN$="S" THEN SN$="W"
3114 IF LN$="W" THEN SN$="N"
3115 GOTO 3116 : REM 3121
!- =============================================
!- CHECK JOYSTICK
!- =============================================
3116 J2%=PEEK(56320)
3117 IF LN$<>"N" AND (J2% AND 2)=0 THEN SN$="S"
3118 IF LN$<>"E" AND (J2% AND 4)=0 THEN SN$="W"
3119 IF LN$<>"S" AND (J2% AND 1)=0 THEN SN$="N"
3120 IF LN$<>"W" AND (J2% AND 8)=0 THEN SN$="E"
!- =============================================
!- CHECK JOYSTICK
!- =============================================
3121 IF (TIME-UT)>MT THEN 3100
3122 UT=UT+MT
3123 GOSUB 4200
3124 IF FH%=0 THEN GOSUB 4000
3125 GOTO 3100
!- =============================================
!- [4000] GENERATE HEART
!- =============================================
4000 HX=INT(RND({pi})*G(8))+G(0)+1
4001 HY=INT(RND({pi})*G(9))+G(2)+1
4002 P0=HX:P1=HY:GOSUB 250
4003 IF R0$<>G$(0) THEN RETURN
4004 P0=HX:P1=HY:GOSUB 210
4005 PRINT "{pink}";G$(2);
4006 FH%=1
4007 RETURN
!- =============================================
!- [4100] ADD BODY PART (X,Y)
!- =============================================
4100 GOSUB 230
4101 SD%=SD%+1
4102 IF SD%>SZ% THEN SD%=0
4103 SC%(SD%)=R0%
4104 GOSUB 220
4105 PRINT "{light green}";G$(1);
4106 RETURN
!- =============================================
!- [4200] UPDATE SNAKE
!- =============================================
4200 P0%=SC%(SD%):GOSUB 240
4201 CX=R0%:CY=R1%:LN$=SN$
4202 IF SN$="N" THEN CY=CY-1
4203 IF SN$="E" THEN CX=CX+1
4204 IF SN$="S" THEN CY=CY+1
4205 IF SN$="W" THEN CX=CX-1
4206 P0=CX:P1=CY:GOSUB 250
4207 IF R0$=G$(0) THEN 4210
4208 IF R0$=G$(2) THEN 4220
4209 GOTO 2200 : REM GAME OVER
!- =============================================
!- [4210] MOVE SNAKE
!- =============================================
4210 P0%=CX:P1%=CY:GOSUB 4100
4211 P0%=SC%(SL%):GOSUB 240
4212 P0%=R0%:P1%=R1%:GOSUB 220
4213 PRINT G$(0);
4214 SL%=SL%+1
4215 IF SL%>SZ% THEN SL%=0
4216 RETURN
!- =============================================
!- [4220] GROW SNAKE
!- =============================================
4220 P0%=CX:P1%=CY:GOSUB 4100
4221 PTS=PTS+1
4222 GOSUB 2030
4223 FH%=0
4224 RETURN
!- =============================================
!- END OF FILE
!- =============================================
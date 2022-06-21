!- =============================================
!- NEW GAME INITIALIZE (3000)
!- =============================================
3000 PTS=0 : REM PLAYER POINTS
3005 SL%=0 : REM SNAKE TAIL
3010 SD%=3 : REM SNAKE HEAD
3040 GOSUB 2010
3050 P%(1)=10
3060 FOR I=0 TO 3
3070 P%(0)=21-I
3080 GOSUB 560
3090 SC%(I)=R%(0)
3100 GOSUB 520
3110 PRINT "{light green}";G$(1);
3120 NEXT I
TODO: MAKE ACTUAL GAME!
3140 GET KC$
3150 IF KC$="" THEN 3140
3160 IF KC$=" " THEN GOSUB 4010:GOTO 3140
3170 GOTO 1000
!- =============================================
!- GENERATE HEART (4010)
!- =============================================
4010 ZX=INT(RND({pi})*G(8))+G(0)+1
4020 ZY=INT(RND({pi})*G(9))+G(2)+1
4030 P(0)=ZX:P(1)=ZY:GOSUB 610
4040 IF R$(0)<>G$(0) THEN 4070
4050 P(0)=ZX:P(1)=ZY:GOSUB 480
4060 PRINT "{pink}";G$(2);
4070 RETURN
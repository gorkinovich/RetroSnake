!- =============================================
!- NEW GAME INITIALIZE (2010)
!- =============================================
2010 PTS=0 : REM PLAYER POINTS
2020 SL%=0 : REM SNAKE TAIL
2030 SD%=3 : REM SNAKE HEAD
2040 GOSUB 4010
2050 P%(1)=10
2060 FOR I=0 TO 3
2070 P%(0)=21-I
2080 GOSUB 560
2090 SC%(I)=R%(0)
2100 GOSUB 520
2110 PRINT "{green}";G$(1);
2120 NEXT I
TODO: MAKE ACTUAL GAME!
2140 GOSUB 450
2150 GOTO 1000
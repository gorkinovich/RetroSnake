!- =============================================
!- RETROSNAKE (C) 2022 GORKA SUAREZ GARCIA
!- =============================================
!- INT.V: FL%, SD%, SL%, SZ%
!- FLT.V: I, J, PTS, ZX, ZY
!- STR.V: KC$
!- INT.A: BK%(?), P%(?), R%(?), SC%(647)
!- FLT.A: G(6), P(?), R(?)
!- STR.A: G$(8), P$(?), R$(?)
!- =============================================
10 SZ%=(36*18)-1 : REM MAX COORDS. SIZE (647)
15 DIM SC%(SZ%)  : REM SNAKE COORDINATES (X,Y)
!- =============================================
!- GAME COORDINATES (INNER WORLD = 36X18)
!- 0: WORLD LEFT   (X)
!- 1: WORLD RIGHT  (X)
!- 2: WORLD TOP    (Y)
!- 3: WORLD DOWN   (Y)
!- 4: HUD SCORE    (X)
!- 5: HUD POINTS   (X)
!- 6: HUD TITLE    (X)
!- 7: HUD PAUSED   (X)
!- 8: WORLD WIDTH  (X)
!- 9: WORLD HEIGHT (Y)
!- =============================================
20 DIM G(9)
25 G(0)=1
30 G(1)=38
35 G(2)=1
40 G(3)=20
45 G(4)=3
50 G(5)=9
55 G(6)=27
60 G(7)=17
65 G(8)=G(1)-(G(0)+1)
70 G(9)=G(3)-(G(2)+1)
!- =============================================
!- GAME RENDER DATA
!- 0: CLEAR TILE
!- 1: SNAKE TILE
!- 2: HEART TILE
!- 3: UP BORDER
!- 4: LEFT BORDER
!- 5: RIGHT BORDER
!- 6: DOWN BORDER
!- 7: SCORE HUD
!- 8: TITLE HUD
!- =============================================
110 DIM G$(8)
120 G$(0)=" "
130 G$(1)="{209}"
140 G$(2)="{211}"
150 G$(3)="{172}"
160 G$(6)="{188}{reverse on}"
170 FOR I=G(0)+1 TO G(1)-1
180 G$(3)=G$(3)+"{162}"
190 G$(6)=G$(6)+"{162}"
200 NEXT I
210 G$(3)=G$(3)+"{187}"
220 G$(6)=G$(6)+"{reverse off}{190}"
230 G$(4)="{reverse on}"
240 G$(5)=""
250 FOR I=G(2)+1 TO G(3)-1
260 G$(4)=G$(4)+"{161}{down}{left}"
270 G$(5)=G$(5)+"{161}{down}{left}"
280 NEXT I
290 G$(4)=G$(4)+"{reverse off}"
300 G$(7)="{white}SCORE:"
310 G$(8)="{white}R{red}E{white}TR{green}O{white}SN{cyan}A{white}K{yellow}E{white}"
!- =============================================
!- INITIALIZE SYSTEM
!- =============================================
320 PRINT "{clear}";
330 BK%(0)=PEEK(646)   : REM CURSOR COLOR
340 BK%(1)=PEEK(53281) : REM BACKGROUND COLOR
350 BK%(2)=PEEK(53280) : REM BORDER COLOR
360 POKE 646,1         : REM CURSOR COLOR
370 POKE 53281,0       : REM BACKGROUND COLOR
380 POKE 53280,0       : REM BORDER COLOR
385 POKE 788,52        : REM DISABLE RUN/STOP
390 GOTO 1000          : REM MAIN MENU (1000)
!- =============================================
!- [400] EXIT()
!- =============================================
400 POKE 646,BK%(0)   : REM CURSOR COLOR
410 POKE 53281,BK%(1) : REM BACKGROUND COLOR
420 POKE 53280,BK%(2) : REM BORDER COLOR
425 POKE 788,49       : REM ENABLE RUN/STOP
430 PRINT "{clear}";
440 END
!- =============================================
!- [450] SUB:PAUSE()
!- =============================================
450 GET KC$
460 IF KC$="" THEN 450
470 RETURN
!- =============================================
!- [480] SUB:SETCURSOR(C,R)
!- =============================================
480 POKE 211,P(0) : REM $00D3=C
490 POKE 214,P(1) : REM $00D6=R
500 SYS 58640     : REM JSR $E510
510 RETURN
!- =============================================
!- [520] SUB:SETCURSOR(C,R)
!- =============================================
520 POKE 211,P%(0) : REM $00D3=C
530 POKE 214,P%(1) : REM $00D6=R
540 SYS 58640      : REM JSR $E510
550 RETURN
!- =============================================
!- [560] SUB:XY2WORD(X,Y)
!- =============================================
560 R%(0)=(P%(0)AND(255))*256+(P%(1)AND(255))
570 RETURN
!- =============================================
!- [580] SUB:WORD2XY(W)
!- =============================================
580 R%(0)=(P%(0)AND(-256))/256
590 R%(1)=P%(0)AND(255)
600 RETURN
!- =============================================
!- [610] SUB:GETCHAR(C,R)
!- =============================================
610 R(0)=PEEK(1024+(P(1)*40)+P(0))
615 IF R(0)>=0   AND R(0)<32  THEN R(0)=R(0)+64
620 IF R(0)>=64  AND R(0)<96  THEN R(0)=R(0)+128
625 IF R(0)>=96  AND R(0)<128 THEN R(0)=R(0)+64
630 IF R(0)>=128 AND R(0)<192 THEN R(0)=R(0)-128
635 IF R(0)>=192 AND R(0)<255 THEN R(0)=R(0)-64
640 IF R(0)=94 THEN R(0)=255
645 R$(0)=CHR$(R(0))
650 RETURN
!- =============================================
!- END OF FILE
!- =============================================
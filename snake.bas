!- =============================================
!- RETROSNAKE (C) 2022 GORKA SUAREZ GARCIA
!- =============================================
!- INT.V: FH%, FL%, SD%, SL%, SZ%
!- FLT.V: HX, HY, I, J, PTS
!- STR.V: KC$, SN$
!- INT.A: BK%(9), SC%(647)
!- FLT.A: G(6)
!- STR.A: G$(8)
!- INT.F: P0%-P9%, R0%-R9%
!- FLT.F: P0-P9, R0-R9
!- STR.F: P0$-P9$, R0$-R9$
!- =============================================
1 SZ%=(36*18)-1 : REM MAX COORDS. SIZE (647)
2 DIM SC%(SZ%)  : REM SNAKE COORDINATES (X,Y)
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
10 DIM G(9)
11 G(0)=1
12 G(1)=38
13 G(2)=1
14 G(3)=20
15 G(4)=3
16 G(5)=9
17 G(6)=27
18 G(7)=17
19 G(8)=G(1)-(G(0)+1)
20 G(9)=G(3)-(G(2)+1)
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
!- 9: PAUSED HUD
!- =============================================
40 DIM G$(10)
41 G$(0)=" "
42 G$(1)="{209}"
43 G$(2)="{211}"
44 G$(3)="{172}"
45 G$(6)="{188}{reverse on}"
46 FOR I=G(0)+1 TO G(1)-1
47 G$(3)=G$(3)+"{162}"
48 G$(6)=G$(6)+"{162}"
49 NEXT I
50 G$(3)=G$(3)+"{187}"
51 G$(6)=G$(6)+"{reverse off}{190}"
52 G$(4)="{reverse on}"
53 G$(5)=""
54 FOR I=G(2)+1 TO G(3)-1
55 G$(4)=G$(4)+"{161}{down}{left}"
56 G$(5)=G$(5)+"{161}{down}{left}"
57 NEXT I
58 G$(4)=G$(4)+"{reverse off}"
59 G$(7)="{white}SCORE:"
60 G$(8)="{white}R{red}E{white}TR{green}O{white}SN{cyan}A{white}K{yellow}E{white}"
61 G$(9)="PAUSED"
62 G$(10)="GAME OVER!"
!- =============================================
!- INITIALIZE SYSTEM
!- =============================================
90 PRINT "{clear}";
91 BK%(0)=PEEK(646)   : REM CURSOR COLOR
92 BK%(1)=PEEK(53281) : REM BACKGROUND COLOR
93 BK%(2)=PEEK(53280) : REM BORDER COLOR
94 POKE 646,1         : REM CURSOR COLOR
95 POKE 53281,0       : REM BACKGROUND COLOR
96 POKE 53280,0       : REM BORDER COLOR
97 POKE 788,52        : REM DISABLE RUN/STOP
98 GOTO 1000          : REM MAIN MENU
!- =============================================
!- [100] EXIT()
!- =============================================
100 POKE 646,BK%(0)   : REM CURSOR COLOR
101 POKE 53281,BK%(1) : REM BACKGROUND COLOR
102 POKE 53280,BK%(2) : REM BORDER COLOR
103 POKE 788,49       : REM ENABLE RUN/STOP
104 PRINT "{clear}";
105 END
!- =============================================
!- [200] SUB:PAUSE()
!- =============================================
200 GET KC$
201 IF KC$="" THEN 200
202 RETURN
!- =============================================
!- [210] SUB:SETCURSOR(C,R)
!- =============================================
210 POKE 211,P0 : REM $00D3=C
211 POKE 214,P1 : REM $00D6=R
212 SYS 58640   : REM JSR $E510
213 RETURN
!- =============================================
!- [220] SUB:SETCURSOR(C,R)
!- =============================================
220 POKE 211,P0% : REM $00D3=C
221 POKE 214,P1% : REM $00D6=R
222 SYS 58640    : REM JSR $E510
223 RETURN
!- =============================================
!- [230] SUB:XY2WORD(X,Y)
!- =============================================
230 R0%=(P0% AND 255)*256+(P1% AND 255)
231 RETURN
!- =============================================
!- [240] SUB:WORD2XY(W)
!- =============================================
240 R0%=(P0% AND (-256))/256
241 R1%=P0% AND 255
242 RETURN
!- =============================================
!- [250] SUB:GETCHAR(C,R)
!- =============================================
250 R0=PEEK(1024+(P1*40)+P0)
251 IF R0>=0   AND R0<32  THEN R1=R0+64
252 IF R0>=32  AND R0<64  THEN R1=R0
253 IF R0>=64  AND R0<96  THEN R1=R0+128
254 IF R0>=96  AND R0<128 THEN R1=R0+64
255 IF R0>=128 AND R0<192 THEN R1=R0-128
256 IF R0>=192 AND R0<255 THEN R1=R0-64
257 IF R0=94 THEN R1=255
258 R0=R1:R0$=CHR$(R1)
259 RETURN
!- =============================================
!- END OF FILE
!- =============================================
!- =============================================
!- DRAW GAME SCREEN (4010)
!- =============================================
4010 PRINT "{clear}";
4020 P(0)=G(0)
4030 P(1)=G(2)
4040 GOSUB 480
4050 PRINT "{white}";G$(3);
4060 P(0)=G(0)
4070 P(1)=G(2)+1
4080 GOSUB 480
4090 PRINT "{white}";G$(4);
4100 P(0)=G(1)
4110 P(1)=G(2)+1
4120 GOSUB 480
4130 PRINT "{white}";G$(5);
4140 P(0)=G(0)
4150 P(1)=G(3)
4160 GOSUB 480
4170 PRINT "{white}";G$(6);
4180 P(0)=G(4)
4190 P(1)=G(3)+2
4200 GOSUB 480
4210 PRINT G$(7);
4220 P(0)=G(6)
4230 P(1)=G(3)+2
4240 GOSUB 480
4250 PRINT G$(8);
!- =============================================
!- DRAW SCORE POINTS (4280)
!- =============================================
4280 P(0)=G(5)
4290 P(1)=G(3)+2
4300 GOSUB 480
4310 PRINT "{white}";PTS;
4320 RETURN
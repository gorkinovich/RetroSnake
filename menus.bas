!- =============================================
!- [1010] MAIN MENU DRAW
!- =============================================
1000 PRINT "{clear}":PRINT
1010 PRINT "    {reverse on}{white}   {127}"
1020 PRINT "    {reverse on} {reverse off}  {reverse on} "
1030 PRINT "    {reverse on} {reverse off}  {169}  {reverse on}{red}{169}  {reverse off}{169} {reverse on}{white}{169}   {reverse off}{169} {reverse on}   {127}{reverse off} {reverse on}{green}{169}  {127}"
1040 PRINT "    {reverse on}{white}   {reverse off}   {reverse on}{red} {reverse off}      {reverse on}{white} {reverse off}   {reverse on} {reverse off}  {169} {reverse on}{green} {reverse off}{169}{127}{reverse on} "
1050 PRINT "    {reverse on}{white} {reverse off} {127}{reverse on}{127}{reverse off}  {reverse on}{red}   {reverse off}    {reverse on}{white} {reverse off}   {reverse on}   {reverse off}  {reverse on}{green} {reverse off}  {reverse on} "
1060 PRINT "    {reverse on}{white} {reverse off}  {127}{reverse on}{127}{reverse off} {reverse on}{red} {reverse off}      {reverse on}{white} {reverse off}   {reverse on} {reverse off} {127}{reverse on}{127}{reverse off} {reverse on}{green} {127}{169} "
1070 PRINT "    {white}{169}   {127} {red}{127}{reverse on}  {127}{reverse off}   {white}{169}   {169}  {127} {green}{127}{reverse on}  {reverse off}{169}"
1080 PRINT
1090 PRINT "          {reverse on}{white}{169}   {127}"
1100 PRINT "          {reverse on} {reverse off}   {127}"
1110 PRINT "          {reverse on} {reverse off}     {reverse on}{127}{reverse off}  {reverse on}{169}{reverse off} {reverse on}{cyan}{169}  {127}{reverse off} {reverse on}{white}{127}{reverse off} {reverse on}{169}{reverse off}{169} {reverse on}{yellow}{169}  {reverse off}{169}"
1120 PRINT "          {white}{127}{reverse on}   {127}{reverse off} {reverse on} {127}{reverse off} {reverse on} {reverse off} {reverse on}{cyan} {reverse off}  {reverse on} {reverse off} {reverse on}{white} {169}{reverse off}{169}  {reverse on}{yellow} "
1130 PRINT "              {reverse on}{white} {reverse off} {reverse on} {reverse off}{127}{reverse on}{127} {reverse off} {reverse on}{cyan}    {reverse off} {reverse on}{white}  {127}{reverse off}  {reverse on}{yellow}   "
1140 PRINT "          {reverse on}{white}{127}{reverse off}   {reverse on} {reverse off} {reverse on} {reverse off} {127}{reverse on} {reverse off} {reverse on}{cyan} {reverse off}  {reverse on} {reverse off} {reverse on}{white} {reverse off} {127}{reverse on}{127}{reverse off} {reverse on}{yellow} "
1150 PRINT "          {white}{127}{reverse on}   {reverse off}{169} {169}  {127} {cyan}{169}  {127} {white}{169}  {127} {yellow}{127}{reverse on}  {127}"
1160 PRINT:PRINT:PRINT
1170 PRINT "        {white}F1:HELP        F5:NEW GAME"
1180 PRINT:PRINT
1190 PRINT "      (C) 2022 GORKA SUAREZ GARCIA"
!- =============================================
!- [1220] MAIN MENU LOGIC
!- =============================================
1200 GET KC$
1210 FL%=0 : REM FLAG MENU
1220 IF KC$="{f1}" THEN 1260 : REM HELP MENU
1230 IF KC$="{f5}" THEN 2010 : REM NEW GAME (2010)
1240 IF KC$="Q"    THEN 400  : REM EXIT GAME (400)
1250 GOTO 1200
!- =============================================
!- [1290] HELP MENU DRAW
!- =============================================
1260 PRINT "{clear}":PRINT
1270 PRINT "          {reverse on}{red}{127}{reverse off}  {reverse on}{169}{reverse off} {reverse on}{green}   {reverse off}{169} {reverse on}{cyan}{127}{reverse off}    {reverse on}{yellow}   {127}"
1280 PRINT "          {reverse on}{red} {reverse off}  {reverse on} {reverse off} {reverse on}{green} {reverse off}    {reverse on}{cyan} {reverse off}    {reverse on}{yellow} {reverse off}  {reverse on} "
1290 PRINT "          {reverse on}{red} {reverse off}  {reverse on} {reverse off} {reverse on}{green} {reverse off}    {reverse on}{cyan} {reverse off}    {reverse on}{yellow} {reverse off}  {reverse on} "
1300 PRINT "          {reverse on}{red}    {reverse off} {reverse on}{green}   {reverse off}  {reverse on}{cyan} {reverse off}    {reverse on}{yellow}   {reverse off}{169}"
1310 PRINT "          {reverse on}{red} {reverse off}  {reverse on} {reverse off} {reverse on}{green} {reverse off}    {reverse on}{cyan} {reverse off}    {reverse on}{yellow} "
1320 PRINT "          {reverse on}{red} {reverse off}  {reverse on} {reverse off} {reverse on}{green} {reverse off}    {reverse on}{cyan} {reverse off}    {reverse on}{yellow} "
1330 PRINT "          {red}{169}  {127} {reverse on}{green}   {127}{reverse off} {reverse on}{cyan}   {reverse off}{169} {yellow}{169}"
1340 PRINT:PRINT:PRINT:PRINT
1350 PRINT "             {white}H: TURN LEFT"
1360 PRINT:PRINT:PRINT
1370 PRINT "             L: TURN RIGHT"
1380 PRINT:PRINT:PRINT:PRINT
1390 PRINT "         PRESS ANY KEY TO RETURN"
!- =============================================
!- [1440] HELP MENU LOGIC
!- =============================================
1400 GET KC$
1410 IF KC$="" THEN 1400 : REM RETRY GET KEY
TODO: CHANGE THIS LINE NUMBER
1420 IF FL%=1 THEN 1000  : REM CONTINUE GAME (2XXX)
1430 GOTO 1000           : REM RETURN MAIN MENU
!- =============================================
!- END OF FILE
!- =============================================
!- =============================================
!- [1000] MAIN MENU DRAW
!- =============================================
1000 PRINT "{clear}":PRINT
1001 PRINT "    {reverse on}{white}   {127}"
1002 PRINT "    {reverse on} {reverse off}  {reverse on} "
1003 PRINT "    {reverse on} {reverse off}  {reverse on}{160}{reverse off}  {reverse on}{red}{169}  {reverse off}{169} {reverse on}{white}{169}   {reverse off}{169} {reverse on}   {127}{reverse off} {reverse on}{green}{169}  {127}"
1004 PRINT "    {reverse on}{white}   {reverse off}{169}  {reverse on}{red} {reverse off}      {reverse on}{white} {reverse off}   {reverse on} {reverse off}  {reverse on}{160}{reverse off} {reverse on}{green} {reverse off}{169}{127}{reverse on} "
1005 PRINT "    {reverse on}{white} {reverse off} {127}{reverse on}{127}{reverse off}  {reverse on}{red}   {reverse off}    {reverse on}{white} {reverse off}   {reverse on}   {reverse off}{169} {reverse on}{green} {reverse off}  {reverse on} "
1006 PRINT "    {reverse on}{white} {reverse off}  {127}{reverse on}{127}{reverse off} {reverse on}{red} {reverse off}      {reverse on}{white} {reverse off}   {reverse on} {reverse off} {127}{reverse on}{127}{reverse off} {reverse on}{green} {127}{169} "
1007 PRINT "    {white}{169}   {127} {red}{127}{reverse on}  {127}{reverse off}   {white}{169}   {169}  {127} {green}{127}{reverse on}  {reverse off}{169}"
1008 PRINT ""
1009 PRINT "          {reverse on}{white}{169}   {127}"
1110 PRINT "          {reverse on} {reverse off}   {127}"
1111 PRINT "          {reverse on} {reverse off}     {reverse on}{127}{reverse off}  {reverse on}{169}{reverse off} {reverse on}{cyan}{169}  {127}{reverse off} {reverse on}{white}{127}{reverse off} {reverse on}{169}{reverse off}{169} {reverse on}{yellow}{169}  {reverse off}{169}"
1112 PRINT "          {white}{127}{reverse on}   {127}{reverse off} {reverse on} {127}{reverse off} {reverse on} {reverse off} {reverse on}{cyan} {reverse off}  {reverse on} {reverse off} {reverse on}{white} {169}{reverse off}{169}  {reverse on}{yellow} "
1113 PRINT "              {reverse on}{white} {reverse off} {reverse on} {reverse off}{127}{reverse on}{127} {reverse off} {reverse on}{cyan}    {reverse off} {reverse on}{white}  {127}{reverse off}  {reverse on}{yellow}   "
1114 PRINT "          {reverse on}{white}{127}{reverse off}   {reverse on} {reverse off} {reverse on} {reverse off} {127}{reverse on} {reverse off} {reverse on}{cyan} {reverse off}  {reverse on} {reverse off} {reverse on}{white} {reverse off} {127}{reverse on}{127}{reverse off} {reverse on}{yellow} "
1115 PRINT "          {white}{127}{reverse on}   {reverse off}{169} {169}  {127} {cyan}{169}  {127} {white}{169}  {127} {yellow}{127}{reverse on}  {127}"
1116 PRINT:PRINT:PRINT
1117 PRINT "    {white}F1:HELP    F5:NEW GAME    Q:EXIT"
1118 PRINT:PRINT
1119 PRINT "      (C) 2022 GORKA SUAREZ GARCIA"
!- =============================================
!- [1130] MAIN MENU LOGIC
!- =============================================
1130 GET KC$
1131 FL%=0 : REM FLAG MENU
1132 IF KC$="{f1}"  THEN 1150 : REM HELP MENU
1133 IF KC$="{f5}"  THEN 3000 : REM NEW GAME
1134 IF KC$="Q"     THEN 100  : REM EXIT GAME
1135 IF KC$="{209}" THEN 100  : REM EXIT GAME
1136 GOTO 1130
!- =============================================
!- [1150] HELP MENU DRAW
!- =============================================
1150 PRINT "{clear}":PRINT
1151 PRINT "          {reverse on}{red}{127}{reverse off}  {reverse on}{169}{reverse off} {reverse on}{green}   {reverse off}{169} {reverse on}{cyan}{127}{reverse off}    {reverse on}{yellow}   {127}"
1152 PRINT "          {reverse on}{red} {reverse off}  {reverse on} {reverse off} {reverse on}{green} {reverse off}    {reverse on}{cyan} {reverse off}    {reverse on}{yellow} {reverse off}  {reverse on} "
1153 PRINT "          {reverse on}{red} {reverse off}  {reverse on} {reverse off} {reverse on}{green} {reverse off}    {reverse on}{cyan} {reverse off}    {reverse on}{yellow} {reverse off}  {reverse on} "
1154 PRINT "          {reverse on}{red}    {reverse off} {reverse on}{green}   {reverse off}  {reverse on}{cyan} {reverse off}    {reverse on}{yellow}   {reverse off}{169}"
1155 PRINT "          {reverse on}{red} {reverse off}  {reverse on} {reverse off} {reverse on}{green} {reverse off}    {reverse on}{cyan} {reverse off}    {reverse on}{yellow} "
1156 PRINT "          {reverse on}{red} {reverse off}  {reverse on} {reverse off} {reverse on}{green} {reverse off}    {reverse on}{cyan} {reverse off}    {reverse on}{yellow} "
1157 PRINT "          {red}{169}  {127} {reverse on}{green}   {127}{reverse off} {reverse on}{cyan}   {reverse off}{169} {yellow}{169}"
1158 PRINT:PRINT:PRINT:PRINT
1159 PRINT "             {white}H: TURN LEFT"
1160 PRINT:PRINT:PRINT
1161 PRINT "             L: TURN RIGHT"
1162 PRINT:PRINT:PRINT:PRINT
1163 PRINT "         PRESS ANY KEY TO RETURN"
!- =============================================
!- [1180] HELP MENU LOGIC
!- =============================================
1180 GET KC$
1181 IF KC$="" THEN 1180 : REM RETRY GET KEY
TODO: CHANGE THIS LINE NUMBER
1182 IF FL%=1 THEN 1000  : REM CONTINUE GAME
1183 GOTO 1000           : REM RETURN MAIN MENU
!- =============================================
!- END OF FILE
!- =============================================
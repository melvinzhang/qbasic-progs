10 DIM e(70)
20 DIM v$(4, 3)
30 DIM f(3)
40 w$ = ""
50 w$ = w$ + "1111111111"
60 w$ = w$ + "1000500001"
70 w$ = w$ + "1000000001"
80 w$ = w$ + "1030000201"
90 w$ = w$ + "1000040001"
100 w$ = w$ + "1000000001"
110 w$ = w$ + "1111119111"
120 FOR i = 1 TO 70
130 e(i) = VAL(MID$(w$, i, 1))
140 NEXT i
150 s = -1
160 g = 0
170 x = INT(RND * 50) + 10
180 IF e(x) <> 1 THEN GOTO 170
190 GOSUB 860
200 d = INT(RND * 4) + 1
210 IF x = g + 10 OR x = g - 10 THEN GOTO 170
220 IF x = g + 1 OR x = g - 1 THEN GOTO 170
230 h = h + 1
240 IF h = 5 THEN GOSUB 860
250 GOSUB 390
260 a$ = INKEY$
270 IF a$ = "" THEN GOTO 260

280 IF a$ = CHR$(0) + "M" THEN d = d + 1
290 IF a$ = CHR$(0) + "K" THEN d = d - 1

295 IF a$ = "q" THEN END

300 IF d = 5 THEN d = 1
310 IF d = 0 THEN d = 4
320 IF a$ <> CHR$(0) + "H" THEN GOTO 210
330 IF d = 1 AND e(x - 10) <> 0 THEN x = x - 10
340 IF d = 3 AND e(x + 10) <> 0 THEN x = x + 10
350 IF d = 2 AND e(x + 1) <> 0 THEN x = x + 1
360 IF d = 4 AND e(x - 1) <> 0 THEN x = x - 1

370 IF e(x) = 9 THEN GOTO 930   'check if you reach exit
IF e(x) = 2 THEN GOSUB 2000
IF e(x) = 3 THEN GOSUB 3000
IF e(x) = 4 THEN GOSUB 4000
IF e(x) = 5 THEN GOSUB 5000

380 GOTO 210
390 FOR i = 1 TO 4
400 t = i - 1
410 ON d GOTO 420, 460, 500, 540
420 f(1) = x - 10 * t + 1
430 f(2) = x - 10 * t
440 f(3) = x - 10 * t - 1
450 GOTO 570
460 f(1) = x + 10 + t
470 f(2) = x + t
480 f(3) = x - 10 + t
490 GOTO 570
500 f(1) = x + 10 * t - 1
510 f(2) = x + 10 * t
520 f(3) = x + 10 * t + 1
530 GOTO 570
540 f(1) = x - t - 10
550 f(2) = x - t
560 f(3) = x - t + 10
570 FOR j = 1 TO 3
580 IF f(j) < 1 OR f(j) > 69 THEN GOTO 840
590 IF e(f(j)) = 0 THEN v$(i, j) = " "
600 IF e(f(j)) = 1 THEN v$(i, j) = CHR$(219)
610 IF e(f(j)) = 9 THEN v$(i, j) = " "
620 IF e(f(j)) = 2 THEN v$(i, j) = CHR$(219)
621 IF e(f(j)) = 3 THEN v$(i, j) = CHR$(219)
622 IF e(f(j)) = 4 THEN v$(i, j) = CHR$(219)
623 IF e(f(j)) = 5 THEN v$(i, j) = CHR$(219)

630 NEXT j
640 NEXT i

650 v$(1, 2) = CHR$(234)          'your character

660 CLS
670 PRINT
680 PRINT "**** GHOST MAZE ****"
690 PRINT
700 PRINT "FORWARD    :  x"
710 PRINT "TURN RIGHT :  m"
720 PRINT "TURN LEFT  :  n"

FOR i = 1 TO 22
LOCATE i, 50: PRINT "³"
NEXT i
IF INKEY$ = "q" THEN END
FOR i = 1 TO 80
LOCATE 22, i: PRINT "Ä"
NEXT i
FOR i = 50 TO 80
LOCATE 10, i: PRINT "Ä"
NEXT i

730 FOR i = 1 TO 5
740 PRINT
750 NEXT i
760 FOR i = 4 TO 1 STEP -1
770 p$ = ""
780 FOR j = 3 TO 1 STEP -1
790 p$ = p$ + v$(i, j)
800 NEXT j
810 PRINT TAB(7); p$
820 NEXT i
830 RETURN

840 v$(i, j) = CHR$(219)

850 GOTO 630
860 e(g) = 1
870 g = INT(RND * 50) + 10
880 IF e(g) <> 1 THEN GOTO 870
890 e(g) = 2
900 h = 0
910 s = s + 1
920 RETURN
930 PRINT "YOU HAVED ESCAPED"
940 PRINT "IN "; s * 5 + h; " MOVES"
950 END

REM Sub routines
2000 LOCATE 60, 3: PRINT "*** HOSPITAL ***"
PRINT
PRINT "1. Heal all wounds    : ($500)"
PRINT "2. Heal some wounds   : ($200)"
PRINT "3. Regain magic energy: ($500)"
PRINT "4. Regain energy      : ($500)"
1005 j$ = INKEY$
IF j$ = "" THEN GOTO 1005
IF j$ = "1" THEN GOSUB 2010

IF j$ = "2" THEN GOTO 2010
IF j$ = "3" THEN GOTO 2010
IF j$ = "4" THEN GOTO 2010

2010 LOCATE 60, 11: PRINT "Are you sure"
SLEEP
RETURN

3000 LOCATE 60, 3: PRINT "*** MAGIC SHOP ***"
PRINT
PRINT "Buy    :"
PRINT "1. Energizer          : ($400)"
PRINT "2. Magic Energizer    : ($500)"
PRINT "3. Super Strength pill: ($500)"
3005 j1$ = INKEY$
IF j1$ = "" THEN GOTO 3005
IF j1$ = "1" THEN GOTO 3010
IF j1$ = "2" THEN GOTO 3010
IF j1$ = "3" THEN GOTO 3010

3010 LOCATE 60, 11: PRINT "Are you sure"
SLEEP
RETURN

4000 LOCATE 60, 3: PRINT "*** WEAPON SHOP ***"
PRINT
PRINT "Buy    :"
PRINT "1. Dagger     : ($100) "
PRINT "2. Short sword: ($200)"
PRINT "3. Long sword : ($350)"
PRINT "4. Mace       : ($350)"
PRINT "5. Great sword: ($550)"
4005 j2$ = INKEY$
IF j2$ = "" THEN GOTO 4005
IF j2$ = "1" THEN GOTO 4010
IF j2$ = "2" THEN GOTO 4010
IF j2$ = "3" THEN GOTO 4010
IF j2$ = "4" THEN GOTO 4010
IF j2$ = "5" THEN GOTO 4010

4010 LOCATE 60, 11: PRINT "Are you sure"
SLEEP
RETURN

5000 LOCATE 60, 3: PRINT "*** SPELL SHOP ***"
PRINT
PRINT "Buy    :"
PRINT "1. Dagoron     : ($600)"
PRINT "2. Shananto    : ($600)"
PRINT "3. Lengaword   : ($650)"
5005 j2$ = INKEY$
IF j2$ = "" THEN GOTO 5005
IF j2$ = "1" THEN GOTO 5010
IF j2$ = "2" THEN GOTO 5010
IF j2$ = "3" THEN GOTO 5010

5010 LOCATE 60, 11: PRINT "Are you sure"
SLEEP
RETURN

















































REM       To change the size of the maze to the following

REM 10         : replace 70 with your number,n
REM 50-110     : add extra lines of 1s and 0s, so their that their total
REM              number is n
REM 120        : replace 70 with n
REM 170 and 870: replace 50 with n-20
REM 580        : replace 69 with n-1













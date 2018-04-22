CLS
SCREEN 1
g = 150
h = 100
DIM xc(4): DIM yc(4)
LET xc(1) = 130
LET yc(1) = 80
LET xc(2) = 180
LET yc(2) = 80
LET xc(3) = 130
LET yc(3) = 110
LET xc(4) = 180
LET yc(4) = 110
CLS

LINE (0, 0)-(xc(1), yc(1))
LINE (0, 190)-(xc(3), yc(3))
LINE (315, 0)-(xc(2), yc(2))
LINE (315, 190)-(xc(4), yc(4))
LINE (xc(1), yc(1))-(xc(3), yc(3))
LINE (xc(1), yc(1))-(xc(2), yc(2))
LINE -(xc(4), yc(4))
LINE -(xc(3), yc(3))

LINE (50, 159)-(50, 31)     'l1
LINE (100, 128)-(100, 62)   'l2

LINE (210, 128)-(210, 62)    'r1
LINE (263, 159)-(263, 31)    'r2

SCREEN 1
10 DIM e(70)
20 DIM v$(4, 3)
30 DIM f(3)
40 LET w$ = ""
50 LET w$ = w$ + "0000000000"
60 LET w$ = w$ + "0111100110"
70 LET w$ = w$ + "0010011100"
80 LET w$ = w$ + "0011010110"
90 LET w$ = w$ + "0110100100"
100 LET w$ = w$ + "0011111100"
110 LET w$ = w$ + "0000009000"
120 FOR i = 1 TO 70
130 LET e(i) = VAL(MID$(w$, i, 1))
140 NEXT i
150 LET s = -1
160 LET g = 0
RANDOMIZE TIMER
170 LET x = INT(RND * 50) + 10
180 IF e(x) <> 1 THEN GOTO 170
190 GOSUB 860
200 LET d = INT(RND * 4) + 1
210 IF x = g + 10 OR x = g - 10 THEN GOTO 170
220 IF x = g + 1 OR x = g - 1 THEN GOTO 170
230 LET h = h + 1
240 IF h = 5 THEN GOSUB 860
250 GOSUB 390
260 LET a$ = INKEY$
270 IF a$ = "" THEN GOTO 260

280 IF a$ = CHR$(0) + "M" THEN LET d = d + 1
290 IF a$ = CHR$(0) + "K" THEN LET d = d - 1
295 IF a$ = "q" OR a$ = "Q" THEN END
300 IF d = 5 THEN LET d = 1
310 IF d = 0 THEN LET d = 4
320 IF a$ <> CHR$(0) + "H" THEN GOTO 210
330 IF d = 1 AND e(x - 10) <> 0 THEN LET x = x - 10
340 IF d = 3 AND e(x + 10) <> 0 THEN LET x = x + 10
350 IF d = 2 AND e(x + 1) <> 0 THEN LET x = x + 1
360 IF d = 4 AND e(x - 1) <> 0 THEN LET x = x - 1

370 IF e(x) = 9 THEN GOTO 930   'check if you reach exit

380 GOTO 210
390 FOR i = 1 TO 4
400 LET t = i - 1
410 ON d GOTO 420, 460, 500, 540
420 LET f(1) = x - 10 * t + 1
430 LET f(2) = x - 10 * t
440 LET f(3) = x - 10 * t - 1
450 GOTO 570
460 LET f(1) = x + 10 + t
470 LET f(2) = x + t
480 LET f(3) = x - 10 + t
490 GOTO 570
500 LET f(1) = x + 10 * t - 1
510 LET f(2) = x + 10 * t
520 LET f(3) = x + 10 * t + 1
530 GOTO 570
540 LET f(1) = x - t - 10
550 LET f(2) = x - t
560 LET f(3) = x - t + 10
570 FOR j = 1 TO 3
580 IF f(j) < 1 OR f(j) > 69 THEN GOTO 840
590 IF e(f(j)) = 0 THEN LET v$(i, j) = CHR$(219)
600 IF e(f(j)) = 1 THEN LET v$(i, j) = " "
610 IF e(f(j)) = 9 THEN LET v$(i, j) = "+"
620 IF e(f(j)) = 2 THEN LET v$(i, j) = "G"
630 NEXT j
640 NEXT i

650 LET v$(1, 2) = CHR$(234)          'your character

660
'670 PRINT
'680 PRINT "**** GHOST MAZE ****"
'690 PRINT
'700 PRINT "FORWARD    :  x"
'710 PRINT "TURN RIGHT :  m"
'720 PRINT "TURN LEFT  :  n"
'730 FOR i = 1 TO 5
'740 PRINT
'750 NEXT i
760 FOR i = 4 TO 1 STEP -1
770 LET p$ = ""
780 FOR j = 3 TO 1 STEP -1
790 LET p$ = p$ + v$(i, j)
800 NEXT j
810 PRINT p$
820 NEXT i
830 RETURN

840 LET v$(i, j) = CHR$(219)

850 GOTO 630
860 LET e(g) = 1
870 LET g = INT(RND * 50) + 10
880 IF e(g) <> 1 THEN GOTO 870
890 LET e(g) = 2
900 LET h = 0
910 LET s = s + 1
920 RETURN
930 PRINT "YOU HAVED ESCAPED"
940 PRINT "IN "; s * 5 + h; " MOVES"
945 PRINT "Do you wish to play again (y/n)"
946 LET ag$ = INKEY$
941 IF ag$ = "" THEN GOTO 946
947 IF ag$ = "y" THEN GOTO 10 ELSE GOTO 950
950 END







































REM       To change the size of the maze to the following

REM 10         : replace 70 with your number,n
REM 50-110     : add extra lines of 1s and 0s, so their that their total
REM              number is n
REM 120        : replace 70 with n
REM 170 and 870: replace 50 with n-20
REM 580        : replace 69 with n-1













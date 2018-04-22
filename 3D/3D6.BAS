siz = 70
CLS
SCREEN 1
10 DIM e(siz)
20 DIM v$(4, 3)
30 DIM f(3)
40 w$ = ""
50 w$ = w$ + "0000000000"
60 w$ = w$ + "0111100110"
70 w$ = w$ + "0010011100"
80 w$ = w$ + "0011010110"
90 w$ = w$ + "0110100100"
100 w$ = w$ + "0011111100"
110 w$ = w$ + "0000009000"
120 FOR i = 1 TO siz
130 e(i) = VAL(MID$(w$, i, 1))
140 NEXT i
150 s = -1
160 g = 0
RANDOMIZE TIMER
170 x = INT(RND * siz - 20) + 10
180 IF e(x) <> 1 THEN GOTO 170
'190 GOSUB 860
200 d = INT(RND * 4) + 1
210 IF x = g + 10 OR x = g - 10 THEN GOTO 170
220 IF x = g + 1 OR x = g - 1 THEN GOTO 170
230 h = h + 1
'240 IF h = 5 THEN GOSUB 860
250 GOSUB 390
260 a$ = INKEY$
270 IF a$ = "" THEN GOTO 260
280 IF a$ = CHR$(0) + "M" THEN d = d + 1
290 IF a$ = CHR$(0) + "K" THEN d = d - 1
295 IF a$ = "q" OR a$ = "Q" THEN END
300 IF d = 5 THEN d = 1
310 IF d = 0 THEN d = 4
320 IF a$ <> CHR$(0) + "H" THEN GOTO 210
330 IF d = 1 AND e(x - 10) <> 0 THEN x = x - 10
340 IF d = 3 AND e(x + 10) <> 0 THEN x = x + 10
350 IF d = 2 AND e(x + 1) <> 0 THEN x = x + 1
360 IF d = 4 AND e(x - 1) <> 0 THEN x = x - 1
370 IF e(x) = 9 THEN GOTO 930   'check if you reach exit
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
580 IF f(j) < 1 OR f(j) > siz - 1 THEN GOTO 840
590 IF e(f(j)) = 0 THEN v$(i, j) = CHR$(219)
600 IF e(f(j)) = 1 THEN v$(i, j) = " "
610 IF e(f(j)) = 9 THEN v$(i, j) = "+"
620 IF e(f(j)) = 2 THEN v$(i, j) = "G"
630 NEXT j
640 NEXT i
650 v$(1, 2) = CHR$(234)          'your character
660 CLS
DIM xc(4): DIM yc(4)
xc(1) = 130
yc(1) = 80
xc(2) = 180
yc(2) = 80
xc(3) = 130
yc(3) = 110
xc(4) = 180
yc(4) = 110
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
730 FOR i = 1 TO 5
750 NEXT i
760 FOR i = 4 TO 1 STEP -1
770 p$ = ""
780 FOR j = 3 TO 1 STEP -1
790 p$ = p$ + v$(i, j)
800 NEXT j
810 PRINT TAB(7); p$
820 NEXT i
GOSUB bug
830 RETURN
840 v$(i, j) = CHR$(219)
850 GOTO 630
860 e(g) = 1
870 g = INT(RND * siz - 20) + 10
880 IF e(g) <> 1 THEN GOTO 870
890 e(g) = 2
900 h = 0
910 s = s + 1
920 RETURN
930 PRINT "YOU HAVED ESCAPED"
940 PRINT "IN "; s * 5 + h; " MOVES"
945 PRINT "Do you wish to play again (y/n)"
946 ag$ = INKEY$
941 IF ag$ = "" THEN GOTO 946
947 IF ag$ = "y" THEN GOTO 10 ELSE GOTO 950
950 END

rm:
LINE (211, 31)-(262, 159), 0, BF
LINE (210, 62)-(263, 62)
LINE (210, 128)-(263, 128)
RETURN

r1:
LINE (181, 60)-(210 - 1, 159), 0, BF
RETURN

r1e:
LINE (181, 60)-(210 - 1, 159), 0, BF
LINE (xc(2), 80)-(210, 80)
LINE (xc(4), 110)-(210, 110)
RETURN

cb1:
LINE (101, 60)-(209, 128), 0, BF
LINE (100, 62)-(210, 62)
LINE (100, 128)-(210, 128)
RETURN

cb2:
LINE (51, 31)-(262, 159), 0, BF
LINE (50, 31)-(263, 31)
LINE (50, 159)-(263, 159)
RETURN

r2:
LINE (264, 0)-(315, 190), 0, BF
LINE (263, 31)-(315, 31)
LINE (263, 159)-(315, 159)
RETURN

l1:
LINE (101, 62)-(xc(3) - 1, yc(3) + 20), 0, BF
LINE (xc(1), yc(1))-(101, yc(1))
LINE (xc(3), yc(3))-(101, yc(3))
RETURN

lm:
LINE (51, 31)-(100 - 1, 159), 0, BF
LINE (100, 128)-(51, 128)
LINE (100, 62)-(51, 62)
RETURN

l2:
LINE (0, 0)-(50 - 1, 190), 0, BF
LINE (50, 31)-(0, 31)
LINE (50, 159)-(0, 159)
RETURN

cr1:
LINE (181, 60)-(210 - 1, 159), 0, BF
LINE (xc(2), yc(2))-(210, 62)
LINE (xc(4), yc(4))-(210, 128)
RETURN

crm:
LINE (211, 31)-(262, 159), 0, BF
LINE (210, 62)-(263, 31)
LINE (210, 128)-(263, 159)
RETURN

cr2:
LINE (264, 0)-(315, 190), 0, BF
LINE (263, 31)-(315, 0)
LINE (263, 159)-(315, 190)
RETURN

cl1:
LINE (101, 62)-(xc(3) - 1, yc(3) + 20), 0, BF
LINE (xc(1), yc(1))-(100, 62)
LINE (xc(3), yc(3))-(100, 128)
RETURN

clm:
LINE (51, 31)-(100 - 1, 159), 0, BF
LINE (100, 62)-(50, 31)
LINE (100, 128)-(50, 159)
RETURN

cl2:
LINE (0, 0)-(50 - 1, 190), 0, BF
LINE (50, 31)-(0, 0)
LINE (50, 159)-(0, 190)
RETURN

bug:
IF SCREEN(2, 7) = 43 THEN GOSUB l1
IF SCREEN(3, 7) = 43 THEN GOSUB lm
IF SCREEN(4, 7) = 43 THEN GOSUB l2

IF SCREEN(2, 7) = 32 THEN GOSUB l1
IF SCREEN(3, 7) = 32 THEN GOSUB lm
IF SCREEN(4, 7) = 32 THEN GOSUB l2

IF SCREEN(2, 9) = 32 THEN GOSUB r1e
IF SCREEN(3, 9) = 32 THEN GOSUB rm
IF SCREEN(4, 9) = 32 THEN GOSUB r2

IF SCREEN(2, 9) = 219 THEN GOSUB cr1
IF SCREEN(3, 9) = 219 THEN GOSUB crm
IF SCREEN(4, 9) = 219 THEN GOSUB cr2

IF SCREEN(2, 7) = 219 THEN GOSUB cl1
IF SCREEN(3, 7) = 219 THEN GOSUB clm
IF SCREEN(4, 7) = 219 THEN GOSUB cl2

IF SCREEN(2, 9) = 43 THEN GOSUB r1e
IF SCREEN(3, 9) = 43 THEN GOSUB rm
IF SCREEN(4, 9) = 43 THEN GOSUB r2

IF SCREEN(2, 8) = 219 THEN GOSUB cb1
IF SCREEN(3, 8) = 219 THEN GOSUB cb2
IF SCREEN(3, 8) = 43 THEN GOSUB xit
RETURN

xit:
LOCATE 10, 15: PRINT "Exit"
RETURN

REM       To change the size of the maze to the following

REM 10         : replace 70 with your number,n
REM 50-110     : add extra lines of 1s and 0s, so their that their total
REM              number is n
REM 120        : replace 70 with n
REM 170 and 870: replace 50 with n-20
REM 580        : replace 69 with n-1


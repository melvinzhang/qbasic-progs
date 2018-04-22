CLS
10 SCREEN 1
INPUT "Number of points"; p
20 LET l = p          'number of points allowed
30 LET wi = 310       '620
40 LET hi = 195       '180
50 LET cx = wi / 2
60 LET cy = hi / 2
70 LET mx = wi / 100
80 LET my = hi / 100
90 DIM x(l, 2): DIM y(l, 2)
100 CLS 2
110 GOSUB 760
120 PRINT "Type 1 to Draw"
130 PRINT "Type 2 to View"
135 PRINT "Type 3 to Exit"
140 INPUT d

150 CLS 1

160 LET x = 1
170 LET y = cy
180 PSET (x, y)
190 IF d = 1 THEN GOSUB 220
200 IF d = 2 THEN GOSUB 480
205 IF d = 3 THEN END
210 GOTO 120
220 FOR j = 1 TO 2
230 LET i = 1: LET v = 0: LET w = 0
240 CLS
250 GOSUB 690
260 LET q$ = INKEY$
270 IF q$ = CHR$(0) + "P" THEN LET w = my
280 IF q$ = CHR$(0) + "H" THEN LET w = -my
290 IF q$ = CHR$(0) + "K" THEN LET v = -mx
300 IF q$ = CHR$(0) + "M" THEN LET v = mx

305 IF q$ = "q" THEN END

310 COLOR n, 1
320 LET x = x + v
330 LET y = y + w
340 IF x < 0 THEN LET x = 0
350 IF y < 0 THEN LET y = 0
360 IF x > wi THEN LET x = wi
370 IF y > hi THEN LET y = hi
380 PSET (x, y)
390 IF q$ = " " THEN GOSUB 640
400 COLOR bc
410 GOSUB 730
420 PSET (x, y)
430 LET v = 0
440 LET w = 0
450 IF i < l + 1 THEN GOTO 260
460 NEXT j
470 RETURN
480 INPUT "How many in between shapes"; f
490 FOR z = o TO f
500 LOCATE 5, 20: PRINT "Frame no "; z + 1
510 LET x = (x(1, 1) * (f - z) + x(1, 2) * z) / f
520 LET y = (y(1, 1) * (f - z) + y(1, 2) * z) / f
530 PSET (x, y)
540 FOR i = 1 TO l
550 LET x = (x(i, 1) * (f - z) + x(i, 2) * z) / f
560 LET y = (y(i, 1) * (f - z) + y(i, 2) * z) / f
570 COLOR c1
580 IF z < 1 OR z > f - 1 THEN COLOR c2
590 LINE -(x, y)
600 NEXT i
610 GOSUB 710
620 NEXT z
SLEEP
630 RETURN
640 LET x(i, j) = x

650 IF i = 1 THEN PSET (x, y): LET x = x + mx


660 LET y(i, j) = y
670 IF i > 1 THEN LINE -(x(i - 1, j), y(i - 1, j))
680 LET i = i + 1
LOCATE 1, 1
690 PRINT "Shape "; j; " : points left "; l + 1 - i
700 RETURN
710 FOR t = 1 TO 700
720 NEXT t
730 FOR t = 1 TO 100
740 NEXT t
750 RETURN
760 PRINT "Type in backgroung colour"
770 INPUT bc
780 PRINT "Type in first colour"
790 INPUT c1
800 PRINT "Type in second colour"
810 INPUT c2
820 RETURN






























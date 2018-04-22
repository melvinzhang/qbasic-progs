CLS
10 SCREEN 12
INPUT "Number of points"; p
20 l = p          'number of points allowed
30 wi = 630       '620
40 hi = 470       '180
50 cx = wi / 2
60 cy = hi / 2
70 mx = wi / 100
80 my = hi / 100
90 DIM x(l, 2): DIM y(l, 2)
100 CLS 2
110 GOSUB 760
120 PRINT "Type 1 to Draw"
130 PRINT "Type 2 to View"
135 PRINT "Type 3 to Exit"
140 INPUT d

150 CLS 1

160 x = 1
170 y = cy
180 PSET (x, y)
190 IF d = 1 THEN GOSUB 220
200 IF d = 2 THEN GOSUB 480
205 IF d = 3 THEN END
210 GOTO 120
220 FOR j = 1 TO 2
230 i = 1: v = 0: w = 0
240 CLS
250 GOSUB 690
260 q$ = INKEY$
270 IF q$ = CHR$(0) + "P" THEN w = my
280 IF q$ = CHR$(0) + "H" THEN w = -my
290 IF q$ = CHR$(0) + "K" THEN v = -mx
300 IF q$ = CHR$(0) + "M" THEN v = mx

305 IF q$ = "q" THEN END

'310 COLOR n, 1
320 x = x + v
330 y = y + w
340 IF x < 0 THEN x = 0
350 IF y < 0 THEN y = 0
360 IF x > wi THEN x = wi
370 IF y > hi THEN y = hi
380 PSET (x, y)
390 IF q$ = " " THEN GOSUB 640
'400 COLOR bc
410 GOSUB 730
420 PSET (x, y)
430 v = 0
440 w = 0
450 IF i < l + 1 THEN GOTO 260
460 NEXT j
470 RETURN
480 INPUT "How many in between shapes"; f
CLS
490 FOR z = o TO f
500 LOCATE 1, 25: PRINT "Frame no "; z + 1
510 x = (x(1, 1) * (f - z) + x(1, 2) * z) / f
520 y = (y(1, 1) * (f - z) + y(1, 2) * z) / f
530 PSET (x, y)
540 FOR i = 1 TO l
550 x = (x(i, 1) * (f - z) + x(i, 2) * z) / f
560 y = (y(i, 1) * (f - z) + y(i, 2) * z) / f
570 COLOR c1
580 IF z < 1 OR z > f - 1 THEN COLOR c2
590 LINE -(x, y)
600 NEXT i
610 GOSUB 710
620 NEXT z
    SLEEP
    COLOR 7
630 RETURN
640 x(i, j) = x

'650 IF i = 1 THEN PSET (x, y): x = x + mx

650 IF i = 1 THEN PSET (x, y)

660 y(i, j) = y
670 IF i > 1 THEN LINE -(x(i - 1, j), y(i - 1, j))
680 i = i + 1
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






























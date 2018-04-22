CLS
   SCREEN 12
INPUT "Number of points"; p
   LET l = p          'number of points allowed
   LET wi = 630       '620
   LET hi = 470       '180
   LET cx = wi / 2
   LET cy = hi / 2
   LET mx = wi / 100
   LET my = hi / 100
   DIM x(l, 2): DIM y(l, 2)
    CLS 2
    GOSUB 760
120 PRINT "Type 1 to Draw"
    PRINT "Type 2 to View"
    PRINT "Type 3 to Exit"
    INPUT d

    CLS 1

    LET x = 1
    LET y = cy
    PSET (x, y)
    IF d = 1 THEN GOSUB 220
    IF d = 2 THEN GOSUB 480
    IF d = 3 THEN END
    GOTO 120
220 FOR j = 1 TO 2
    LET i = 1: LET v = 0: LET w = 0
    CLS
    GOSUB 690
260 LET q$ = INKEY$
    IF q$ = CHR$(0) + "P" THEN LET w = my
    IF q$ = CHR$(0) + "H" THEN LET w = -my
    IF q$ = CHR$(0) + "K" THEN LET v = -mx
    IF q$ = CHR$(0) + "M" THEN LET v = mx

    IF q$ = "q" THEN END

'310 COLOR n, 1
    LET x = x + v
    LET y = y + w
    IF x < 0 THEN LET x = 0
    IF y < 0 THEN LET y = 0
    IF x > wi THEN LET x = wi
    IF y > hi THEN LET y = hi
    PSET (x, y)
    IF q$ = " " THEN GOSUB 640
'400 COLOR bc
    GOSUB 730
    PSET (x, y)
    LET v = 0
    LET w = 0
    IF i < l + 1 THEN GOTO 260
    NEXT j
    RETURN
480 INPUT "How many in between shapes"; f
CLS
    FOR z = o TO f
    LOCATE 1, 25: PRINT "Frame no "; z + 1
    LET x = (x(1, 1) * (f - z) + x(1, 2) * z) / f
    LET y = (y(1, 1) * (f - z) + y(1, 2) * z) / f
    PSET (x, y)
    FOR i = 1 TO l
    LET x = (x(i, 1) * (f - z) + x(i, 2) * z) / f
    LET y = (y(i, 1) * (f - z) + y(i, 2) * z) / f
    COLOR c1
    IF z < 1 OR z > f - 1 THEN COLOR c2
    LINE -(x, y)
    NEXT i
    GOSUB 710
    NEXT z
    SLEEP
    COLOR 7
    RETURN
640 LET x(i, j) = x

'650 IF i = 1 THEN PSET (x, y): LET x = x + mx

    IF i = 1 THEN PSET (x, y)

    LET y(i, j) = y
    IF i > 1 THEN LINE -(x(i - 1, j), y(i - 1, j))
    LET i = i + 1
LOCATE 1, 1
690 PRINT "Shape "; j; " : points left "; l + 1 - i
    RETURN
710 FOR t = 1 TO 700
    NEXT t
730 FOR t = 1 TO 100
    NEXT t
    RETURN
760 PRINT "Type in backgroung colour"
    INPUT bc
    PRINT "Type in first colour"
    INPUT c1
    PRINT "Type in second colour"
    INPUT c2
    RETURN






























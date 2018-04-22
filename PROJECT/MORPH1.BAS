CLS
SCREEN 12
INPUT "Number of points"; p
l = p    'number of points allowed
wi = 630 '620
hi = 470 '180
cx = wi / 2
cy = hi / 2
mx = wi / 100
my = hi / 100
DIM x(l, 2): DIM y(l, 2)
CLS 2
GOSUB 760
120
PRINT "Type 1 to Draw"
PRINT "Type 2 to View"
PRINT "Type 3 to Exit"
INPUT d
CLS 1
x = 1
y = cy
PSET (x, y)
IF d = 1 THEN GOSUB 220
IF d = 2 THEN GOSUB 480
IF d = 3 THEN RUN "b:\project\manager1.bas"
GOTO 120
220
FOR j = 1 TO 2
i = 1:  v = 0:  w = 0
CLS
GOSUB 690
260
q$ = INKEY$
IF q$ = CHR$(0) + "P" THEN w = my
IF q$ = CHR$(0) + "H" THEN w = -my
IF q$ = CHR$(0) + "K" THEN v = -mx
IF q$ = CHR$(0) + "M" THEN v = mx
IF q$ = "g" THEN GOSUB cp
IF q$ = "q" THEN RUN "b:\project\manager1.bas"
x = x + v
y = y + w
IF x < 0 THEN x = 0
IF y < 0 THEN y = 0
IF x > wi THEN x = wi
IF y > hi THEN y = hi
PSET (x, y)
IF q$ = " " THEN GOSUB 640
GOSUB 730
PRESET (x, y)
v = 0
w = 0
IF i < l + 1 THEN GOTO 260
NEXT j
RETURN
480
INPUT "How many in between shapes"; f
CLS
FOR z = o TO f
LOCATE 1, 25: PRINT "Frame no "; z + 1
x = (x(1, 1) * (f - z) + x(1, 2) * z) / f
y = (y(1, 1) * (f - z) + y(1, 2) * z) / f
PSET (x, y)
FOR i = 1 TO l
x = (x(i, 1) * (f - z) + x(i, 2) * z) / f
y = (y(i, 1) * (f - z) + y(i, 2) * z) / f
COLOR c1
IF z < 1 OR z > f - 1 THEN COLOR c2
LINE -(x, y)
q$ = INKEY$
IF q$ = "p" THEN GOSUB pause
NEXT i
GOSUB 710
NEXT z
SLEEP
COLOR 7
RETURN
640
x(i, j) = x
IF i = 1 THEN PSET (x, y): LET x = x + mx
y(i, j) = y
IF i > 1 THEN LINE -(x(i - 1, j), y(i - 1, j))
i = i + 1
LOCATE 1, 1
690
PRINT "Shape "; j; " : points left "; l + 1 - i
RETURN
710
FOR t = 1 TO 200             'delay for in between shapes
NEXT t
730
FOR t = 1 TO 100
NEXT t
RETURN
760
PRINT "Type in first colour  (1-16)"
INPUT c1
PRINT
PRINT "Type in second colour (1-16)"
INPUT c2
RETURN

pause:
SLEEP
RETURN

cp:
LOCATE 1, 1: INPUT "Vertical position (1-470) = ", vert
LOCATE 1, 1: INPUT "Horizontal position (1-630) = ", hori
LOCATE 1, 1: PRINT "                                                "
LET x = hori
LET y = vert
RETURN


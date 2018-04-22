ReStart:
DIM a(100, 100)
WIDTH 80
CLS
KEY OFF
SCREEN 13
k = 17  '12-17-25
m = 9   '12- 9- 7
x = 4
y = 6
c1 = 3
c2 = 4
c3 = 4
winn = 30

FOR i = 2 TO k
FOR j = 2 TO k
LINE (i * m, j * m)-((i + .7) * m, (j + .7) * m), c1, BF
a(i, j) = 0
NEXT j
NEXT i
LINE ((x - .1) * m, (y - .1) * m)-((x + .8) * m, (y + .8) * m), c3, B

Start:
e$ = UCASE$(INKEY$)
LOCATE 3, 25:  PRINT "6   for right  "
LOCATE 6, 25:  PRINT "4   for left"
LOCATE 8, 25:  PRINT "2   for down"
LOCATE 10, 25:  PRINT "8   for up"
LOCATE 12, 25: PRINT "Spc for setting"
LOCATE 14, 25: PRINT "S   to start"
LOCATE 16, 25: PRINT "Q to quit"
IF e$ = "" THEN GOTO Start
IF e$ = "S" THEN GOTO 30
LINE ((x - .1) * m, (y - .1) * m)-((x + .8) * m, (y + .8) * m), 0, B
IF e$ = CHR$(0) + "M" THEN x = x + 1: GOTO 10
IF e$ = CHR$(0) + "K" THEN x = x - 1: GOTO 10
IF e$ = CHR$(0) + "H" THEN y = y - 1: GOTO 10
IF e$ = CHR$(0) + "P" THEN y = y + 1: GOTO 10
IF e$ = "Q" THEN END
IF e$ = "R" THEN GOTO ReStart
IF e$ = " " THEN GOTO 20

10
LINE ((x - .1) * m, (y - .1) * m)-((x + .8) * m, (y + .8) * m), c3, B
GOTO Start

20
a(x, y) = 1
LINE (x * m, y * m)-((x + .7) * m, (y + .7) * m), c2, BF
GOTO Start

30
a$ = UCASE$(INKEY$)
LOCATE 18, 25
PRINT "Generation"; n
IF a$ = "Q" THEN END
dead = 0




'***********************
'*** GROWTH OF CELLS ***
'***********************

FOR i = 2 TO k
FOR j = 2 TO k
IF a(i, j) = 1 THEN GOTO 40
IF a(i - 1, j) = 1 THEN a = a + 1
IF a(i, j - 1) = 1 THEN a = a + 1
IF a(i + 1, j) = 1 THEN a = a + 1
IF a(i, j + 1) = 1 THEN a = a + 1
IF a(i + 1, j + 1) = 1 THEN a = a + 1
IF a(i + 1, j - 1) = 1 THEN a = a + 1
IF a(i - 1, j + 1) = 1 THEN a = a + 1
IF a(i - 1, j - 1) = 1 THEN a = a + 1
IF a(i, j) < 1 THEN dead = dead + 1
IF i = k AND j = k AND dead = (k - 1) ^ 2 THEN END
IF a < 3 THEN GOTO 40
IF a > 3 THEN GOTO 40
IF a(i, j) = 1 THEN GOTO 40
a(i, j) = .01
LINE (i * m, j * m)-((i + .7) * m, (j + .7) * m), c2, BF
40
a = 0
NEXT j
NEXT i




'**********************
'*** DEATH OF CELLS ***
'**********************

FOR i = 2 TO k
FOR j = 2 TO k
B = 0
IF a(i, j) = 0 THEN GOTO 70
IF a(i, j) = .01 THEN GOTO 70
IF a(i - 1, j) > .9 THEN B = B + 1
IF a(i, j - 1) > .9 THEN B = B + 1
IF a(i + 1, j) > .9 THEN B = B + 1
IF a(i, j + 1) > .9 THEN B = B + 1
IF a(i + 1, j + 1) > .9 THEN B = B + 1
IF a(i + 1, j - 1) > .9 THEN B = B + 1
IF a(i - 1, j + 1) > .9 THEN B = B + 1
IF a(i - 1, j - 1) > .9 THEN B = B + 1
IF B < 4 THEN GOTO 50
GOTO 60
50 IF B > 1.8 THEN GOTO 70
60 IF a(i, j) = 0 THEN GOTO 70
a(i, j) = 1.1
LINE (i * m, j * m)-((i + .7) * m, (j + .7) * m), c1, BF
dead = dead + 1
70 B = 0

percent = CINT((((k - 1) ^ 2) - dead) / ((k - 1) ^ 2) * 100)
IF i = k AND j = k AND n >= 2 AND percent >= winn THEN
LOCATE 20, 23: PRINT "YOU'VE WON -"; percent; "%"
LOCATE 22, 23: PRINT "  "; ((k - 1) ^ 2) - dead; "/"; (k - 1) ^ 2
END IF

NEXT j
NEXT i




FOR i = 2 TO k
FOR j = 2 TO k
IF a(i, j) = 1.1 THEN a(i, j) = 0
IF a(i, j) = .01 THEN a(i, j) = 1
NEXT j
NEXT i
n = n + 1
GOTO 30


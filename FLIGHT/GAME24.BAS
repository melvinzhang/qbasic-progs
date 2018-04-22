0 CLS
CLEAR , , 3000
RANDOMIZE TIMER
v = 0
v1 = 0
o = INT(RND * 17 + 1)
p = INT(RND * 64 + 1)
IF o > 17 THEN o = 17
IF p < 16 THEN p = 16
IF o < 8 THEN o = 8
IF p > 64 THEN p = 64

he = 10000
'FOR i = 8 TO 17: LOCATE i, 15: PRINT "³": NEXT i
'FOR i = 15 TO 65: LOCATE 7, i: PRINT "Ä": NEXT i
'FOR i = 8 TO 17: LOCATE i, 65: PRINT "³": NEXT i
'FOR i = 15 TO 65: LOCATE 18, i: PRINT "Ä": NEXT i
'FOR i = 15 TO 65: LOCATE 13, i: PRINT "Ä": NEXT i



i = 11
g = 40
j = 14
s = 0
GOTO lin
10 i$ = INKEY$
s = s + 1: IF s = 10 THEN s = 0: GOSUB move
IF j <= 14 THEN he = he - 1
IF j <= 13 THEN he = he - 5
IF j > 14 THEN he = he + 1
IF j1 > 16 THEN he = he + 3
IF j1 > 20 THEN he = he + 6
IF j1 > 23 THEN he = he + 10
IF j1 > 25 THEN he = he + 15
IF j1 > 30 THEN he = he + 25



SELECT CASE i$
'CASE CHR$(0) + "P": i = i + 1:  CLS : GOTO lin  'cursor down **
'CASE CHR$(0) + "H": i = i - 1:  CLS : GOTO lin   'cursor up   **
'CASE CHR$(0) + "K": g = g - 1:  CLS : GOTO lin   'cursor left **
'CASE CHR$(0) + "M": g = g + 1:  CLS : GOTO lin   'cursor right**
CASE CHR$(0) + "P", "s", "x": GOTO check
CASE CHR$(0) + "H", "w": GOTO check1
CASE CHR$(0) + "K", "a": GOTO check3
CASE CHR$(0) + "M", "d": GOTO check2
'CASE ",": v = 1: v1 = 1: CLS : GOTO lin
'CASE ".": v = 0: v1 = 0: CLS : GOTO lin
CASE " ": GOSUB 200
CASE "q", "Q": END
CASE ELSE
END SELECT
IF i > 17 THEN i = 17
IF g < 16 THEN g = 16
IF i < 8 THEN i = 8
IF g > 64 THEN g = 64
COLOR 2, 0
LOCATE i, g: PRINT "+"
COLOR 12, 0
LOCATE o, p: PRINT "A"
COLOR 7, 0
LOCATE 1, 1: PRINT i
LOCATE 2, 1: PRINT g
LOCATE 3, 1: PRINT j
LOCATE 6, 1: PRINT j1
IF he < 2000 THEN LOCATE 19, 10: PRINT "CRASH WARNING !!!"
IF he < 10 THEN CLS : LOCATE 15, 20: PRINT "YOUR PLANE CRASHES ONTO THE GROUND AND EXPLODED !": SLEEP: END
IF he > 50000 THEN PRINT "INSUFFICENT OXYGEN FOR COMBUSTION, ENGINE FAILURE": he = he - 5
IF he > 600000 THEN PRINT "YOU ARE NOW IN ORBIT, DOOMED TO DRIFT IN SPACE FOREVER .....": END
LOCATE 4, 1: PRINT "Height - "; he

GOTO 10



lin:
IF j < 12 THEN j = 12
IF j < 7 THEN j = 7
IF j > 18 THEN j = 18

COLOR 7, 0

FOR i1 = 7 TO 18: LOCATE i1, 15: PRINT "³": NEXT i1
FOR i1 = 15 TO 65: LOCATE 7, i1: PRINT "Ä": NEXT i1
FOR i1 = 8 TO 18: LOCATE i1, 65: PRINT "³": NEXT i1
FOR i1 = 15 TO 65: LOCATE 18, i1: PRINT "Ä": NEXT i1
FOR i1 = 15 TO 65: LOCATE j, i1: PRINT "Ä": NEXT i1

g1 = 35 - v1

FOR i1 = j + v TO 18
g1 = g1 - 3
LOCATE i1, g1: PRINT "."
NEXT i1

g2 = 37 - v1
FOR i1 = j + v TO 18
g2 = g2 - 1
LOCATE i1, g2: PRINT "."
NEXT i1

g3 = 40 - v1
FOR i1 = j + v TO 18
LOCATE i1, g3: PRINT "."
NEXT i1

g4 = 43 - v1
FOR i1 = j + v TO 18
g4 = g4 + 1
LOCATE i1, g4: PRINT "."
NEXT i1

g5 = 45 - v1
FOR i1 = j + v TO 18
g5 = g5 + 3
LOCATE i1, g5: PRINT "."
NEXT i1
'100 LOCATE j - 4, p: PRINT "A"
GOTO 10

'100 LOCATE o, p: PRINT "A"

200
COLOR 11, 0
FOR i2 = 17 TO 12 STEP -1
LOCATE i2, 40: PRINT "³"
IF i2 = o AND p = 40 THEN COLOR 7, 0: PRINT "Hit": GOTO try
NEXT i2
RETURN

check1:
j = j - 1
j1 = j
IF j < 7 THEN j = 7 ELSE o = o - 1
CLS
GOTO lin

check:
j = j + 1
j1 = j
j1 = j1 + 1
IF j < 12 THEN j = 12 ELSE o = o + 1
CLS
GOTO lin

move:
m = INT(RND * 4)
IF m = 1 THEN o = o - 1
IF m = 2 THEN o = o + 1
IF m = 3 THEN p = p - 1
IF m = 4 THEN p = p + 1

IF o > 17 THEN o = 17
IF p < 16 THEN p = 16
IF o < 8 THEN o = 8
IF p > 64 THEN p = 64
CLS
GOTO lin

check2:
p = p - 1
CLS
GOTO lin

check3:
p = p + 1
CLS
GOTO lin

try:
PRINT
PRINT
PRINT
PRINT
INPUT "DO YOU WISH TO TRY AGAIN"; a$
IF a$ = "y" OR a$ = "Y" THEN GOTO 0 ELSE END







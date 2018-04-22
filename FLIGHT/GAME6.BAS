CLS
LET v = 0
LET v1 = 0
LET o = 10
LET p = 35
LET he = 10000
'FOR i = 8 TO 17: LOCATE i, 15: PRINT "³": NEXT i
'FOR i = 15 TO 65: LOCATE 7, i: PRINT "Ä": NEXT i
'FOR i = 8 TO 17: LOCATE i, 65: PRINT "³": NEXT i
'FOR i = 15 TO 65: LOCATE 18, i: PRINT "Ä": NEXT i
'FOR i = 15 TO 65: LOCATE 13, i: PRINT "Ä": NEXT i



LET i = 10
LET g = 40
LET j = 14
LET s = 0
GOTO lin
10 LET i$ = INKEY$
LET s = s + 1: IF s = 150 THEN LET s = 0: GOSUB move
IF j <= 15 THEN LET he = he - 1
IF j <= 13 THEN LET he = he - 5
IF j > 15 THEN LET he = he + 1

SELECT CASE i$
CASE CHR$(0) + "P": LET i = i + 1:  CLS : GOTO lin  'cursor down **
CASE CHR$(0) + "H": LET i = i - 1:  CLS : GOTO lin   'cursor up   **
CASE CHR$(0) + "K": LET g = g - 1:  CLS : GOTO lin   'cursor left **
CASE CHR$(0) + "M": LET g = g + 1:  CLS : GOTO lin   'cursor right**
CASE "s", "x": GOTO check
CASE "w": GOTO check1:
'CASE ",": LET v = 1: LET v1 = 1: CLS : GOTO lin
'CASE ".": LET v = 0: LET v1 = 0: CLS : GOTO lin
CASE " ": GOSUB 200
CASE "q", "Q": END
CASE ELSE
END SELECT
IF i > 17 THEN LET i = 17
IF g < 16 THEN LET g = 16
IF i < 8 THEN LET i = 8
IF g > 64 THEN LET g = 64
LOCATE i, g: PRINT "+"
LOCATE o, p: PRINT "A"
LOCATE 1, 1: PRINT i
LOCATE 2, 1: PRINT g
LOCATE 3, 1: PRINT j
IF he < 2000 THEN LOCATE 19, 10: PRINT "CRASH WARNING !!!"
IF he < 10 THEN CLS : LOCATE 15, 20: PRINT "YOUR PLANE CRASHES ONTO THE GROUND AND EXPLODED !": SLEEP: END
LOCATE 4, 1: PRINT "Height - "; he

GOTO 10



lin:
IF j < 12 THEN LET j = 12
IF j < 7 THEN LET j = 7
IF j > 18 THEN LET j = 18
FOR i1 = 7 TO 18: LOCATE i1, 15: PRINT "³": NEXT i1
FOR i1 = 15 TO 65: LOCATE 7, i1: PRINT "Ä": NEXT i1
FOR i1 = 8 TO 18: LOCATE i1, 65: PRINT "³": NEXT i1
FOR i1 = 15 TO 65: LOCATE 18, i1: PRINT "Ä": NEXT i1
FOR i1 = 15 TO 65: LOCATE j, i1: PRINT "Ä": NEXT i1

LET g1 = 35 - v1

FOR i1 = j + v TO 18
LET g1 = g1 - 3
LOCATE i1, g1: PRINT "."
NEXT i1

LET g2 = 37 - v1
FOR i1 = j + v TO 18
LET g2 = g2 - 1
LOCATE i1, g2: PRINT "."
NEXT i1

LET g3 = 40 - v1
FOR i1 = j + v TO 18
LOCATE i1, g3: PRINT "."
NEXT i1

LET g4 = 43 - v1
FOR i1 = j + v TO 18
LET g4 = g4 + 1
LOCATE i1, g4: PRINT "."
NEXT i1

LET g5 = 45 - v1
FOR i1 = j + v TO 18
LET g5 = g5 + 3
LOCATE i1, g5: PRINT "."
NEXT i1
'100 LOCATE j - 4, p: PRINT "A"
GOTO 10

'100 LOCATE o, p: PRINT "A"
200 FOR i2 = 17 TO 10 STEP -1
LOCATE i2, g: PRINT "³"
IF i2 = o AND g = p THEN PRINT "Hit": END
NEXT i2
RETURN

check1:
LET j = j - 1
IF j < 7 THEN LET j = 7 ELSE LET o = o - 1
CLS
GOTO lin

check:
LET j = j + 1
IF j < 12 THEN LET j = 12 ELSE LET o = o + 1
CLS
GOTO lin

move:
LET m = INT(RND * 4)
IF m = 1 THEN LET o = o - 1
IF m = 2 THEN LET o = o + 1
IF m = 3 THEN LET p = p - 1
IF m = 4 THEN LET p = p + 1

IF o > 17 THEN LET o = 17
IF p < 16 THEN LET p = 16
IF o < 8 THEN LET o = 8
IF p > 64 THEN LET p = 64
CLS
GOTO lin







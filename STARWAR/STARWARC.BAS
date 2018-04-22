LET s = 0
LET s1 = 0
LET co = 2
5 CLS
LET i = INT(RND * 19) + 1
LET g = INT(RND * 69) + 1
LET b = INT(RND * 19) + 1
LET c = INT(RND * 69) + 1
10 LET i$ = INKEY$
SELECT CASE i$
CASE CHR$(0) + "P": LET i = i + 1: CLS     'cursor down **
CASE CHR$(0) + "H": LET i = i - 1: CLS     'cursor up   **
CASE CHR$(0) + "K": LET g = g - 1: CLS     'cursor left **
CASE CHR$(0) + "M": LET g = g + 1: CLS    'cursor right**


CASE "8": LET b = b - 1: CLS
CASE "2", "5": LET b = b + 1: CLS
CASE "4": LET c = c - 1: CLS
CASE "6": LET c = c + 1: CLS

CASE "w": GOSUB 20
CASE "s", "x": GOSUB 30
CASE "a": GOSUB 40
CASE "d": GOSUB 50

CASE "o": GOSUB 200
CASE "l", ".": GOSUB 300
CASE "k": GOSUB 400
CASE ";": GOSUB 500
CASE ELSE
END SELECT


IF i$ = "q" THEN GOTO 1000

IF i > 20 THEN LET i = 20
IF i < 1 THEN LET i = 1
IF g > 70 THEN LET g = 70
IF g < 1 THEN LET g = 1
IF b > 20 THEN LET b = 20
IF b < 1 THEN LET b = 1
IF c > 70 THEN LET c = 70
IF c < 1 THEN LET c = 1

LOCATE i, g: PRINT CHR$(5)
LOCATE b, c: PRINT CHR$(233)
GOTO 10




20 FOR k = i - co TO 1 STEP -1
   COLOR 1, 0
   LOCATE k, g: PRINT "³"
   COLOR 7, 0
   IF k = b AND g = c THEN LET s = s + 1: GOTO 5
   FOR j = 1 TO 200
   NEXT j
   NEXT k
   CLS
   RETURN

30 FOR k = i + co TO 20
   COLOR 1, 0
   LOCATE k, g: PRINT "³"
   COLOR 7, 0
   IF k = b AND g = c THEN LET s = s + 1: GOTO 5
   FOR j = 1 TO 200
   NEXT j
   NEXT k
   CLS
   RETURN

40 FOR k = g - co TO 1 STEP -1
   COLOR 1, 0
   LOCATE i, k: PRINT "Ä"
   COLOR 7, 0
   IF i = b AND k = c THEN LET s = s + 1: GOTO 5
   FOR j = 1 TO 100
   NEXT j
   NEXT k
   CLS
   RETURN

50 FOR k = g + co TO 70
   COLOR 1, 0
   LOCATE i, k: PRINT "Ä"
   COLOR 7, 0
   IF i = b AND k = c THEN LET s = s + 1: GOTO 5
   FOR j = 1 TO 100
   NEXT j
   NEXT k
   CLS
   RETURN

200 FOR k = b - co TO 1 STEP -1
    COLOR 4, 0
    LOCATE k, c: PRINT "³"
    COLOR 7, 0
    IF k = i AND c = g THEN LET s1 = s1 + 1: GOTO 5
    FOR j = 1 TO 200
    NEXT j
    NEXT k
    CLS
    RETURN

300 FOR k = b + co TO 20
    COLOR 4, 0
   LOCATE k, c: PRINT "³"
   COLOR 7, 0
   IF k = i AND c = g THEN LET s1 = s1 + 1: GOTO 5
   FOR j = 1 TO 200
   NEXT j
   NEXT k
   CLS
   RETURN

400 FOR k = c - co TO 1 STEP -1
   COLOR 4, 0
   LOCATE b, k: PRINT "Ä"
   COLOR 7, 0
   IF b = i AND k = g THEN LET s1 = s1 + 1: GOTO 5
   FOR j = 1 TO 100
   NEXT j
   NEXT k
   CLS
   RETURN

500 FOR k = c + co TO 70
   COLOR 4, 0
   LOCATE b, k: PRINT "Ä"
   COLOR 7, 0
   IF b = i AND k = g THEN LET s1 = s1 + 1: GOTO 5
   FOR j = 1 TO 100
   NEXT j
   NEXT k
   CLS
   RETURN

1000
CLS
LOCATE 10, 1
PRINT CHR$(5); " = "; s
PRINT
PRINT CHR$(233); " = "; s1
IF s1 > s THEN PRINT : PRINT CHR$(233); " WINS !!"
IF s > s1 THEN PRINT : PRINT CHR$(5); " WINS !!"
IF s = s1 THEN PRINT : PRINT "IT IS A TIE !!"
END



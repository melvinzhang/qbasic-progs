LET s = 0
LET s1 = 0
LET gh = 1500
LET js = 1
LET d = 0
LET sh = 0
5 CLS
LET i = INT(RND * 19) + 1
LET g = INT(RND * 69) + 1
LET b = INT(RND * 19) + 1
LET c = INT(RND * 69) + 1

10 LET i$ = INKEY$
LET d = d + 1: LET sh = sh + 1
IF d = 50 THEN LET d = 0: GOSUB 80
IF sh = 200 THEN LET sh = 0: GOSUB 90

SELECT CASE i$

CASE CHR$(0) + "P": LET i = i + 1: CLS     'cursor down **
CASE CHR$(0) + "H": LET i = i - 1: CLS      'cursor up   **
CASE CHR$(0) + "K": LET g = g - 1: CLS      'cursor left **
CASE CHR$(0) + "M": LET g = g + 1: CLS      'cursor right**

CASE "w": GOSUB 20
CASE "s", "x": GOSUB 30
CASE "a": GOSUB 40
CASE "d": GOSUB 50

CASE "q": END
CASE ELSE
END SELECT

IF i > 20 THEN LET i = 20
IF i < 1 THEN LET i = 1
IF g > 70 THEN LET g = 70
IF g < 1 THEN LET g = 1
COLOR 2, 0
LOCATE i, g: PRINT CHR$(5)
COLOR 4, 0
LOCATE b, c: PRINT "A"
COLOR 7, 0
LOCATE 1, 35
PRINT CHR$(5); " ="; s
LOCATE 2, 35
PRINT "A ="; s1
GOTO 10




20 FOR k = i - js TO 1 STEP -1
   COLOR 13, 0
   LOCATE k, g: PRINT "³"
   IF k = b AND g = c THEN LET s = s + 1: FOR i1 = 1 TO gh: NEXT i1: GOTO 5
  
21 FOR j = 1 TO 90
   NEXT j
   NEXT k
   CLS
   RETURN

30 FOR k = i + js TO 20
   COLOR 13, 0
   LOCATE k, g: PRINT "³"
   IF k = b AND g = c THEN LET s = s + 1: FOR i2 = 1 TO gh: NEXT i2: GOTO 5
   FOR j = 1 TO 90
   NEXT j
   NEXT k
   CLS
   RETURN

40 FOR k = g - js TO 1 STEP -1
   COLOR 12, 0
   LOCATE i, k: PRINT "Ä"
   IF i = b AND k = c THEN LET s = s + 1: FOR i2 = 1 TO gh: NEXT i2: GOTO 5
   FOR j = 1 TO 50
   NEXT j
   NEXT k
   CLS
   RETURN

50 FOR k = g + js TO 70
   COLOR 12, 0
   LOCATE i, k: PRINT "Ä"
   IF i = b AND k = c THEN LET s = s + 1: FOR i2 = 1 TO gh: NEXT i2: GOTO 5
   FOR j = 1 TO 50
   NEXT j
   NEXT k
   CLS
   RETURN

80 IF b > i THEN LET b = b - 1
IF b < i THEN LET b = b + 1
IF c > g THEN LET c = c - 1
IF c < g THEN LET c = c + 1
CLS
RETURN


90 IF b > i THEN GOTO 100
IF b < i THEN GOTO 200
IF c > g THEN GOTO 300
IF c < g THEN GOTO 400



100 FOR k = b - 0 TO 1 STEP -1
    COLOR 13, 0
    LOCATE k, c: PRINT "³"
    IF k = i AND c = g THEN LET s1 = s1 + 1: FOR i1 = 1 TO gh: NEXT i1: GOTO 5
    FOR j = 1 TO 90
    NEXT j
    NEXT k
    GOTO 10
200 FOR k = b + 0 TO 20
   COLOR 13, 0
   LOCATE k, c: PRINT "³"
   IF k = i AND c = g THEN LET s1 = s1 + 1: FOR i2 = 1 TO gh: NEXT i2: GOTO 5
   FOR j = 1 TO 90
   NEXT j
   NEXT k
   GOTO 10

300 FOR k = c - 0 TO 1 STEP -1
   COLOR 12, 0
   LOCATE b, k: PRINT "Ä"
   IF b = i AND k = g THEN LET s1 = s1 + 1: FOR i2 = 1 TO gh: NEXT i2: GOTO 5
   FOR j = 1 TO 50
   NEXT j
   NEXT k
   GOTO 10

400 FOR k = c + 0 TO 70
   COLOR 12, 0
   LOCATE b, k: PRINT "Ä"
   IF b = i AND k = g THEN LET s1 = s1 + 1: FOR i2 = 1 TO gh: NEXT i2: GOTO 5
   FOR j = 1 TO 50
   NEXT j
   NEXT k
   GOTO 10


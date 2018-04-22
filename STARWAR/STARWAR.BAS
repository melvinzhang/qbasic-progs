5 CLS
LET i = 20 / 2
LET g = 70 / 2
LET b = INT(RND * 19) + 1
LET c = INT(RND * 69) + 1
10 LET i$ = INKEY$
IF i$ = CHR$(0) + "P" THEN LET i = i + 1: CLS    'cursor down **
IF i$ = CHR$(0) + "H" THEN LET i = i - 1: CLS     'cursor up   **
IF i$ = CHR$(0) + "K" THEN LET g = g - 1: CLS     'cursor left **
IF i$ = CHR$(0) + "M" THEN LET g = g + 1: CLS     'cursor right**

IF i$ = "8" THEN LET b = b - 1: CLS
IF i$ = "2" OR i$ = "5" THEN LET b = b + 1: CLS
IF i$ = "4" THEN LET c = c - 1: CLS
IF i$ = "6" THEN LET c = c + 1: CLS

IF i$ = "w" THEN GOSUB 20
IF i$ = "s" OR i$ = "x" THEN GOSUB 30
IF i$ = "a" THEN GOSUB 40
IF i$ = "d" THEN GOSUB 50

IF i$ = "o" THEN GOSUB 200
IF i$ = "l" OR i$ = "." THEN GOSUB 300
IF i$ = "k" THEN GOSUB 400
IF i$ = ";" THEN GOSUB 500

                          


IF i$ = "q" THEN END
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




20 FOR k = i - 2 TO 1 STEP -1
   COLOR 1, 0
   LOCATE k, g: PRINT "³"
   COLOR 7, 0
   IF k = b AND g = c THEN PRINT "Hit": SLEEP: GOTO 5
   FOR j = 1 TO 200
   NEXT j
   NEXT k
   CLS
   RETURN

30 FOR k = i + 2 TO 20
   COLOR 1, 0
   LOCATE k, g: PRINT "³"
   COLOR 7, 0
   IF k = b AND g = c THEN PRINT "Hit": SLEEP: GOTO 5
   FOR j = 1 TO 200
   NEXT j
   NEXT k
   CLS
   RETURN

40 FOR k = g - 2 TO 1 STEP -1
   COLOR 1, 0
   LOCATE i, k: PRINT "Ä "
   COLOR 7, 0
   IF i = b AND k = c THEN PRINT "Hit": SLEEP: GOTO 5
   FOR j = 1 TO 200
   NEXT j
   NEXT k
   CLS
   RETURN

50 FOR k = g + 2 TO 70
   COLOR 1, 0
   LOCATE i, k: PRINT " Ä"
   COLOR 7, 0
   IF i = b AND k = c THEN PRINT "Hit": SLEEP: GOTO 5
   FOR j = 1 TO 200
   NEXT j
   NEXT k
   CLS
   RETURN

200 FOR k = b - 2 TO 1 STEP -1
    COLOR 4, 0
    LOCATE k, c: PRINT "³"
    COLOR 7, 0
    IF k = i AND c = g THEN PRINT "Hit": SLEEP: GOTO 5
    FOR j = 1 TO 200
    NEXT j
    NEXT k
    CLS
    RETURN

300 FOR k = b + 2 TO 20
    COLOR 4, 0
   LOCATE k, c: PRINT "³"
   COLOR 7, 0
   IF k = i AND c = g THEN PRINT "Hit": SLEEP: GOTO 5
   FOR j = 1 TO 200
   NEXT j
   NEXT k
   CLS
   RETURN

400 FOR k = c - 2 TO 1 STEP -1
   COLOR 4, 0
   LOCATE b, k: PRINT "Ä "
   COLOR 7, 0
   IF b = i AND k = g THEN PRINT "Hit": SLEEP: GOTO 5
   FOR j = 1 TO 200
   NEXT j
   NEXT k
   CLS
   RETURN

500 FOR k = c + 2 TO 70
   COLOR 4, 0
   LOCATE b, k: PRINT " Ä"
   COLOR 7, 0
   IF b = i AND k = g THEN PRINT "Hit": SLEEP: GOTO 5
   FOR j = 1 TO 200
   NEXT j
   NEXT k
   CLS
   RETURN


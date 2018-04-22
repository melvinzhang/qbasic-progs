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

IF i$ = "w" THEN GOSUB 20
IF i$ = "s" OR i$ = "x" THEN GOSUB 30
IF i$ = "a" THEN GOSUB 40
IF i$ = "d" THEN GOSUB 50

IF i$ = "q" THEN END
IF i > 20 THEN LET i = 20
IF i < 1 THEN LET i = 1
IF g > 70 THEN LET g = 70
IF g < 1 THEN LET g = 1
LOCATE i, g: PRINT CHR$(5)
LOCATE b, c: PRINT "A"
GOTO 10




20 FOR k = i - 2 TO 1 STEP -1
   LET g = g
   LOCATE k, g: PRINT "³"
   IF k = b AND g = c THEN PRINT "Hit": SLEEP: GOTO 5
  
21 FOR j = 1 TO 400
   NEXT j
   NEXT k
   CLS
   RETURN

30 FOR k = i + 2 TO 20
   LOCATE k, g: PRINT "³"
   IF k = b AND g = c THEN PRINT "Hit": SLEEP: GOTO 5
   FOR j = 1 TO 400
   NEXT j
   NEXT k
   CLS
   RETURN

40 FOR k = g - 2 TO 1 STEP -1
   LOCATE i, k: PRINT "Ä "
   IF i = b AND k = c THEN PRINT "Hit": SLEEP: GOTO 5
   FOR j = 1 TO 400
   NEXT j
   NEXT k
   CLS
   RETURN

50 FOR k = g + 2 TO 70
   LOCATE i, k: PRINT " Ä"
   IF i = b AND k = c THEN PRINT "Hit": SLEEP: GOTO 5
   FOR j = 1 TO 400
   NEXT j
   NEXT k
   CLS
   RETURN


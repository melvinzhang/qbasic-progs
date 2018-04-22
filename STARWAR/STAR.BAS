CLS
LET i = 1
LET g = 1
LET b = 10
LET c = 20
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
LOCATE i, g: PRINT " * "
LOCATE b, c: PRINT "A"
GOTO 10




20 FOR k = i - 2 TO 1 STEP -1
   LOCATE k, g: PRINT " ³ ": PRINT "   "
   IF k + g = b + c THEN PRINT "Hit": SLEEP: END
   FOR j = 1 TO 600
   NEXT j
   NEXT k
   RETURN

30 FOR k = i + 2 TO 20
   LOCATE k, g: PRINT " ³ ": PRINT "   "
   IF k + g = b + c THEN PRINT "Hit": SLEEP: END
   FOR j = 1 TO 1000
   NEXT j
   NEXT k
   RETURN

40 FOR k = g - 2 TO 1 STEP -1
   LOCATE i, k: PRINT " Ä"
   IF i + k = b + c THEN PRINT "Hit": SLEEP: END
   FOR j = 1 TO 1000
   NEXT j
   NEXT k
   RETURN

50 FOR k = g + 2 TO 70
   LOCATE i, k: PRINT " Ä"
   IF i + k = b + c THEN PRINT "Hit": SLEEP: END
   FOR j = 1 TO 1000
   NEXT j
   NEXT k
   RETURN


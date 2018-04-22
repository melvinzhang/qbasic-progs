LET s = 0
LET gh = 1500
DIM b(5)
DIM c(5)


5 CLS
LET i = INT(RND * 19) + 1
LET g = INT(RND * 69) + 1

FOR vf = 1 TO 5
LET b(vf) = INT(RND * 19) + 1
LET c(vf) = INT(RND * 69) + 1
NEXT vf




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

IF i < 20 THEN LET i = 20

IF g > 70 THEN LET g = 70
IF g < 1 THEN LET g = 1
COLOR 2, 0
LOCATE i, g: PRINT CHR$(5)
COLOR 4, 0
FOR kl = 1 TO 5
LOCATE b(kl), c(kl): PRINT "*"
NEXT kl
COLOR 7, 0
LOCATE 1, 35
PRINT "Score ="; s
GOTO 10




20 FOR k = i - 2 TO 1 STEP -1
   COLOR 13, 0
   LOCATE k, g: PRINT "³"
   FOR v = 1 TO 5
   IF k = b(v) AND g = c(v) THEN LET s = s + 1: FOR i1 = 1 TO gh: NEXT i1: GOTO 5
   NEXT v
  
21 FOR j = 1 TO 90
   NEXT j
   NEXT k
   CLS
   RETURN

30 FOR k = i + 2 TO 20
   COLOR 13, 0
   LOCATE k, g: PRINT "³"
   FOR v = 1 TO 5
   IF k = b(v) AND g = c(v) THEN LET s = s + 1: FOR i2 = 1 TO gh: NEXT i2: GOTO 5
   NEXT v
   FOR j = 1 TO 90
   NEXT j
   NEXT k
   CLS
   RETURN

40 FOR k = g - 2 TO 1 STEP -1
   COLOR 12, 0
   LOCATE i, k: PRINT "Ä"
   FOR v = 1 TO 5
   IF i = b(v) AND k = c(v) THEN LET s = s + 1: FOR i2 = 1 TO gh: NEXT i2: GOTO 5
   NEXT v
   FOR j = 1 TO 50
   NEXT j
   NEXT k
   CLS
   RETURN

50 FOR k = g + 2 TO 70
   COLOR 12, 0
   LOCATE i, k: PRINT "Ä"
   FOR v = 1 TO 5
   IF i = b(v) AND k = c(v) THEN LET s = s + 1: FOR i2 = 1 TO gh: NEXT i2: GOTO 5
   NEXT v
   FOR j = 1 TO 50
   NEXT j
   NEXT k
   CLS
   RETURN


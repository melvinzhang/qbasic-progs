LET s = 0                                'score of spaceship
LET s1 = 0                               'score of spaceship1
LET gh = 2000                            'loop to see who has died
LET js = 1                               'spaces from the spaceship
LET d = 0                                'loop for moving
LET sh = 0                               'loop for shooting
LET hi = 23                              'screen height
LET WI = 80                              'screen width
LET f1 = 11                              'colour of laser
LET f2 = 12                              'colour of laser

'CLS
'INPUT "Do you wish to have an introduction"; h$
'IF h$ = "y" OR h$ = "Y" THEN GOSUB 10000 ELSE CLS : GOTO 6

5 CLS
6 RANDOMIZE TIMER
LET i = INT(RND * 19) + 1
LET g = INT(RND * 69) + 1
LET b = INT(RND * 19) + 1
LET c = INT(RND * 69) + 1

IF i = b OR g = c THEN GOTO 5

10 LET i$ = INKEY$
LET d = d + 1: LET sh = sh + 1
11 IF d = 100 THEN LET d = 0: GOSUB 80
IF sh = 150 THEN LET sh = 0: GOSUB 90

SELECT CASE i$

CASE CHR$(0) + "P": LET i = i + 1: CLS      'cursor down **
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

IF i = b AND g = c THEN GOTO 5

IF i > hi THEN LET i = hi
IF i < 1 THEN LET i = 1
IF g > WI THEN LET g = WI
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
   COLOR f1, 0
   LOCATE k, g: PRINT "³"
   IF k = b AND g = c THEN LET s = s + 1: FOR i1 = 1 TO gh: NEXT i1: GOTO 5
   FOR ke = 1 TO 16: LET i$ = INKEY$: NEXT ke
21 FOR j = 1 TO 90
   NEXT j
   NEXT k
   CLS
   RETURN

30 FOR k = i + js TO hi
   COLOR f1, 0
   LOCATE k, g: PRINT "³"
   IF k = b AND g = c THEN LET s = s + 1: FOR i2 = 1 TO gh: NEXT i2: GOTO 5
   FOR ke = 1 TO 16: LET i$ = INKEY$: NEXT ke
   FOR j = 1 TO 90
   NEXT j
   NEXT k
   CLS
   RETURN

40 FOR k = g - js TO 1 STEP -1
   COLOR f1, 0
   LOCATE i, k: PRINT "Ä"
   IF i = b AND k = c THEN LET s = s + 1: FOR i2 = 1 TO gh: NEXT i2: GOTO 5
   FOR ke = 1 TO 16: LET i$ = INKEY$: NEXT ke
   FOR j = 1 TO 50
   NEXT j
   NEXT k
   CLS
   RETURN

50 FOR k = g + js TO WI
   COLOR f1, 0
   LOCATE i, k: PRINT "Ä"
   IF i = b AND k = c THEN LET s = s + 1: FOR i2 = 1 TO gh: NEXT i2: GOTO 5
   FOR ke = 1 TO 16: LET i$ = INKEY$: NEXT ke
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
   COLOR 2, 0
   LOCATE i, g: PRINT CHR$(5)
   COLOR 4, 0
   LOCATE b, c: PRINT "A"
   COLOR 7, 0
   LOCATE 1, 35
   PRINT CHR$(5); " ="; s
   LOCATE 2, 35
   PRINT "A ="; s1
   RETURN


90 IF b > i AND g = c THEN GOTO 100
   IF b < i AND g = c THEN GOTO 200
   IF c > g AND b = i THEN GOTO 300
   IF c < g AND b = i THEN GOTO 400
   RETURN



100 FOR k = b - 1 TO 1 STEP -1
    COLOR f2, 0
    LOCATE k, c: PRINT "³"
    IF k = i AND c = g THEN LET s1 = s1 + 1: FOR i1 = 1 TO gh: NEXT i1: GOTO 5
    FOR j = 1 TO 90
    NEXT j
    NEXT k
    CLS
    GOTO 11
200 FOR k = b + 1 TO hi
   COLOR f2, 0
   LOCATE k, c: PRINT "³"
   IF k = i AND c = g THEN LET s1 = s1 + 1: FOR i2 = 1 TO gh: NEXT i2: GOTO 5
   FOR j = 1 TO 90
   NEXT j
   NEXT k
   CLS
   GOTO 11

300 FOR k = c - 1 TO 1 STEP -1
   COLOR f2, 0
   LOCATE b, k: PRINT "Ä"
   IF b = i AND k = g THEN LET s1 = s1 + 1: FOR i2 = 1 TO gh: NEXT i2: GOTO 5
   FOR j = 1 TO 50
   NEXT j
   NEXT k
   CLS
   GOTO 11

400 FOR k = c + 1 TO WI
   COLOR f2, 0
   LOCATE b, k: PRINT "Ä"
   IF b = i AND k = g THEN LET s1 = s1 + 1: FOR i2 = 1 TO gh: NEXT i2: GOTO 5
   FOR j = 1 TO 50
   NEXT j
   NEXT k
   CLS
   GOTO 11






10000 CLS
PRINT "                 INTRODUCTION                   "
PRINT
PRINT "Drifting through the inter-galatic galaxy, I ,"
PRINT "Captain Jaguar sense great danger lurking in"
PRINT "the darkness of space...."
PRINT
PRINT "Suddenly, out of the darkness came a shining ray of"
PRINT "laser light! I recongized this signal, it is my old"
PRINT "enemy, Star Striker. To rid the earth of this evil"
PRINT "fiend, I set myself on a mission to destroy him"
PRINT
PRINT "To move the space ship use the cursor keys"
PRINT "To shoot 1) up    :   w  "
PRINT "         2)down   :   s or x"
PRINT "         3)right  :   a"
PRINT "         4)left   :   d"
SLEEP
CLS
RETURN



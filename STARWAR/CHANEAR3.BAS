s = 0                                'score of spaceship
s1 = 0                               'score of spaceship1
gh = 2000                            'loop to see who has died
js = 1                               'spaces from the spaceship
d = 0                                'loop for moving
sh = 0                               'loop for shooting
hi = 23 - 1                          'screen height
WI = 80 - 2                          'screen width
f1 = 11
f2 = 12
dela = 100
dela1 = 1
kk = 0

'CLS
'INPUT "Do you wish to have an introduction"; h$
'IF h$ = "y" OR h$ = "Y" THEN GOSUB 10000 ELSE CLS : GOTO 6

5 CLS
6 RANDOMIZE TIMER
i = INT(RND * 17) + 1
g = INT(RND * 69) + 1
b = INT(RND * 17) + 1
c = INT(RND * 69) + 1

IF i = b OR g = c THEN GOTO 5

DO
i$ = INKEY$
d = d + 1: sh = sh + 1
11 IF d = 2 THEN d = 0: GOSUB 80
IF sh = 4 THEN sh = 0: GOSUB 90

SELECT CASE i$

CASE CHR$(0) + "P": i = i + 1: CLS      'cursor down **
CASE CHR$(0) + "H": i = i - 1: CLS      'cursor up   **
CASE CHR$(0) + "K": g = g - 1: CLS      'cursor left **
CASE CHR$(0) + "M": g = g + 1: CLS      'cursor right**

CASE " ": GOSUB 20
CASE "c": IF kk <> 1 THEN kk = 1 ELSE kk = 0

CASE "q": END
CASE "p": GOSUB 30000
CASE ELSE
END SELECT

IF i = b AND g = c THEN GOTO 5

IF i > hi THEN i = hi
IF i < 1 + 1 THEN i = 1 + 1
IF g > WI THEN g = WI
IF g < 1 + 2 THEN g = 1 + 1
COLOR 2, 0
LOCATE i, g: PRINT CHR$(5)
COLOR 4, 0
LOCATE b, c: PRINT "ê"
COLOR 7, 0
LOCATE 1, 35
PRINT CHR$(5); " ="; s
LOCATE 2, 35
PRINT "ê ="; s1
IF kk = 1 THEN GOSUB 20
LOOP

20 COLOR f1
   LOCATE i - 1, g: PRINT "³"
   FOR jk = 1 TO dela: NEXT jk
   LOCATE i - 1, g: PRINT " "
   LOCATE i + 1, g: PRINT "³"
   FOR jk = 1 TO dela: NEXT jk
   LOCATE i + 1, g: PRINT " "
   LOCATE i, g - 2: PRINT "ÄÄ"
   FOR jk = 1 TO dela: NEXT jk
   LOCATE i, g - 2: PRINT "  "
   LOCATE i, g + 1: PRINT "ÄÄ"
   FOR jk = 1 TO dela: NEXT jk
   LOCATE i, g + 1: PRINT "  "
   LOCATE i + 1, g + 1: PRINT "/"
   FOR jk = 1 TO dela: NEXT jk
   LOCATE i + 1, g + 1: PRINT " "
   LOCATE i + 1, g - 1: PRINT "\"
   FOR jk = 1 TO dela: NEXT jk
   LOCATE i + 1, g - 1: PRINT " "
   LOCATE i - 1, g - 1: PRINT "/"
   FOR jk = 1 TO dela: NEXT jk
   LOCATE i - 1, g - 1: PRINT " "
   LOCATE i - 1, g + 1: PRINT "\"
   FOR jk = 1 TO dela: NEXT jk
   LOCATE i - 1, g + 1: PRINT " "
   COLOR 7, 0
   IF i - 1 = b AND g = c THEN s = s + 1: GOTO 5
   IF i + 1 = b AND g = c THEN s = s + 1: GOTO 5
   IF i = b AND g - 1 = c THEN s = s + 1: GOTO 5
   IF i = b AND g + 1 = c THEN s = s + 1: GOTO 5
   IF i = b AND g - 2 = c THEN s = s + 1: GOTO 5
   IF i = b AND g + 2 = c THEN s = s + 1: GOTO 5
  
   IF i - 1 = b AND g - 1 = c THEN s = s + 1: GOTO 5
   IF i + 1 = b AND g + 1 = c THEN s = s + 1: GOTO 5
   IF i - 1 = b AND g + 1 = c THEN s = s + 1: GOTO 5
   IF i + 1 = b AND g - 1 = c THEN s = s + 1: GOTO 5
   RETURN




80 IF b > i THEN b = b - 1
   IF b < i THEN b = b + 1
   IF c > g THEN c = c - 1
   IF c < g THEN c = c + 1
   CLS
   COLOR 2, 0
   LOCATE i, g: PRINT CHR$(5)
   COLOR 4, 0
   LOCATE b, c: PRINT "ê"
   COLOR 7, 0
   LOCATE 1, 35
   PRINT CHR$(5); " ="; s
   LOCATE 2, 35
   PRINT "ê ="; s1
   RETURN


90 IF b > i AND g = c THEN GOTO 100
   IF b < i AND g = c THEN GOTO 200
   IF c > g AND b = i THEN GOTO 300
   IF c < g AND b = i THEN GOTO 400
   RETURN



100 FOR k = b - 1 TO 1 STEP -1
    COLOR f2, 0
    LOCATE k, c: PRINT "³"
    IF k = i AND c = g THEN s1 = s1 + 1: FOR i1 = 1 TO gh: NEXT i1: GOTO 5
    FOR j = 1 TO 90
    NEXT j
    NEXT k
    CLS
    GOTO 11
200 FOR k = b + 1 TO hi
   COLOR f2, 0
   LOCATE k, c: PRINT "³"
   IF k = i AND c = g THEN s1 = s1 + 1: FOR i2 = 1 TO gh: NEXT i2: GOTO 5
   FOR j = 1 TO 90
   NEXT j
   NEXT k
   CLS
   GOTO 11

300 FOR k = c - 1 TO 1 STEP -1
   COLOR f2, 0
   LOCATE b, k: PRINT "Ä"
   IF b = i AND k = g THEN s1 = s1 + 1: FOR i2 = 1 TO gh: NEXT i2: GOTO 5
   FOR j = 1 TO dela1
   NEXT j
   NEXT k
   CLS
   GOTO 11

400 FOR k = c + 1 TO WI
   COLOR f2, 0
   LOCATE b, k: PRINT "Ä"
   IF b = i AND k = g THEN s1 = s1 + 1: FOR i2 = 1 TO gh: NEXT i2: GOTO 5
   FOR j = 1 TO dela1
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

30000 vg$ = INKEY$
IF vg$ = "" THEN GOTO 30000 ELSE RETURN
END


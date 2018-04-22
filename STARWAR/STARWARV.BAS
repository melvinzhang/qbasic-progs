LET s = 0             'number of times a space ship is hit
LET s1 = 0            'number of times a space ship is hit
LET co = 2            'number of steps the laser to the spaceship
LET delay = 70        'delay so that you can see the (vertical) laser moving
LET delay1 = 10       'delay so that you can see the (horizontal) laser moving
LET col = 12          'color of laser
LET cal = 9           'color of laser
LET del1 = 2000       'delay so that you can see who was hit
LET back = 0          'background colour
LET hi = 23           'screen height
LET wi = 80           'screen width
LET ghj$ = CHR$(196)  'character used to represent a digonal misile
LET ju = 20           'let the tracer move this amount
LET yu = 1            'colour of digonal missle
LET yi = 2            'colour of digonal missle
LET n$ = ""
LET n1$ = "é"

5 CLS
RANDOMIZE TIMER
LET i = INT(RND * 19) + 1  'row of spaceship1
LET g = INT(RND * 69) + 1  'colume of spaceship1
LET b = INT(RND * 19) + 1  'row of spaceship2
LET c = INT(RND * 69) + 1  'colume of spaceship1
10 LET i$ = INKEY$
SELECT CASE i$
CASE CHR$(0) + "P": LET i = i + 1: CLS     'cursor down **
CASE CHR$(0) + "H": LET i = i - 1: CLS     'cursor up   **
CASE CHR$(0) + "K": LET g = g - 1: CLS     'cursor left **
CASE CHR$(0) + "M": LET g = g + 1: CLS     'cursor right**

CASE "b": LET n$ = " "
CASE "n": LET n$ = ""
CASE "g": LET n1$ = " "
CASE "h": LET n1$ = "é"

CASE "8": LET b = b - 1: CLS
CASE "2", "5": LET b = b + 1: CLS
CASE "4": LET c = c - 1: CLS
CASE "6": LET c = c + 1: CLS

CASE "w": GOSUB 20
CASE "s", "x": GOSUB 30
CASE "a": GOSUB 40
CASE "d": GOSUB 50

CASE "f": GOSUB 60

CASE "c": GOSUB 70
CASE "z": GOSUB 80
CASE "q": GOSUB 90
CASE "e": GOSUB 100


CASE "o": GOSUB 200
CASE "l", ".": GOSUB 300
CASE "k": GOSUB 400
CASE ";": GOSUB 500

CASE "'": GOSUB 600

CASE "/": GOSUB 700
CASE ",": GOSUB 800
CASE "i": GOSUB 900
CASE "p": GOSUB 1000


CASE "t": GOTO 1100
CASE ELSE
END SELECT

IF i > hi THEN LET i = hi
IF i < 1 THEN LET i = 1
IF g > wi THEN LET g = wi
IF g < 1 THEN LET g = 1
IF b > hi THEN LET b = hi
IF b < 1 THEN LET b = 1
IF c > wi THEN LET c = wi
IF c < 1 THEN LET c = 1
IF i = b AND g = c THEN LOCATE 1, 33: PRINT "**KABOOM**": SLEEP: LET s = s + 1: LET s1 = s1 + 1: GOTO 5
COLOR 2, back
LOCATE i, g: PRINT n$
COLOR 5, back
LOCATE b, c: PRINT n1$
COLOR 7, back
LOCATE 1, 35: PRINT CHR$(5); " ="; s
LOCATE 3, 35: PRINT CHR$(233); " ="; s1
GOTO 10




20 FOR k = i - co TO 1 STEP -1
   COLOR col, back
   LOCATE k, g: PRINT "³"
   IF k = b AND g = c THEN LET s = s + 1: FOR i = 1 TO del1: NEXT i: GOTO 5
   FOR ke = 1 TO 16: LET i$ = INKEY$: NEXT ke
   FOR j = 1 TO delay
   NEXT j
   NEXT k
   CLS
   RETURN

30 FOR k = i + co TO hi
   COLOR col, back
   LOCATE k, g: PRINT "³"
   IF k = b AND g = c THEN LET s = s + 1: FOR i = 1 TO del1: NEXT i: GOTO 5
   FOR ke = 1 TO 16: LET i$ = INKEY$: NEXT ke
   FOR j = 1 TO delay
   NEXT j
   NEXT k
   CLS
   RETURN

40 FOR k = g - co TO 1 STEP -1
   COLOR col, back
   LOCATE i, k: PRINT "Ä"
   IF i = b AND k = c THEN LET s = s + 1: FOR i = 1 TO del1: NEXT i: GOTO 5
   FOR ke = 1 TO 16: LET i$ = INKEY$: NEXT ke
   FOR j = 1 TO delay1
   NEXT j
   NEXT k
   CLS
   RETURN

50 FOR k = g + co TO wi
   COLOR col, back
   LOCATE i, k: PRINT "Ä"
   IF i = b AND k = c THEN LET s = s + 1: FOR i = 1 TO del1: NEXT i: GOTO 5
   FOR ke = 1 TO 16: LET i$ = INKEY$: NEXT ke
   FOR j = 1 TO delay1
   NEXT j
   NEXT k
   CLS
   RETURN

60 LET j3 = i: LET j4 = g: LET d1 = 0
61 LET d1 = d1 + 1
   IF d1 = ju THEN LET d1 = 0: LET jk = 0: CLS : GOTO 10
   IF j3 > b THEN LET j3 = j3 - 1
   IF j3 < b THEN LET j3 = j3 + 1
   IF j4 > c THEN LET j4 = j4 - 1
   IF j4 < c THEN LET j4 = j4 + 1
   IF j3 < 1 THEN LET j3 = 1
   IF j3 > hi THEN LET j3 = hi
   IF j4 < 1 THEN LET j4 = 1
   IF j4 > wi THEN LET j3 = wi
  
   IF j3 = b AND j4 = c THEN LET s = s + 1: FOR ig = 1 TO del1: NEXT ig: GOTO 5
   COLOR 14, back
   LOCATE j3, j4: PRINT ghj$
   FOR i1 = 1 TO 300
   NEXT i1
   GOTO 61

70 LET k5 = i: LET k6 = g
71 LET k5 = k5 + 1: LET k6 = k6 + 1
   IF k5 = b AND k6 = c THEN LET s = s + 1: FOR ig = 1 TO del1: NEXT ig: GOTO 5
   IF k5 > 20 THEN CLS : RETURN
   IF k6 > 80 THEN CLS : RETURN
   COLOR yu, back
   LOCATE k5, k6: PRINT "þ"
   FOR ke = 1 TO 16: LET i$ = INKEY$: NEXT ke
   FOR i5 = 1 TO 200: NEXT i5
   GOTO 71

80 LET k5 = i: LET k6 = g
81 LET k5 = k5 + 1: LET k6 = k6 - 1
   IF k5 = b AND k6 = c THEN LET s = s + 1: FOR ig = 1 TO del1: NEXT ig: GOTO 5
   IF k5 > 20 THEN CLS : RETURN
   IF k6 < 1 THEN CLS : RETURN
   COLOR yu, back
   LOCATE k5, k6: PRINT "þ"
   FOR ke = 1 TO 16: LET i$ = INKEY$: NEXT ke
   FOR i5 = 1 TO 200: NEXT i5
   GOTO 81

90 LET k5 = i: LET k6 = g
91 LET k5 = k5 - 1: LET k6 = k6 - 1
   IF k5 = b AND k6 = c THEN LET s = s + 1: FOR ig = 1 TO del1: NEXT ig: GOTO 5
   IF k5 < 1 THEN CLS : RETURN
   IF k6 < 1 THEN CLS : RETURN
   COLOR yu, back
   LOCATE k5, k6: PRINT "þ"
   FOR ke = 1 TO 16: LET i$ = INKEY$: NEXT ke
   FOR i5 = 1 TO 200: NEXT i5
   GOTO 91

100 LET k5 = i: LET k6 = g
101 LET k5 = k5 - 1: LET k6 = k6 + 1
   IF k5 = b AND k6 = c THEN LET s = s + 1: FOR ig = 1 TO del1: NEXT ig: GOTO 5
   IF k5 < 1 THEN CLS : RETURN
   IF k6 < 1 THEN CLS : RETURN
   COLOR yu, back
   LOCATE k5, k6: PRINT "þ"
   FOR ke = 1 TO 16: LET i$ = INKEY$: NEXT ke
   FOR i5 = 1 TO 200: NEXT i5
   GOTO 101







200 FOR k = b - co TO 1 STEP -1
    COLOR cal, back
    LOCATE k, c: PRINT "³"
    IF k = i AND c = g THEN LET s1 = s1 + 1: FOR i = 1 TO del1: NEXT i: GOTO 5
    FOR ke = 1 TO 16: LET i$ = INKEY$: NEXT ke
    FOR j = 1 TO delay
    NEXT j
    NEXT k
    CLS
    RETURN

300 FOR k = b + co TO hi
    COLOR cal, back
    LOCATE k, c: PRINT "³"
    IF k = i AND c = g THEN LET s1 = s1 + 1: FOR i = 1 TO del1: NEXT i: GOTO 5
    FOR ke = 1 TO 16: LET i$ = INKEY$: NEXT ke
    FOR j = 1 TO delay
    NEXT j
    NEXT k
    CLS
    RETURN

400 FOR k = c - co TO 1 STEP -1
   COLOR cal, back
   LOCATE b, k: PRINT "Ä"
   IF b = i AND k = g THEN LET s1 = s1 + 1: FOR i = 1 TO del1: NEXT i: GOTO 5
   FOR ke = 1 TO 16: LET i$ = INKEY$: NEXT ke
   FOR j = 1 TO delay1
   NEXT j
   NEXT k
   CLS
   RETURN

500 FOR k = c + co TO wi
   COLOR cal, back
   LOCATE b, k: PRINT "Ä"
   IF b = i AND k = g THEN LET s1 = s1 + 1: FOR i = 1 TO del1: NEXT i: GOTO 5
   FOR ke = 1 TO 16: LET i$ = INKEY$: NEXT ke
   FOR j = 1 TO delay1
   NEXT j
   NEXT k
   CLS
   RETURN

600 LET j1 = b: LET j2 = c: LET d1 = 0
610 LET d1 = d1 + 1
   IF d1 = ju THEN LET d1 = 0: CLS : GOTO 10
   IF j1 > i THEN LET j1 = j1 - 1
   IF j1 < i THEN LET j1 = j1 + 1
   IF j2 > g THEN LET j2 = j2 - 1
   IF j2 < g THEN LET j2 = j2 + 1
   IF j1 < 1 THEN LET j1 = 1
   IF j1 > hi THEN LET j1 = hi
   IF j2 < 1 THEN LET j2 = 1
   IF j2 > wi THEN LET j1 = wi
 
   IF j1 = i AND j2 = g THEN LET s1 = s1 + 1: FOR i = 1 TO del1: NEXT i: GOTO 5
   COLOR 12, back
   LOCATE j1, j2: PRINT ghj$
   FOR i2 = 1 TO 300
   NEXT i2
   GOTO 610

700 LET k5 = b: LET k6 = c
710 LET k5 = k5 + 1: LET k6 = k6 + 1
   IF k5 = i AND k6 = g THEN LET s1 = s1 + 1: FOR ig = 1 TO del1: NEXT ig: GOTO 5
   FOR ke = 1 TO 16: LET i$ = INKEY$: NEXT ke
   IF k5 > 20 THEN CLS : RETURN
   IF k6 > 80 THEN CLS : RETURN
   COLOR yi, back
   LOCATE k5, k6: PRINT "þ"
   FOR ke = 1 TO 16: LET i$ = INKEY$: NEXT ke
   FOR i5 = 1 TO 200: NEXT i5
   GOTO 710

800 LET k5 = b: LET k6 = c
810 LET k5 = k5 + 1: LET k6 = k6 - 1
   IF k5 = i AND k6 = g THEN LET s1 = s1 + 1: FOR ig = 1 TO del1: NEXT ig: GOTO 5
   FOR ke = 1 TO 16: LET i$ = INKEY$: NEXT ke
   IF k5 > 20 THEN CLS : RETURN
   IF k6 < 1 THEN CLS : RETURN
   COLOR yi, back
   LOCATE k5, k6: PRINT "þ"
   FOR ke = 1 TO 16: LET i$ = INKEY$: NEXT ke
   FOR i5 = 1 TO 200: NEXT i5
   GOTO 810

900 LET k5 = b: LET k6 = c
910 LET k5 = k5 - 1: LET k6 = k6 - 1
   IF k5 = i AND k6 = g THEN LET s1 = s1 + 1: FOR ig = 1 TO del1: NEXT ig: GOTO 5
   FOR ke = 1 TO 16: LET i$ = INKEY$: NEXT ke
   IF k5 < 1 THEN CLS : RETURN
   IF k6 < 1 THEN CLS : RETURN
   COLOR yi, back
   LOCATE k5, k6: PRINT "þ"
   FOR ke = 1 TO 16: LET i$ = INKEY$: NEXT ke
   FOR i5 = 1 TO 200: NEXT i5
   GOTO 910

1000 LET k5 = b: LET k6 = c
1010 LET k5 = k5 - 1: LET k6 = k6 + 1
   IF k5 = i AND k6 = g THEN LET s1 = s1 + 1: FOR ig = 1 TO del1: NEXT ig: GOTO 5
   FOR ke = 1 TO 16: LET i$ = INKEY$: NEXT ke
   IF k5 < 1 THEN CLS : RETURN
   IF k6 < 1 THEN CLS : RETURN
   COLOR yi, back
   LOCATE k5, k6: PRINT "þ"
   FOR ke = 1 TO 16: LET i$ = INKEY$: NEXT ke
   FOR i5 = 1 TO 200: NEXT i5
   GOTO 1010




1100 CLS
     COLOR 7, back
     LOCATE 10, 35
     PRINT CHR$(5); " = "; s
     LOCATE 12, 35
     PRINT CHR$(233); " = "; s1
     IF s1 > s THEN LOCATE 14, 34: PRINT CHR$(233); " WINS !!"
     IF s > s1 THEN LOCATE 14, 34: PRINT CHR$(5); " WINS !!"
     IF s = s1 THEN LOCATE 14, 32: PRINT "IT IS A TIE !!"

    
    COLOR 4, back
    a$ = "*    *    *    *    *    *    *    *    *    *    *    *    *    *    *    *    *    "
    WHILE INKEY$ <> "": WEND 'Clear keyboard buffer

    WHILE INKEY$ = ""
        FOR a = 1 TO 5
            LOCATE 1, 1                             'print horizontal sparkles
            PRINT MID$(a$, a, 80);
            LOCATE 22, 1
            PRINT MID$(a$, 6 - a, 80);

            FOR b = 2 TO 21                         'Print Vertical sparkles
                c = (a + b) MOD 5
                IF c = 1 THEN
                    LOCATE b, 80
                    PRINT "*";
                    LOCATE 23 - b, 1
                    PRINT "*";
                ELSE
                    LOCATE b, 80
                    PRINT " ";
                    LOCATE 23 - b, 1
                    PRINT " ";
                END IF
            NEXT b
        NEXT a
    WEND
    COLOR 7, back
    END







CLEAR , , 3000
s = 0             'number of times a space ship is hit
s1 = 0            'number of times a space ship is hit
co = 2            'number of steps the laser to the spaceship
delay = 70        'delay so that you can see the (vertical) laser moving
delay1 = 10       'delay so that you can see the (horizontal) laser moving
col = 12          'color of laser
cal = 9           'color of laser
del1 = 2000       'delay so that you can see who was hit
back = 0          'background colour
hi = 22           'screen height
wi = 79           'screen width
ghj$ = CHR$(196)  'character used to represent a digonal misile
ju = 20           'the tracer move this amount
yu = 1            'colour of digonal missle
yi = 2            'colour of digonal missle
n$ = ""          'represents player 1
n1$ = "é"         'represents player 2
WALL = 178
wall1 = 219

5 CLS
RANDOMIZE TIMER
i = INT(RND * 19) + 1  'row of spaceship1
g = INT(RND * 69) + 1  'colume of spaceship1
b = INT(RND * 19) + 1  'row of spaceship2
c = INT(RND * 69) + 1  'colume of spaceship1
10 i$ = LCASE$(INKEY$)
SELECT CASE i$
CASE CHR$(0) + "p": LOCATE i, g: PRINT " ": IF SCREEN(i + 1, g) <> 32 THEN GOTO 10 ELSE i = i + 1  'cursor down **
CASE CHR$(0) + "h": LOCATE i, g: PRINT " ": IF SCREEN(i - 1, g) <> 32 THEN GOTO 10 ELSE i = i - 1  'cursor down **
CASE CHR$(0) + "k": LOCATE i, g: PRINT " ": IF SCREEN(i, g - 1) <> 32 THEN GOTO 10 ELSE g = g - 1 'cursor down **
CASE CHR$(0) + "m": LOCATE i, g: PRINT " ": IF SCREEN(i, g + 1) <> 32 THEN GOTO 10 ELSE g = g + 1 'cursor down **

CASE "v": IF n$ = " " THEN n$ = "" ELSE n$ = " "
CASE "m": IF n1$ = " " THEN n1$ = "é" ELSE n1$ = " "

CASE "8":       LOCATE b, c: PRINT " ": IF SCREEN(b - 1, c) <> 32 THEN GOTO 10 ELSE b = b - 1
CASE "2", "5":  LOCATE b, c: PRINT " ": IF SCREEN(b + 1, c) <> 32 THEN GOTO 10 ELSE b = b + 1
CASE "4":       LOCATE b, c: PRINT " ": IF SCREEN(b, c - 1) <> 32 THEN GOTO 10 ELSE c = c - 1
CASE "6":       LOCATE b, c: PRINT " ": IF SCREEN(b, c + 1) <> 32 THEN GOTO 10 ELSE c = c + 1

CASE "w": GOSUB 20
CASE "s", "x": GOSUB 30
CASE "a": GOSUB 40
CASE "d": GOSUB 50

CASE "c": LOCATE i + 1, g + 1: PRINT CHR$(wall1)
CASE "z": LOCATE i + 1, g - 1: PRINT CHR$(wall1)
CASE "q": LOCATE i - 1, g - 1: PRINT CHR$(wall1)
CASE "e": LOCATE i - 1, g + 1: PRINT CHR$(wall1)

CASE "o": GOSUB 200
CASE "l", ".": GOSUB 300
CASE "k": GOSUB 400
CASE ";": GOSUB 500

CASE "/": LOCATE b + 1, c + 1: PRINT CHR$(WALL)
CASE ",": LOCATE b + 1, c - 1: PRINT CHR$(WALL)
CASE "i": LOCATE b - 1, c - 1: PRINT CHR$(WALL)
CASE "p": LOCATE b - 1, c + 1: PRINT CHR$(WALL)

CASE "": GOTO 1100
CASE ELSE
END SELECT

IF i > hi THEN i = hi
IF i < 2 THEN i = 2
IF g > wi THEN g = wi
IF g < 2 THEN g = 2
IF b > hi THEN b = hi
IF b < 2 THEN b = 2
IF c > wi THEN c = wi
IF c < 2 THEN c = 2
IF i = b AND g = c THEN LOCATE 1, 33: PRINT "**KABOOM**": SLEEP: s = s + 1: s1 = s1 + 1: GOTO 5
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
   IF SCREEN(k, g) = WALL THEN RETURN
   LOCATE k, g: PRINT "³"
   IF k = b AND g = c THEN s = s + 1: FOR i = 1 TO del1: NEXT i: GOTO 5
   FOR ke = 1 TO 16: i$ = INKEY$: NEXT ke
   FOR j = 1 TO delay
   NEXT j
   LOCATE k, g: PRINT " "
   NEXT k
   FOR k = i - co TO 1 STEP -1
   LOCATE k, g: PRINT " "
   NEXT
   RETURN

30 FOR k = i + co TO hi
   COLOR col, back
   IF SCREEN(k, g) = WALL THEN RETURN
   LOCATE k, g: PRINT "³"
   IF k = b AND g = c THEN s = s + 1: FOR i = 1 TO del1: NEXT i: GOTO 5
   FOR ke = 1 TO 16: i$ = INKEY$: NEXT ke
   FOR j = 1 TO delay
   NEXT j
   LOCATE k, g: PRINT " "
   NEXT k
   FOR k = i + co TO hi
   LOCATE k, g: PRINT " "
   NEXT
   RETURN

40 FOR k = g - co TO 1 STEP -1
   COLOR col, back
   IF SCREEN(i, k) = WALL THEN RETURN
   LOCATE i, k: PRINT "Ä"
   IF i = b AND k = c THEN s = s + 1: FOR i = 1 TO del1: NEXT i: GOTO 5
   FOR ke = 1 TO 16: i$ = INKEY$: NEXT ke
   FOR j = 1 TO delay1
   NEXT j
   LOCATE i, k: PRINT " "
   NEXT k
   FOR k = g - co TO 1 STEP -1
   LOCATE i, k: PRINT " "
   NEXT
   RETURN

50 FOR k = g + co TO wi
   COLOR col, back
   IF SCREEN(i, k) = WALL THEN RETURN
   LOCATE i, k: PRINT "Ä"
   IF i = b AND k = c THEN s = s + 1: FOR i = 1 TO del1: NEXT i: GOTO 5
   FOR ke = 1 TO 16: i$ = INKEY$: NEXT ke
   FOR j = 1 TO delay1
   NEXT j
   LOCATE i, k: PRINT " "
   NEXT k
   FOR k = g + co TO wi
   LOCATE i, k: PRINT " "
   NEXT
   RETURN

70 k5 = i: k6 = g
71 k5 = k5 + 1: k6 = k6 + 1
   IF k5 = b AND k6 = c THEN s = s + 1: FOR ig = 1 TO del1: NEXT ig: GOTO 5
   IF k5 > 20 THEN CLS : RETURN
   IF k6 > 80 THEN CLS : RETURN
   COLOR yu, back
   LOCATE k5, k6: PRINT "þ"
   FOR ke = 1 TO 16: i$ = INKEY$: NEXT ke
   FOR i5 = 1 TO 200: NEXT i5
   GOTO 71

80 k5 = i: k6 = g
81 k5 = k5 + 1: k6 = k6 - 1
   IF k5 = b AND k6 = c THEN s = s + 1: FOR ig = 1 TO del1: NEXT ig: GOTO 5
   IF k5 > 20 THEN CLS : RETURN
   IF k6 < 1 THEN CLS : RETURN
   COLOR yu, back
   LOCATE k5, k6: PRINT "þ"
   FOR ke = 1 TO 16: i$ = INKEY$: NEXT ke
   FOR i5 = 1 TO 200: NEXT i5
   GOTO 81

90 k5 = i: k6 = g
91 k5 = k5 - 1: k6 = k6 - 1
   IF k5 = b AND k6 = c THEN s = s + 1: FOR ig = 1 TO del1: NEXT ig: GOTO 5
   IF k5 < 1 THEN CLS : RETURN
   IF k6 < 1 THEN CLS : RETURN
   COLOR yu, back
   LOCATE k5, k6: PRINT "þ"
   FOR ke = 1 TO 16: i$ = INKEY$: NEXT ke
   FOR i5 = 1 TO 200: NEXT i5
   GOTO 91

100 k5 = i: k6 = g
101 k5 = k5 - 1: k6 = k6 + 1
   IF k5 = b AND k6 = c THEN s = s + 1: FOR ig = 1 TO del1: NEXT ig: GOTO 5
   IF k5 < 1 THEN CLS : RETURN
   IF k6 < 1 THEN CLS : RETURN
   COLOR yu, back
   LOCATE k5, k6: PRINT "þ"
   FOR ke = 1 TO 16: i$ = INKEY$: NEXT ke
   FOR i5 = 1 TO 200: NEXT i5
   GOTO 101


200 FOR k = b - co TO 1 STEP -1
    COLOR cal, back
    IF SCREEN(k, c) = wall1 THEN RETURN
    LOCATE k, c: PRINT "³"
    IF k = i AND c = g THEN s1 = s1 + 1: FOR i = 1 TO del1: NEXT i: GOTO 5
    FOR ke = 1 TO 16: i$ = INKEY$: NEXT ke
    FOR j = 1 TO delay
    NEXT j
    LOCATE k, c: PRINT " "
    NEXT k
    FOR k = b - co TO 1 STEP -1
    LOCATE k, c: PRINT " "
    NEXT
    RETURN

300 FOR k = b + co TO hi
    COLOR cal, back
    IF SCREEN(k, c) = wall1 THEN RETURN
    LOCATE k, c: PRINT "³"
    IF k = i AND c = g THEN s1 = s1 + 1: FOR i = 1 TO del1: NEXT i: GOTO 5
    FOR ke = 1 TO 16: i$ = INKEY$: NEXT ke
    FOR j = 1 TO delay
    NEXT j
    LOCATE k, c: PRINT " "
    NEXT k
    FOR k = b + co TO hi
    LOCATE k, c: PRINT " "
    NEXT
    RETURN

400 FOR k = c - co TO 1 STEP -1
    COLOR cal, back
    IF SCREEN(b, k) = wall1 THEN RETURN
    LOCATE b, k: PRINT "Ä"
    IF b = i AND k = g THEN s1 = s1 + 1: FOR i = 1 TO del1: NEXT i: GOTO 5
    FOR ke = 1 TO 16: i$ = INKEY$: NEXT ke
    FOR j = 1 TO delay1
    NEXT j
    LOCATE b, k: PRINT " "
    NEXT k
    FOR k = c - co TO 1 STEP -1
    LOCATE b, k: PRINT " "
    NEXT
    RETURN

500 FOR k = c + co TO wi
    COLOR cal, back
    IF SCREEN(b, k) = wall1 THEN RETURN
    LOCATE b, k: PRINT "Ä"
    IF b = i AND k = g THEN s1 = s1 + 1: FOR i = 1 TO del1: NEXT i: GOTO 5
    FOR ke = 1 TO 16: i$ = INKEY$: NEXT ke
    FOR j = 1 TO delay1
    NEXT j
    LOCATE b, k: PRINT " "
    NEXT k
    FOR k = c + co TO wi
    LOCATE b, k: PRINT " "
    NEXT
    RETURN

700 k5 = b: k6 = c
710 k5 = k5 + 1: k6 = k6 + 1
    IF k5 = i AND k6 = g THEN s1 = s1 + 1: FOR ig = 1 TO del1: NEXT ig: GOTO 5
    FOR ke = 1 TO 16: i$ = INKEY$: NEXT ke
    IF k5 > 20 THEN CLS : RETURN
    IF k6 > 80 THEN CLS : RETURN
    COLOR yi, back
    LOCATE k5, k6: PRINT "þ"
    FOR ke = 1 TO 16: i$ = INKEY$: NEXT ke
    FOR i5 = 1 TO 200: NEXT i5
    GOTO 710

800 k5 = b: k6 = c
810 k5 = k5 + 1: k6 = k6 - 1
    IF k5 = i AND k6 = g THEN s1 = s1 + 1: FOR ig = 1 TO del1: NEXT ig: GOTO 5
    FOR ke = 1 TO 16: i$ = INKEY$: NEXT ke
    IF k5 > 20 THEN CLS : RETURN
    IF k6 < 1 THEN CLS : RETURN
    COLOR yi, back
    LOCATE k5, k6: PRINT "þ"
    FOR ke = 1 TO 16: i$ = INKEY$: NEXT ke
    FOR i5 = 1 TO 200: NEXT i5
    GOTO 810

900 k5 = b: k6 = c
910 k5 = k5 - 1: k6 = k6 - 1
    IF k5 = i AND k6 = g THEN s1 = s1 + 1: FOR ig = 1 TO del1: NEXT ig: GOTO 5
    FOR ke = 1 TO 16: i$ = INKEY$: NEXT ke
    IF k5 < 1 THEN CLS : RETURN
    IF k6 < 1 THEN CLS : RETURN
    COLOR yi, back
    LOCATE k5, k6: PRINT "þ"
    FOR ke = 1 TO 16: i$ = INKEY$: NEXT ke
    FOR i5 = 1 TO 200: NEXT i5
    GOTO 910
  
1000 k5 = b: k6 = c
1010 k5 = k5 - 1: k6 = k6 + 1
    IF k5 = i AND k6 = g THEN s1 = s1 + 1: FOR ig = 1 TO del1: NEXT ig: GOTO 5
    FOR ke = 1 TO 16: i$ = INKEY$: NEXT ke
    IF k5 < 1 THEN CLS : RETURN
    IF k6 < 1 THEN CLS : RETURN
    COLOR yi, back
    LOCATE k5, k6: PRINT "þ"
    FOR ke = 1 TO 16: i$ = INKEY$: NEXT ke
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


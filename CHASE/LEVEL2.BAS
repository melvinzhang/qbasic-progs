REM LET i = 100
RANDOMIZE TIMER
LET i = INT(RND * 16 + 1) * 10
LET g = INT(RND * 28 + 1) * 10
REM LET g = 150
LET m = 0
LET w = INT(RND * 28 + 1) * 10
LET e = INT(RND * 16 + 1) * 10
LET s = 0
LET a = 130
CLS
INPUT "Input chaser 1 speed (No of points to move per turn) Default = 5"; z
INPUT "Input chaser 2 speed (No of points to move per turn) Default = 5"; n
INPUT "Input your speed (No of points to move per turn) Default = 5"; u
RANDOMIZE TIMER
LET o = INT(RND * 28 + 1) * 10
LET p = INT(RND * 16 + 1) * 10
LET j = INT(RND * 28 + 1) * 10
LET k = INT(RND * 16 + 1) * 10
REM LET o = 200
REM LET p = 100
REM LET j = 60
REM LET k = 25
CLS
SCREEN 1
10 LET b$ = INKEY$
LET s = s + 1
IF s = a THEN GOTO 20
IF b$ = CHR$(0) + "P" THEN LET i = i + u: CLS : LET m = m + 1: GOTO 20
IF b$ = CHR$(0) + "H" THEN LET i = i - u: CLS : LET m = m + 1: GOTO 20
IF b$ = CHR$(0) + "M" THEN LET g = g + u: CLS : LET m = m + 1: GOTO 20
IF b$ = CHR$(0) + "K" THEN LET g = g - u: CLS : LET m = m + 1: GOTO 20
IF b$ = "q" THEN END
IF b$ = "g" THEN GOTO 20
IF b$ = "w" THEN LET e = e - u: CLS : LET m = m + 1: GOTO 30
IF b$ = "s" THEN LET e = e + u: CLS : LET m = m + 1: GOTO 30
IF b$ = "d" THEN LET w = w + u: CLS : LET m = m + 1: GOTO 30
IF b$ = "a" THEN LET w = w - u: CLS : LET m = m + 1: GOTO 30
IF i > 180 THEN LET i = 180
IF i < 5 THEN LET i = 5
IF g > 280 THEN LET g = 280
IF g < 5 THEN LET g = 5
IF e > 180 THEN LET e = 180
IF e < 5 THEN LET e = 5
IF w > 280 THEN LET w = 280
IF w < 5 THEN LET w = 5
CIRCLE (w, e), 8
CIRCLE (g, i), 8
15 GOTO 10
20 CIRCLE (o, p), 6
CIRCLE (j, k), 6
IF o < g THEN LET o = o + z
IF o > g THEN LET o = o - z
IF p < i THEN LET p = p + z
IF p > i THEN LET p = p - z
IF o = j AND p = k THEN CLS : PRINT "Moves is "; m: LOCATE 2, 1: PRINT "Do you wish to enter level 3": INPUT f$: IF f$ = "y" THEN RUN "d:\jf2\level3.bas" ELSE END
IF INKEY$ = "q" THEN END
IF s = a THEN LET s = 0: GOTO 30
GOTO 15
30 CIRCLE (j, k), 6
CIRCLE (o, p), 6
IF j < w THEN LET j = j + n
IF j > w THEN LET j = j - n
IF k < e THEN LET k = k + n
IF k > e THEN LET k = k - n
IF o = g AND p = i AND j = w AND k = e THEN SCREEN 2: SCREEN 0: CLS : LOCATE 10, 30: PRINT "YOU HAVE FAILED": FOR i = 1 TO 1000: NEXT i: END
IF o = j AND p = k THEN CLS : PRINT "Moves is "; m: LOCATE 2, 1: PRINT "Do you wish to enter level 3": INPUT f$: IF f$ = "y" THEN RUN "d:\jf2\level3.bas" ELSE END
IF INKEY$ = "q" THEN END
GOTO 10

        


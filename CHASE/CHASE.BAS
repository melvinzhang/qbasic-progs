LET i = 100
LET g = 150
LET m = 0
LET s = 0
LET l = 0
CLS
PRINT "The objective of the game is to escape the two chasers"
SLEEP 2
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
REM IF s = 65 THEN GOTO 60
IF s = 45 THEN LET s = 0: GOTO 20   'speed of the chasers automatic movement
IF b$ = CHR$(0) + "P" THEN LET i = i + u: CLS : LET m = m + 1: GOTO 20
IF b$ = CHR$(0) + "H" THEN LET i = i - u: CLS : LET m = m + 1: GOTO 20
IF b$ = CHR$(0) + "M" THEN LET g = g + u: CLS : LET m = m + 1: GOTO 20
IF b$ = CHR$(0) + "K" THEN LET g = g - u: CLS : LET m = m + 1: GOTO 20
IF b$ = "q" THEN END
IF b$ = "g" THEN GOTO 20
IF b$ = "s" THEN LET m = m + 1: GOTO 60
IF b$ = "p" THEN STOP
IF i > 180 THEN LET i = 5   '
IF i < 5 THEN LET i = 180
IF g > 280 THEN LET g = 5
IF g < 5 THEN LET g = 280    '
CIRCLE (g, i), 6
15 GOTO 10
20 CIRCLE (o, p), 6
LET l = l + 1
IF l = 5 THEN LET l = 0: CLS    ' automatic erase the circles
IF o < g THEN LET o = o + z
IF o > g THEN LET o = o - z
IF p < i THEN LET p = p + z
IF p > i THEN LET p = p - z
   
IF p > 180 THEN LET p = 180   '
IF p < 5 THEN LET p = 5
IF o > 280 THEN LET o = 180
IF o < 5 THEN LET o = 5

IF INKEY$ = "q" THEN END
CIRCLE (j, k), 6

IF j < g THEN LET j = j + n
IF j > g THEN LET j = j - n
IF k < i THEN LET k = k + n
IF k > i THEN LET k = k - n

IF o = j AND p = k AND p = i AND o = g THEN CLS : SCREEN 2: SCREEN 0: PRINT "Moves is "; m: PRINT : INPUT "Do you wish to enter level 2"; c$: IF c$ = "y" THEN RUN "D:\jf2\Level2.bas" ELSE END
GOTO 10
60 LET i = INT(RND * 18 + 1) * 10
LET g = INT(RND * 28 + 1) * 10
GOTO 15






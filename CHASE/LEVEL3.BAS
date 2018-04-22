LET i = 100
LET g = 150
LET m = 0
LET s = 0
CLS
PRINT "The objective of the game is to escape the two chasers"
SLEEP 2
CLS
INPUT "Input chaser 1 speed (No of points to move per turn) Default = 5"; z
INPUT "Input your speed (No of points to move per turn) Default = 5"; u
RANDOMIZE TIMER

LET o = 150
LET p = 90
REM LET o = INT(RND * 28 + 1) * 10
REM LET p = INT(RND * 16 + 1) * 10
REM LET o = 200
REM LET p = 100  
REM LET j = 60
REM LET k = 25
CLS
SCREEN 1
10 LET b$ = INKEY$
LET s = s + 1
LET z = INT(RND * 10)
IF s = 25 THEN LET s = 0: GOTO 20   'speed of the chasers automatic movement
IF b$ = CHR$(0) + "P" THEN LET i = i + u: CLS : LET m = m + 1: GOTO 20
IF b$ = CHR$(0) + "H" THEN LET i = i - u: CLS : LET m = m + 1: GOTO 20
IF b$ = CHR$(0) + "M" THEN LET g = g + u: CLS : LET m = m + 1: GOTO 20
IF b$ = CHR$(0) + "K" THEN LET g = g - u: CLS : LET m = m + 1: GOTO 20
IF b$ = "q" THEN END
IF b$ = "g" THEN GOTO 20
IF i > 180 THEN LET i = 180
IF i < 5 THEN LET i = 5
IF g > 280 THEN LET g = 280
IF g < 5 THEN LET g = 5
CIRCLE (g, i), 6
15 GOTO 10
20 CIRCLE (o, p), 6
IF o > g THEN LET o = o + z
IF o < g THEN LET o = o - z
IF p > i THEN LET p = p + z
IF p < i THEN LET p = p - z

IF p > 180 THEN LET p = 180
IF p < 5 THEN LET p = 5
IF o > 280 THEN LET o = 280
IF o < 5 THEN LET o = 5

REM IF o = 280 THEN LET o = 5 'special
REM IF o = 5 THEN LET o = 280
REM IF p = 180 THEN LET o = 5
REM IF p = 5 THEN LET o = 180 'special


IF INKEY$ = "q" THEN END
IF o = 280 OR p = 180 OR o = 5 OR p = 5 THEN PRINT "END": END
GOTO 10






DIM ship(100)
CLS
SCREEN 1
PSET (150, 100)    '150 = left,right  100 = up,down
DRAW "C2g5r10h5u2"
GET (140, 90)-(160, 110), ship
CLS
in:
LET i$ = INKEY$
SELECT CASE i$
CASE "w": LET m = m - 1
CASE "s", "x": LET m = m + 1
CASE "a": LET n = n - 1
CASE "d": LET n = n + 1
CASE "l": LET k = INT(RND * 280): LET j = INT(RND * 170): CLS
CASE " ": GOSUB shot
CASE "q": END
CASE ELSE
END SELECT
IF n > 5 THEN LET n = 5
IF n < -5 THEN LET n = -5
IF m > 5 THEN LET m = 5
IF m < -5 THEN LET m = -5
LET k = k + n
LET j = j + m
IF j < 0 THEN LET j = 170: CLS
IF j > 170 THEN LET j = 0: CLS
IF k < 0 THEN LET k = 280: CLS
IF k > 280 THEN LET k = 0: CLS
FOR i = 1 TO 100: NEXT i
LOCATE 1, 1: PRINT n
LOCATE 2, 1: PRINT m
PUT (k, j), ship, PSET
GOTO in

shot:
FOR x = j TO 0 STEP -2
LET k1 = k + 10
PSET (k1, x)
NEXT x
CLS
RETURN






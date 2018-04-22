SCREEN 1
DIM ship(100)
DIM circle1(100)
DIM circle2(100)
DIM circle3(100)
PSET (100, 100)
DRAW "r10f5d3g5u5l6f4l3h7u5r1"
PSET (100, 50)
DRAW "d5g6l3h4u3e4r8"
PSET (50, 100)
DRAW "u4r3e5r3f4d6g4l4h3l4u1"
GET (95, 100)-(120, 120), circle1
GET (85, 50)-(120, 75), circle2
GET (48, 85)-(70, 115), circle3
CLS
PUT (50, 100), circle3
PUT (150, 100), circle2
PUT (110, 50), circle1

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







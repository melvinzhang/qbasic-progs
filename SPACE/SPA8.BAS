game:
RANDOMIZE TIMER
LET k = INT(RND * 280)
LET j = INT(RND * 170)

LET a = INT(RND * 280) '3
LET b = INT(RND * 170)
LET c = INT(RND * 280) '2
LET d = INT(RND * 170)
LET e = INT(RND * 280) '1
LET f = INT(RND * 170)

LET g = INT(RND * 280)
LET h = INT(RND * 170)

LET o = INT(RND * 280)
LET p = INT(RND * 170)

LET q = INT(RND * 280)
LET r = INT(RND * 170)
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
SCREEN 1
PSET (150, 100)    '150 = left,right  100 = up,down
DRAW "C2g5r10h5u2"
GET (140, 90)-(160, 110), ship
CLS

in:
LET i$ = INKEY$
SELECT CASE i$
CASE CHR$(0) + "H": LET m = m - 1
CASE CHR$(0) + "P": LET m = m + 1
CASE CHR$(0) + "K": LET n = n - 1
CASE CHR$(0) + "M": LET n = n + 1
CASE "l": LET k = INT(RND * 280): LET j = INT(RND * 170): CLS
CASE "e": LET m = 0: LET n = 0
CASE "p": GOSUB p:
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
LOCATE 1, 1: PRINT "Score = "; s
PUT (k, j), ship, PSET

RANDOMIZE TIMER
LET a = a + INT(RND * 2) - 1
LET b = b + INT(RND * 2) - 3
LET c = c + INT(RND * 2) - 4
LET d = d + INT(RND * 2) - 2
LET e = e + INT(RND * 2) - 2
LET f = f + INT(RND * 2) - 1
LET g = g + INT(RND * 2) - 2
LET h = h + INT(RND * 2) - 3
LET o = o + INT(RND * 2) - 1
LET p = p + INT(RND * 2) - 2
LET q = q + INT(RND * 2) - 4
LET r = r + INT(RND * 2) - 3


IF a < 0 THEN LET a = 250: CLS
IF a > 250 THEN LET a = 0: CLS
IF c < 0 THEN LET c = 280: CLS
IF c > 280 THEN LET c = 0: CLS
IF e < 0 THEN LET e = 280: CLS
IF e > 280 THEN LET e = 0: CLS
IF b < 0 THEN LET b = 160: CLS
IF b > 160 THEN LET b = 0: CLS
IF d < 0 THEN LET d = 170: CLS
IF d > 170 THEN LET d = 0: CLS
IF f < 0 THEN LET f = 170: CLS
IF f > 170 THEN LET f = 0: CLS
IF g < 0 THEN LET g = 280: CLS
IF g > 280 THEN LET g = 0: CLS
IF h < 0 THEN LET h = 170: CLS
IF h > 170 THEN LET h = 0: CLS
IF o < 0 THEN LET o = 260: CLS
IF o > 260 THEN LET o = 0: CLS
IF p < 0 THEN LET p = 160: CLS
IF p > 160 THEN LET p = 0: CLS
IF q < 0 THEN LET q = 280: CLS
IF q > 280 THEN LET q = 0: CLS
IF r < 0 THEN LET r = 170: CLS
IF r > 170 THEN LET r = 0: CLS


IF k > e AND k < e + 20 AND j > f AND j < f + 20 THEN CLS : LOCATE 10, 15: PRINT "BOOM": LOCATE 13, 15: PRINT "Killed By No. 3": FOR i3 = 1 TO 5000: NEXT i3: GOTO try
IF k > a AND k < a + 20 AND j > b AND j < b + 20 THEN CLS : LOCATE 10, 15: PRINT "BOOM": LOCATE 13, 15: PRINT "Killed By No. 1": FOR i3 = 1 TO 5000: NEXT i3: GOTO try
IF k > c AND k < c + 20 AND j > d AND j < d + 10 THEN CLS : LOCATE 10, 15: PRINT "BOOM": LOCATE 13, 15: PRINT "Killed By No. 2": FOR i3 = 1 TO 5000: NEXT i3: GOTO try
IF k > g AND k < g + 20 AND j > h AND j < h + 15 THEN CLS : LOCATE 10, 15: PRINT "BOOM": LOCATE 13, 15: PRINT "Killed By No. 4": FOR i3 = 1 TO 5000: NEXT i3: GOTO try
IF k > o AND k < o + 20 AND j > p AND j < p + 20 THEN CLS : LOCATE 10, 15: PRINT "BOOM": LOCATE 13, 15: PRINT "Killed By No. 5": FOR i3 = 1 TO 5000: NEXT i3: GOTO try
IF k > q AND k < q + 20 AND j > r AND j < r + 20 THEN CLS : LOCATE 10, 15: PRINT "BOOM": LOCATE 13, 15: PRINT "Killed By No. 6": FOR i3 = 1 TO 5000: NEXT i3: GOTO try



PUT (a, b), circle3, PSET
PUT (c, d), circle2, PSET
PUT (e, f), circle1, PSET
PUT (g, h), circle2, PSET
PUT (o, p), circle3, PSET
PUT (q, r), circle1, PSET



GOTO in



shot:
FOR x = j TO 0 STEP -5
LET k1 = k + 10
PSET (k1, x)
IF k1 > e AND k1 < e + 20 AND x > f AND x < f + 20 THEN PRINT "****": LET e = INT(RND * 280): LET f = INT(RND * 170): LET s = s + 100
IF k1 > a AND k1 < a + 20 AND x > b AND x < b + 20 THEN PRINT "****": LET a = INT(RND * 280): LET b = INT(RND * 170): LET s = s + 100
IF k1 > c AND k1 < c + 30 AND x > d AND x < d + 20 THEN PRINT "****": LET c = INT(RND * 280): LET d = INT(RND * 170): LET s = s + 100
IF k1 > g AND k1 < g + 30 AND x > h AND x < h + 20 THEN PRINT "****": LET g = INT(RND * 280): LET h = INT(RND * 170): LET s = s + 100
IF k1 > o AND k1 < o + 30 AND x > p AND x < p + 20 THEN PRINT "****": LET o = INT(RND * 280): LET p = INT(RND * 170): LET s = s + 100
IF k1 > q AND k1 < q + 30 AND x > r AND x < r + 20 THEN PRINT "****": LET q = INT(RND * 280): LET r = INT(RND * 170): LET s = s + 100
NEXT x
CLS
RETURN

p:
DO
LOOP WHILE INKEY$ = ""
RETURN


try:
CLS
SCREEN 2
SCREEN 0
LOCATE 10, 25
INPUT "Do you wish to try again"; try$
IF try$ = "y" OR try$ = "Y" THEN GOTO game:  ELSE END





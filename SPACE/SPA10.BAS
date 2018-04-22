hi = 100
k = INT(RND * 280)
j = INT(RND * 170)
game:

RANDOMIZE TIMER

a = INT(RND * 280) '3
b = INT(RND * 170)
c = INT(RND * 280) '2
d = INT(RND * 170)
e = INT(RND * 280) '1
f = INT(RND * 170)

g = INT(RND * 280)
h = INT(RND * 170)

o = INT(RND * 280)
p = INT(RND * 170)

q = INT(RND * 280)
r = INT(RND * 170)
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
i$ = INKEY$
SELECT CASE i$
CASE CHR$(0) + "H": m = m - 1
CASE CHR$(0) + "P": m = m + 1
CASE CHR$(0) + "K": n = n - 1
CASE CHR$(0) + "M": n = n + 1
CASE "l": k = INT(RND * 280): j = INT(RND * 170): CLS
CASE "e": m = 0: n = 0
CASE "p": GOSUB p:
CASE " ": GOSUB shot
CASE "q": END
CASE ELSE
END SELECT
IF n > 5 THEN n = 5
IF n < -5 THEN n = -5
IF m > 5 THEN m = 5
IF m < -5 THEN m = -5
k = k + n
j = j + m
IF j < 0 THEN j = 170: CLS
IF j > 170 THEN j = 0: CLS
IF k < 0 THEN k = 280: CLS
IF k > 280 THEN k = 0: CLS
FOR i = 1 TO 100: NEXT i
IF s > hi THEN hi = s
LOCATE 1, 1: PRINT "Score = "; s
LOCATE 1, 15: PRINT "High score ="; hi
PUT (k, j), ship, PSET

RANDOMIZE TIMER
a = a + INT(RND * 2) + 1
b = b + INT(RND * 2) + 3
c = c + INT(RND * 2) - 7
d = d + INT(RND * 2) - 2
e = e + INT(RND * 2) - 3
f = f + INT(RND * 2) - 5
g = g + INT(RND * 2) - 3
h = h + INT(RND * 2) - 3
o = o + INT(RND * 2) + 1
p = p + INT(RND * 2) + 2
q = q + INT(RND * 2) - 4
r = r + INT(RND * 2) - 3


IF a < 0 THEN a = 250: CLS
IF a > 250 THEN a = 0: CLS
IF c < 0 THEN c = 280: CLS
IF c > 280 THEN c = 0: CLS
IF e < 0 THEN e = 280: CLS
IF e > 280 THEN e = 0: CLS
IF b < 0 THEN b = 160: CLS
IF b > 160 THEN b = 0: CLS
IF d < 0 THEN d = 170: CLS
IF d > 170 THEN d = 0: CLS
IF f < 0 THEN f = 170: CLS
IF f > 170 THEN f = 0: CLS
IF g < 0 THEN g = 280: CLS
IF g > 280 THEN g = 0: CLS
IF h < 0 THEN h = 170: CLS
IF h > 170 THEN h = 0: CLS
IF o < 0 THEN o = 260: CLS
IF o > 260 THEN o = 0: CLS
IF p < 0 THEN p = 160: CLS
IF p > 160 THEN p = 0: CLS
IF q < 0 THEN q = 280: CLS
IF q > 280 THEN q = 0: CLS
IF r < 0 THEN r = 170: CLS
IF r > 170 THEN r = 0: CLS


IF k + 10 > e AND k + 10 < e + 20 AND j + 7 > f AND j + 7 < f + 20 THEN CLS : LOCATE 10, 15: PRINT "BOOM !": LOCATE 13, 15: PRINT "Killed By No. 3": LOCATE 16, 15: PRINT "Score ="; s: FOR i3 = 1 TO 5000: NEXT i3: FOR i4 = 1 TO 16: i$ = INKEY$: NEXT i4: GOTO try
IF k + 10 > a AND k + 10 < a + 20 AND j + 7 > b AND j + 7 < b + 20 THEN CLS : LOCATE 10, 15: PRINT "BOOM !": LOCATE 13, 15: PRINT "Killed By No. 1": LOCATE 16, 15: PRINT "Score ="; s: FOR i3 = 1 TO 5000: NEXT i3: FOR i4 = 1 TO 16: i$ = INKEY$: NEXT i4: GOTO try
IF k + 10 > c AND k + 10 < c + 20 AND j + 7 > d AND j + 7 < d + 10 THEN CLS : LOCATE 10, 15: PRINT "BOOM !": LOCATE 13, 15: PRINT "Killed By No. 2": LOCATE 16, 15: PRINT "Score ="; s: FOR i3 = 1 TO 5000: NEXT i3: FOR i4 = 1 TO 16: i$ = INKEY$: NEXT i4: GOTO try
IF k + 10 > g AND k + 10 < g + 20 AND j + 7 > h AND j + 7 < h + 15 THEN CLS : LOCATE 10, 15: PRINT "BOOM !": LOCATE 13, 15: PRINT "Killed By No. 4": LOCATE 16, 15: PRINT "Score ="; s: FOR i3 = 1 TO 5000: NEXT i3: FOR i4 = 1 TO 16: i$ = INKEY$: NEXT i4: GOTO try
IF k + 10 > o AND k + 10 < o + 20 AND j + 7 > p AND j + 7 < p + 20 THEN CLS : LOCATE 10, 15: PRINT "BOOM !": LOCATE 13, 15: PRINT "Killed By No. 5": LOCATE 16, 15: PRINT "Score ="; s: FOR i3 = 1 TO 5000: NEXT i3: FOR i4 = 1 TO 16: i$ = INKEY$: NEXT i4: GOTO try
IF k + 10 > q AND k + 10 < q + 20 AND j + 7 > r AND j + 7 < r + 20 THEN CLS : LOCATE 10, 15: PRINT "BOOM !": LOCATE 13, 15: PRINT "Killed By No. 6": LOCATE 16, 15: PRINT "Score ="; s: FOR i3 = 1 TO 5000: NEXT i3: FOR i4 = 1 TO 16: i$ = INKEY$: NEXT i4: GOTO try



PUT (a, b), circle3, PSET
PUT (c, d), circle2, PSET
PUT (e, f), circle1, PSET
PUT (g, h), circle2, PSET
PUT (o, p), circle3, PSET
PUT (q, r), circle1, PSET
PSET (k + 10, j + 7)




GOTO in



shot:
FOR x = j TO 0 STEP -5
k1 = k + 10
PSET (k1, x)
IF k1 > e AND k1 < e + 20 AND x > f AND x < f + 20 THEN PRINT "****": e = INT(RND * 280): f = INT(RND * 170): s = s + 100
IF k1 > a AND k1 < a + 20 AND x > b AND x < b + 20 THEN PRINT "****": a = INT(RND * 280): b = INT(RND * 170): s = s + 100
IF k1 > c AND k1 < c + 30 AND x > d AND x < d + 20 THEN PRINT "****": c = INT(RND * 280): d = INT(RND * 170): s = s + 100
IF k1 > g AND k1 < g + 30 AND x > h AND x < h + 20 THEN PRINT "****": g = INT(RND * 280): h = INT(RND * 170): s = s + 100
IF k1 > o AND k1 < o + 30 AND x > p AND x < p + 20 THEN PRINT "****": o = INT(RND * 280): p = INT(RND * 170): s = s + 100
IF k1 > q AND k1 < q + 30 AND x > r AND x < r + 20 THEN PRINT "****": q = INT(RND * 280): r = INT(RND * 170): s = s + 100
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
IF try$ = "y" OR try$ = "Y" THEN s = 0: GOTO game
IF try$ = "cheat" OR try$ = "CHEAT" THEN GOTO game ELSE END






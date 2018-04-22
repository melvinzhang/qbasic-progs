CLEAR , , 10000

CONST pi = 3.1415
  DEF FnRan (x) = INT(RND(1) * x) + 1
  DEF SEG = 0                         ' Set NumLock to ON
  KeyFlags = PEEK(1047)
  IF (KeyFlags AND 32) = 0 THEN
  POKE 1047, KeyFlags OR 32
  END IF
  DEF SEG

CLS
SCREEN 1
DIM walk(500)
DIM walk2(500)
DIM walk3(500)
DIM walk4(500)
DIM walk5(500)
DIM walk6(500)
DIM walk0(500)

DIM punch1(500)
DIM punch2(500)
DIM punch3(500)
DIM punch4(500)
DIM punch5(500)
DIM punch6(500)
DIM stand(500)

DIM kick1(500)
DIM kick2(500)
DIM kick3(500)
DIM kick4(500)
DIM kick5(500)
DIM kick6(500)
DIM kick7(500)
DIM kick8(500)
DIM kick9(600)
DIM kick10(600)

DIM sstand(500)
DIM wwalk1(500)
DIM wwalk2(500)
DIM wwalk3(500)

DIM ppunch1(500)
DIM ppunch2(500)
DIM ppunch3(500)
DIM ppunch4(500)
DIM spook(200)

DIM ssstand(500)

DIM sssstand(500)
DIM wwwwalk(500)
DIM wwwwalk1(500)
DIM wwwwalk2(500)
DIM wwwwalk3(500)

DIM ppppunch(500)
DIM ppppunch1(500)
DIM ppppunch2(500)
DIM ppppunch3(500)
DIM ppppunch4(500)
DIM ppppunch5(500)
DIM ppppunch6(500)
DIM ppppunch7(500)
DIM ppppunch8(500)

DIM KKKKICK(500)
DIM KKKKICK1(500)
DIM KKKKICK2(500)
DIM KKKKICK3(500)
DIM KKKKICK4(500)
DIM KKKKICK5(500)
DIM KKKKICK6(500)
GOSUB pre

game:
CLS

31
LOCATE 1, 1: PRINT "SELECT PLAYER 1"
LOCATE 2, 1: PRINT "1. Zyrex    "
LOCATE 3, 1: PRINT "2. Crystal  "
LOCATE 4, 1: INPUT "Select player : ", player1
IF player1 < 1 OR player1 > 2 THEN GOTO 31

67
LOCATE 1, 1: PRINT "SELECT PLAYER 2"
LOCATE 2, 1: PRINT "1. Wheels   "
LOCATE 3, 1: PRINT "2. Brain    "
LOCATE 4, 1: PRINT "                       "
LOCATE 4, 1: INPUT "Select player : ", player
IF player < 1 OR player > 2 THEN GOTO 67

CLS
cou = 1
IF player1 = 1 THEN a = 10 ELSE a = 0
IF player1 = 2 THEN d = 10 ELSE d = 0
IF player = 1 THEN B = 200 ELSE B = 10000
IF player = 2 THEN c = 200 ELSE c = 10000
de = 10
da = 0

de1 = 100
de2 = 50
de3 = 250
num = 5
kl = 0
kj = 0

live = 1000
live1 = 1000
IF player = 2 THEN full = 500 ELSE full = 1000
IF player = 2 THEN live1 = 500

IF player = 1 THEN nam$ = "WHEELS"
IF player = 2 THEN nam$ = "BRAIN"

IF player1 = 1 THEN nam1$ = "ZYREX"
IF player1 = 2 THEN nam1$ = "CRYSTAL"

pla:
DO
i$ = INKEY$
SELECT CASE i$
CASE "d": IF player1 = 1 THEN GOSUB walkf ELSE GOSUB wwwwalkf
CASE "a": IF player1 = 1 THEN GOSUB walkb ELSE GOSUB wwwwalkb
CASE "q": GOSUB punc
CASE "e": GOSUB kic
CASE "w": IF player1 = 1 THEN GOSUB jump ELSE GOSUB jump4
CASE "s": GOSUB spec
CASE "x": GOSUB spec2

CASE "4": IF player = 1 THEN GOSUB wwalkf ELSE GOSUB wwwalkf
CASE "6": IF player = 1 THEN GOSUB wwalkb ELSE GOSUB wwwalkb
CASE "8": IF player = 1 THEN GOSUB jump1 ELSE GOSUB jump2
CASE "7": IF player = 1 THEN GOSUB ppunch ELSE GOSUB ssspec3
CASE "2": IF player = 1 THEN GOSUB sspec ELSE GOSUB ssspec
CASE "1": IF player = 1 THEN GOSUB sspec2 ELSE GOSUB ssspec2
CASE "3": GOSUB sspec3

CASE "": GOTO again
CASE ELSE
END SELECT
IF player1 = 1 THEN PUT (a, 60), stand, OR ELSE PUT (d, 60), sssstand, OR
IF player = 1 THEN PUT (B, 60), sstand, OR ELSE PUT (c, 60), ssstand, OR
IF live < 0 THEN LOCATE 1, 15: PRINT nam$; " WINS": FOR k = 1 TO 1000: i$ = INKEY$: NEXT: GOTO livc
IF live1 < 0 THEN LOCATE 1, 15: PRINT nam1$; " WINS": FOR k = 1 TO 1000: i$ = INKEY$: NEXT: GOTO livc
LOCATE 1, 1: PRINT live
LOCATE 1, 35: PRINT live1
LOOP

livc:
IF live1 = full OR live = 1000 THEN LOCATE 3, 16: PRINT "PERFECT"
FOR k = 1 TO 1000: NEXT
GOSUB again

again:
1 LOCATE 22, 2: INPUT "Do you wish to play again (y/n) "; again$
IF again$ = "y" OR again$ = "Y" THEN GOTO game
IF again$ = "n" OR again$ = "N" THEN RUN "b:\project\manager1.bas" ELSE GOTO 1
RETURN

walkb:
IF a - 30 < 1 THEN RETURN
PUT (a, 60), walk6, PSET
FOR i = 1 TO de3: NEXT
PUT (a, 60), walk5, PSET
FOR i = 1 TO de3: NEXT
a = a - 10
PUT (a, 60), walk4, PSET
FOR i = 1 TO de3: NEXT
a = a - 10
PUT (a, 60), walk3, PSET
FOR i = 1 TO de3: NEXT
a = a - 10
PUT (a, 60), walk2, PSET
FOR i = 1 TO de3: NEXT
PUT (a, 60), walk, PSET
FOR i = 1 TO de3: NEXT
PUT (a, 60), walk0, PSET
FOR i = 1 TO de3: NEXT
PUT (a, 60), stand, PSET
FOR l = 1 TO 16: i$ = INKEY$: NEXT
RETURN

walkf:
IF a + 80 + 30 > 310 THEN RETURN
IF a + 80 + 30 > B + 70 THEN RETURN
IF a + 80 + 30 > c + 85 THEN RETURN
PUT (a, 60), walk0, PSET
FOR i = 1 TO de3: NEXT
PUT (a, 60), walk, PSET
FOR i = 1 TO de3: NEXT
PUT (a, 60), walk2, PSET
FOR i = 1 TO de3: NEXT
PUT (a, 60), walk3, PSET
FOR i = 1 TO de3: NEXT
a = a + 10
PUT (a, 60), walk4, PSET
FOR i = 1 TO de3: NEXT
a = a + 10
PUT (a, 60), walk5, PSET
FOR i = 1 TO de3: NEXT
a = a + 10
PUT (a, 60), walk6, PSET
FOR i = 1 TO de3: NEXT
PUT (a, 60), stand, PSET
FOR l = 1 TO 16: i$ = INKEY$: NEXT
RETURN

punc:
PUT (a - num, 60), punch1, PSET
FOR i = 1 TO de1: NEXT
PUT (a - num, 60), punch2, PSET
FOR i = 1 TO de1: NEXT
PUT (a - num, 60), punch3, PSET
FOR i = 1 TO de1: NEXT
PUT (a - num, 60), punch4, PSET
FOR i = 1 TO de1: NEXT
PUT (a - num, 60), punch5, PSET
FOR i = 1 TO de2: NEXT

IF a + 70 > B + 20 THEN B = B + 6: live1 = live1 - 2
IF B + 60 > 310 THEN B = 250

IF a + 70 > c + 10 THEN c = c + 6: live1 = live1 - 12
IF c + 80 > 310 THEN c = 230

IF player = 1 THEN PUT (B, 60), sstand, PSET ELSE PUT (c, 60), ssstand, PSET

PUT (a - num, 60), punch4, PSET
FOR i = 1 TO de2: NEXT
PUT (a - num, 60), punch3, PSET
FOR i = 1 TO de2: NEXT
PUT (a - num, 60), punch2, PSET
FOR i = 1 TO de2: NEXT
PUT (a - num, 60), punch1, PSET
FOR i = 1 TO de2: NEXT
PUT (a, 60), stand, PSET
FOR l = 1 TO 16: i$ = INKEY$: NEXT
RETURN

kic:
IF a + 80 + 20 > 315 THEN RETURN
PUT (a, 60), walk0, PSET
FOR i = 1 TO de: NEXT
PUT (a, 60), walk, PSET
FOR i = 1 TO de: NEXT
PUT (a, 60), walk2, PSET
FOR i = 1 TO de: NEXT
a = a + 10
PUT (a, 60), walk3, PSET
FOR i = 1 TO de: NEXT
IF player = 1 THEN PUT (B, 60), sstand, OR ELSE PUT (c, 60), ssstand, OR
a = a + 10
PUT (a, 60), walk4, PSET
FOR i = 1 TO de: NEXT
IF player = 1 THEN PUT (B, 60), sstand, OR ELSE PUT (c, 60), ssstand, OR
PUT (a, 60), kick1, PSET
FOR i = 1 TO de: NEXT
IF player = 1 THEN PUT (B, 60), sstand, OR ELSE PUT (c, 60), ssstand, OR
PUT (a, 60), kick2, PSET
FOR i = 1 TO de: NEXT
IF player = 1 THEN PUT (B, 60), sstand, OR ELSE PUT (c, 60), ssstand, OR
PUT (a, 60), kick3, PSET
FOR i = 1 TO de: NEXT
IF player = 1 THEN PUT (B, 60), sstand, OR ELSE PUT (c, 60), ssstand, OR
PUT (a, 60), kick4, PSET
FOR i = 1 TO de: NEXT
IF player = 1 THEN PUT (B, 60), sstand, OR ELSE PUT (c, 60), ssstand, OR
PUT (a, 60), kick5, PSET
FOR i = 1 TO de: NEXT
IF player = 1 THEN PUT (B, 60), sstand, OR ELSE PUT (c, 60), ssstand, OR
PUT (a, 60), kick6, PSET
FOR i = 1 TO de: NEXT
IF player = 1 THEN PUT (B, 60), sstand, OR ELSE PUT (c, 60), ssstand, OR
PUT (a, 60), kick7, PSET
FOR i = 1 TO de: NEXT
IF player = 1 THEN PUT (B, 60), sstand, OR ELSE PUT (c, 60), ssstand, OR
PUT (a, 60), kick8, PSET
FOR i = 1 TO de: NEXT
IF player = 1 THEN PUT (B, 60), sstand, OR ELSE PUT (c, 60), ssstand, OR
PUT (a, 60), kick9, PSET
FOR i = 1 TO de: NEXT
IF player = 1 THEN PUT (B, 60), sstand, OR ELSE PUT (c, 60), ssstand, OR
PUT (a, 60), kick10, PSET
FOR i = 1 TO de: NEXT
IF player = 1 THEN PUT (B, 60), sstand, OR ELSE PUT (c, 60), ssstand, OR

IF a + 80 > B + 15 THEN B = B + 12: live1 = live1 - 4
IF B + 60 > 310 THEN B = 250

IF a + 80 > c + 35 THEN c = c + 12: live1 = live1 - 24
IF c + 80 > 310 THEN c = 230

IF player = 1 THEN PUT (B, 60), sstand, PSET ELSE PUT (c, 60), ssstand, PSET

LINE (a, 60)-(a + 80, 165), 0, BF
PUT (a, 60), kick9, PSET
FOR i = 1 TO de: NEXT
IF player = 1 THEN PUT (B, 60), sstand, OR ELSE PUT (c, 60), ssstand, OR
LINE (a, 60)-(a + 80, 165), 0, BF
PUT (a, 60), kick8, PSET
FOR i = 1 TO de: NEXT
IF player = 1 THEN PUT (B, 60), sstand, OR ELSE PUT (c, 60), ssstand, OR
LINE (a, 60)-(a + 80, 165), 0, BF
PUT (a, 60), kick7, PSET
FOR i = 1 TO de: NEXT
IF player = 1 THEN PUT (B, 60), sstand, OR ELSE PUT (c, 60), ssstand, OR
LINE (a, 60)-(a + 80, 165), 0, BF
PUT (a, 60), kick6, PSET
FOR i = 1 TO de: NEXT
IF player = 1 THEN PUT (B, 60), sstand, OR ELSE PUT (c, 60), ssstand, OR
PUT (a, 60), kick5, PSET
FOR i = 1 TO de: NEXT
IF player = 1 THEN PUT (B, 60), sstand, OR ELSE PUT (c, 60), ssstand, OR
PUT (a, 60), kick4, PSET
FOR i = 1 TO de: NEXT
IF player = 1 THEN PUT (B, 60), sstand, OR ELSE PUT (c, 60), ssstand, OR
PUT (a, 60), kick3, PSET
FOR i = 1 TO de: NEXT
IF player = 1 THEN PUT (B, 60), sstand, OR ELSE PUT (c, 60), ssstand, OR
PUT (a, 60), kick2, PSET
FOR i = 1 TO de: NEXT
IF player = 1 THEN PUT (B, 60), sstand, OR ELSE PUT (c, 60), ssstand, OR
PUT (a, 60), kick1, PSET
FOR i = 1 TO de: NEXT
IF player = 1 THEN PUT (B, 60), sstand, OR ELSE PUT (c, 60), ssstand, OR
a = a - 10
PUT (a, 60), walk4, PSET
FOR i = 1 TO de: NEXT
IF player = 1 THEN PUT (B, 60), sstand, OR ELSE PUT (c, 60), ssstand, OR
a = a - 10
PUT (a, 60), walk3, PSET
FOR i = 1 TO de: NEXT
IF player = 1 THEN PUT (B, 60), sstand, OR ELSE PUT (c, 60), ssstand, OR
PUT (a, 60), walk2, PSET
FOR i = 1 TO de: NEXT
IF player = 1 THEN PUT (B, 60), sstand, OR ELSE PUT (c, 60), ssstand, OR
PUT (a, 60), walk, PSET
FOR i = 1 TO de: NEXT
IF player = 1 THEN PUT (B, 60), sstand, OR ELSE PUT (c, 60), ssstand, OR
PUT (a, 60), walk0, PSET
FOR i = 1 TO de: NEXT
IF player = 1 THEN PUT (B, 60), sstand, OR ELSE PUT (c, 60), ssstand, OR
PUT (a, 60), stand, PSET
FOR l = 1 TO 16: i$ = INKEY$: NEXT
RETURN

jump:
IF kj = 4 THEN CIRCLE (k, 100), 40, 0, .75 * pi, 1.25 * pi

IF kj = 3 THEN IF c < 10 THEN cou1 = -4 ELSE cou1 = 4

IF kj = 5 THEN cou = 3
IF kj = 4 THEN cou = 3

FOR l = 60 TO 10 STEP -cou

IF kj = 5 THEN f = f - 4: IF f < 5 THEN LINE (f - 10, 110)-(f + 70, 160), 0, BF ELSE PUT (f, 115), spook, PSET: PUT (B, 60), sstand, OR
IF kj = 4 THEN k = k - 4: IF k < 10 THEN CIRCLE (k, 100), 40, 0, .75 * pi, 1.25 * pi ELSE CIRCLE (k, 100), 40, 1, .75 * pi, 1.25 * pi

IF kj = 3 THEN IF c >= c1 - 5 THEN GOTO 11
IF kj = 3 THEN c = c - cou1
IF kj = 3 THEN IF c < 10 THEN cou1 = -4

11 PUT (a, l), stand, PSET

IF kj = 3 THEN PUT (c, 60), ssstand, PSET
IF kj = 4 THEN CIRCLE (k, 100), 40, 0, .75 * pi, 1.25 * pi
NEXT

FOR l = 10 TO 60 STEP cou
IF kj = 5 THEN f = f - 4: IF f < 5 THEN LINE (f - 10, 110)-(f + 70, 160), 0, BF ELSE PUT (f, 115), spook, PSET: PUT (B, 60), sstand, OR
IF kj = 4 THEN k = k - 4: IF k < 10 THEN CIRCLE (k, 100), 40, 0, .75 * pi, 1.25 * pi ELSE CIRCLE (k, 100), 40, 1, .75 * pi, 1.25 * pi

IF kj = 3 THEN IF c >= c1 - 5 THEN kj = 0: kh = 1

IF kj = 3 THEN IF c >= c1 - 5 THEN GOTO 8
IF kj = 3 THEN c = c - cou1
IF kj = 3 THEN IF c < 10 THEN cou1 = -4

8 PUT (a, l), stand, PSET

IF kj = 4 THEN CIRCLE (k, 100), 40, 0, .75 * pi, 1.25 * pi
IF kj = 3 THEN IF c + 80 > 310 THEN c = 230
IF kj = 3 THEN PUT (c, 60), ssstand, PSET

NEXT
FOR l = 1 TO 16: i$ = INKEY$: NEXT
kj = 0
cou = 1
PUT (a, 60), stand, PSET
RETURN

jump4:
IF kj = 4 THEN CIRCLE (k, 100), 40, 0, .75 * pi, 1.25 * pi

IF kj = 3 THEN IF c < 10 THEN cou1 = -4 ELSE cou1 = 4

IF kj = 5 THEN cou = 3
IF kj = 4 THEN cou = 3

FOR l = 60 TO 10 STEP -cou

IF kj = 5 THEN f = f - 4: IF f < 5 THEN LINE (f - 10, 110)-(f + 70, 160), 0, BF ELSE PUT (f, 115), spook, PSET: PUT (B, 60), sstand, OR
IF kj = 4 THEN k = k - 4: IF k < 10 THEN CIRCLE (k, 100), 40, 0, .75 * pi, 1.25 * pi ELSE CIRCLE (k, 100), 40, 1, .75 * pi, 1.25 * pi

IF kj = 3 THEN IF c >= c1 - 5 THEN GOTO 22
IF kj = 3 THEN c = c - cou1
IF kj = 3 THEN IF c < 10 THEN cou1 = -4

22 PUT (d, l), sssstand, PSET

IF kj = 3 THEN PUT (c, 60), ssstand, PSET
IF kj = 4 THEN CIRCLE (k, 100), 40, 0, .75 * pi, 1.25 * pi
NEXT

FOR l = 10 TO 60 STEP cou
IF kj = 5 THEN f = f - 4: IF f < 5 THEN LINE (f - 10, 110)-(f + 70, 160), 0, BF ELSE PUT (f, 115), spook, PSET: PUT (B, 60), sstand, OR
IF kj = 4 THEN k = k - 4: IF k < 10 THEN CIRCLE (k, 100), 40, 0, .75 * pi, 1.25 * pi ELSE CIRCLE (k, 100), 40, 1, .75 * pi, 1.25 * pi

IF kj = 3 THEN IF c >= c1 - 5 THEN kj = 0: kh = 1

IF kj = 3 THEN IF c >= c1 - 5 THEN GOTO 88
IF kj = 3 THEN c = c - cou1
IF kj = 3 THEN IF c < 10 THEN cou1 = -4

88 PUT (d, l), sssstand, PSET

IF kj = 4 THEN CIRCLE (k, 100), 40, 0, .75 * pi, 1.25 * pi
IF kj = 3 THEN IF c + 80 > 310 THEN c = 230
IF kj = 3 THEN PUT (c, 60), ssstand, PSET

NEXT
FOR l = 1 TO 16: i$ = INKEY$: NEXT
kj = 0
cou = 1
PUT (d, 60), sssstand, PSET
RETURN

jump1:
FOR l = 60 TO 10 STEP -1
IF kl = 5 THEN i = i + 2: LINE (i + 10, 87)-(i + 20, 87), 2
PUT (B, l), sstand, PSET
IF kl = 5 THEN LINE (i, 87)-(i + 10, 87), 0
NEXT
FOR l = 10 TO 60
IF kl = 5 THEN i = i + 2: LINE (i + 10, 87)-(i + 20, 87), 2
PUT (B, l), sstand, PSET
IF kl = 5 THEN LINE (i, 87)-(i + 10, 87), 0
9 NEXT
kl = 0
FOR l = 1 TO 16: i$ = INKEY$: NEXT
RETURN

spec:
PUT (a - num, 60), punch1, PSET
FOR i = 1 TO de1: NEXT
PUT (a - num, 60), punch2, PSET
FOR i = 1 TO de1: NEXT
PUT (a - num, 60), punch3, PSET
FOR i = 1 TO de1: NEXT
PUT (a - num, 60), punch4, PSET
FOR i = 1 TO de1: NEXT
PUT (a - num, 60), punch5, PSET

FOR i = a + 75 TO 320 STEP 2
LINE (i + 10, 87)-(i + 20, 87), 2
LINE (i, 87)-(i + 10, 87), 0

i$ = INKEY$: IF i$ = "8" THEN kl = 5: IF player = 1 THEN GOSUB jump1 ELSE GOSUB jump2

IF player = 2 THEN GOTO 7 ELSE IF i + 20 > B + 40 AND i + 20 < B + 45 THEN B = B + 3: live1 = live1 - 2: IF B + 60 > 310 THEN B = 250: live1 = live1 - 5: PUT (B, 60), sstand, PSET: GOTO 20
IF B + 60 > 310 THEN B = 250

7 IF player = 1 THEN GOTO 6 ELSE IF i + 20 > c + 40 AND i + 20 < c + 45 THEN c = c + 3: live1 = live1 - 2: IF c + 80 > 310 THEN c = 230: live1 = live1 - 5: PUT (c, 60), ssstand, PSET: GOTO 20
IF c + 80 > 310 THEN c = 230

6 IF player = 2 THEN PUT (c, 60), ssstand, PSET ELSE PUT (B, 60), sstand, PSET
LOCATE 1, 35: PRINT live1
NEXT i

20
PUT (a - num, 60), punch4, PSET
FOR i = 1 TO de2: NEXT
PUT (a - num, 60), punch3, PSET
FOR i = 1 TO de2: NEXT
PUT (a - num, 60), punch2, PSET
FOR i = 1 TO de2: NEXT
PUT (a - num, 60), punch1, PSET
FOR i = 1 TO de2: NEXT
PUT (a, 60), stand, PSET
FOR l = 1 TO 16: i$ = INKEY$: NEXT
RETURN

spec2:
IF a + 50 + 100 > 310 THEN RETURN
PUT (a, 60), walk0, PSET
FOR i = 1 TO da: NEXT
PUT (a, 60), walk, PSET
FOR i = 1 TO da: NEXT
PUT (a, 60), walk2, PSET
FOR i = 1 TO da: NEXT
a = a + 10
PUT (a, 60), walk3, PSET
FOR i = 1 TO da: NEXT
a = a + 10
PUT (a, 60), walk4, PSET
FOR i = 1 TO da: NEXT

PUT (a, 60), kick1, PSET
FOR i = 1 TO da: NEXT
PUT (a, 60), kick2, PSET
FOR i = 1 TO da: NEXT
PUT (a, 60), kick3, PSET
FOR i = 1 TO da: NEXT
PUT (a, 60), kick4, PSET
FOR i = 1 TO da: NEXT
PUT (a, 60), kick5, PSET
FOR i = 1 TO da: NEXT
PUT (a, 60), kick6, PSET
FOR i = 1 TO da: NEXT
PUT (a, 60), kick7, PSET
FOR i = 1 TO da: NEXT
PUT (a, 60), kick8, PSET
FOR i = 1 TO da: NEXT
PUT (a, 60), kick9, PSET
FOR i = 1 TO da: NEXT

PUT (a, 60), kick10, PSET
FOR a = a TO a + 50 STEP 2
PUT (a, 60), kick10, PSET

IF a + 90 > B + 20 THEN B = B + 3: live1 = live1 - 4
IF player = 2 THEN GOTO 2 ELSE IF B + 60 > 310 THEN B = 250: PUT (B, 60), sstand, PSET: GOTO 10

2 IF player = 1 THEN GOTO 5 ELSE IF a + 90 > c + 10 THEN c = c + 3: live1 = live1 - 2
IF c + 80 > 310 THEN c = 230: PUT (c, 60), ssstand, PSET: GOTO 10

5 IF player = 1 THEN i$ = INKEY$: IF i$ = "3" THEN GOSUB sspec3
IF player = 1 THEN PUT (B, 60), sstand, PSET ELSE PUT (c, 60), ssstand, PSET
LOCATE 1, 35: PRINT live1
NEXT

10
LINE (a, 60)-(a + 80, 165), 0, BF
PUT (a, 60), kick9, PSET
FOR i = 1 TO da: NEXT
LINE (a, 60)-(a + 80, 165), 0, BF
PUT (a, 60), kick8, PSET
FOR i = 1 TO da: NEXT
LINE (a, 60)-(a + 80, 165), 0, BF
PUT (a, 60), kick7, PSET
FOR i = 1 TO da: NEXT
LINE (a, 60)-(a + 80, 165), 0, BF
PUT (a, 60), kick6, PSET
FOR i = 1 TO da: NEXT
PUT (a, 60), kick5, PSET
FOR i = 1 TO da: NEXT
PUT (a, 60), kick4, PSET
FOR i = 1 TO da: NEXT
PUT (a, 60), kick3, PSET
FOR i = 1 TO da: NEXT
PUT (a, 60), kick2, PSET
FOR i = 1 TO da: NEXT
PUT (a, 60), kick1, PSET
FOR i = 1 TO da: NEXT
a = a - 10
PUT (a, 60), walk4, PSET
FOR i = 1 TO da: NEXT
a = a - 10
PUT (a, 60), walk3, PSET
FOR i = 1 TO da: NEXT
PUT (a, 60), walk2, PSET
FOR i = 1 TO da: NEXT
PUT (a, 60), walk, PSET
FOR i = 1 TO da: NEXT
PUT (a, 60), walk0, PSET
FOR i = 1 TO da: NEXT
PUT (a, 60), stand, PSET
FOR l = 1 TO 16: i$ = INKEY$: NEXT
RETURN

wwalkf:
IF B - 16 < a + 10 THEN RETURN
IF B - 16 < d + 10 THEN RETURN
B = B - 4
PUT (B, 60), wwalk3, PSET
FOR i = 1 TO 100: NEXT
B = B - 4
PUT (B, 60), wwalk2, PSET
FOR i = 1 TO 100: NEXT
B = B - 4
PUT (B, 60), wwalk1, PSET
FOR i = 1 TO 100: NEXT
B = B - 4
FOR i = 1 TO 100: NEXT
PUT (B, 60), sstand, PSET
FOR l = 1 TO 16: i$ = INKEY$: NEXT
RETURN

wwalkb:
IF B + 60 + 16 > 310 THEN RETURN
B = B + 4
PUT (B, 60), wwalk1, PSET
FOR i = 1 TO 100: NEXT
B = B + 4
PUT (B, 60), wwalk2, PSET
FOR i = 1 TO 100: NEXT
B = B + 4
PUT (B, 60), wwalk3, PSET
FOR i = 1 TO 100: NEXT
B = B + 4
FOR i = 1 TO 100: NEXT
PUT (B, 60), sstand, PSET
FOR l = 1 TO 16: i$ = INKEY$: NEXT
RETURN

ppunch:
IF B - 15 < 10 THEN RETURN
PUT (B, 60), ppunch1, PSET
IF player1 = 1 THEN PUT (a, 60), stand, OR ELSE PUT (d, 60), sssstand, OR
FOR i = 1 TO 200: NEXT
PUT (B, 60), ppunch2, PSET
IF player1 = 1 THEN PUT (a, 60), stand, OR ELSE PUT (d, 60), sssstand, OR
FOR i = 1 TO 200: NEXT
PUT (B - 10, 60), ppunch3, PSET
IF player1 = 1 THEN PUT (a, 60), stand, OR ELSE PUT (d, 60), sssstand, OR
FOR i = 1 TO 200: NEXT
PUT (B - 15, 60), ppunch4, PSET
IF player1 = 1 THEN PUT (a, 60), stand, OR ELSE PUT (d, 60), sssstand, OR
FOR i = 1 TO 200: NEXT

IF player1 = 2 THEN GOTO 65
IF B < a + 45 THEN a = a - 10: live = live - 3
IF a - 10 < 10 THEN a = 10

65 IF player1 = 1 THEN GOTO 76
IF B < d + 40 THEN d = d - 10: live = live - 3
IF d - 10 < 10 THEN d = 10

76
IF player1 = 1 THEN PUT (a, 60), stand, PSET ELSE PUT (d, 60), sssstand, PSET

PUT (B - 10, 60), ppunch3, PSET
FOR i = 1 TO 200: NEXT

LINE (B - 20, 60)-(B, 150), 0, BF

PUT (B, 60), ppunch2, PSET
IF player1 = 1 THEN PUT (a, 60), stand, OR ELSE PUT (d, 60), sssstand, OR
FOR i = 1 TO 200: NEXT
PUT (B, 60), ppunch1, PSET
IF player1 = 1 THEN PUT (a, 60), stand, OR ELSE PUT (d, 60), sssstand, OR
FOR i = 1 TO 200: NEXT
PUT (B, 60), sstand, PSET
IF player1 = 1 THEN PUT (a, 60), stand, OR ELSE PUT (d, 60), sssstand, OR
FOR l = 1 TO 16: i$ = INKEY$: NEXT
RETURN

sspec:
FOR f = B TO 5 STEP -4
PUT (f, 115), spook, PSET
PUT (B, 60), sstand, OR

IF player1 = 2 THEN GOTO 34
IF f < a + 50 AND f > a + 20 THEN a = a - 3: live = live - 1
IF a < 10 THEN a = 10: live = live - 2

34 IF player1 = 1 THEN GOTO 57
IF f < d + 30 AND f > d THEN d = d - 3: live = live - 1
IF d < 10 THEN d = 10: live = live - 2

57
LOCATE 1, 1: PRINT live
IF player1 = 1 THEN PUT (a, 60), stand, PSET ELSE PUT (d, 60), sssstand, PSET
i$ = INKEY$: IF i$ = "w" THEN kj = 5: IF player1 = 1 THEN GOSUB jump ELSE GOSUB jump4
NEXT
LINE (0, 100)-(70, 200), 0, BF
FOR l = 1 TO 16: i$ = INKEY$: NEXT
RETURN

sspec2:
IF player1 = 1 THEN inf = a + 30 ELSE inf = d + 10
LINE (B - 10, 50)-(B + 60, 160), 0, BF
B = inf
RETURN

sspec3:
LINE (B - 10, 50)-(B + 60, 160), 0, BF
B = 250
RETURN

wwwalkf:
IF c - 10 < a + 40 THEN RETURN
IF c - 10 < d THEN RETURN
FOR c = c TO c - 10 STEP -1
PUT (c - 1, 60), ssstand, PSET
FOR i = 1 TO 100: NEXT
NEXT c
FOR i = 1 TO 16: i$ = INKEY$: NEXT
RETURN

wwwalkb:
IF c + 80 + 11 > 310 THEN RETURN
FOR c = c TO c + 10
PUT (c + 1, 60), ssstand, PSET
FOR i = 1 TO 100: NEXT
NEXT c
FOR i = 1 TO 16: i$ = INKEY$: NEXT
RETURN

jump2:
FOR l = 60 TO 10 STEP -1
IF kl = 5 THEN i = i + 2: LINE (i + 10, 87)-(i + 20, 87), 2
IF kl = 4 THEN a = a + 2: PUT (a, 60), kick10, PSET
PUT (c, l), ssstand, PSET
IF kl = 5 THEN LINE (i, 87)-(i + 10, 87), 0
NEXT l
FOR l = 10 TO 60
IF kl = 5 THEN i = i + 2: LINE (i + 10, 87)-(i + 20, 87), 2
IF kl = 4 THEN a = a + 2: PUT (a, 60), kick10, PSET
3 PUT (c, l), ssstand, PSET
IF kl = 5 THEN LINE (i, 87)-(i + 10, 87), 0
NEXT l
kl = 0
FOR k = 1 TO 16: i$ = INKEY$: NEXT
RETURN

ssspec:
FOR k = c + 25 TO 10 STEP -4
CIRCLE (k, 100), 40, 1, .75 * pi, 1.25 * pi

IF player1 = 2 THEN GOTO 98
IF k - 40 < a + 55 AND k - 40 > a + 45 THEN live = live - 6: a = a - 4
IF a < 10 THEN a = 10: live = live - 5

98 IF player1 = 1 THEN GOTO 79
IF k - 40 < d + 30 AND k - 40 > d + 10 THEN live = live - 6: d = d - 4
IF d < 10 THEN d = 10: live = live - 5

79
LOCATE 1, 1: PRINT live
IF player1 = 1 THEN PUT (a, 60), stand, PSET ELSE PUT (d, 60), sssstand, PSET
i$ = INKEY$: IF i$ = "w" THEN kj = 4: IF player1 = 1 THEN GOSUB jump ELSE GOSUB jump4
CIRCLE (k, 100), 40, 0, .75 * pi, 1.25 * pi
NEXT
FOR i = 1 TO 16: i$ = INKEY$: NEXT
RETURN

ssspec2:
c1 = c
FOR c = c TO 10 STEP -4
PUT (c, 60), ssstand, PSET

IF player1 = 2 THEN GOTO 43
IF c + 5 < a + 30 AND c + 5 > a + 20 THEN a = a - 5: live = live - 5
IF a < 10 THEN a = 10: live = live - 4

43  IF player1 = 1 THEN GOTO 23
IF c + 5 < d + 30 AND c + 5 > d + 20 THEN d = d - 5: live = live - 5
IF d < 10 THEN d = 10: live = live - 4

23
LOCATE 1, 1: PRINT live
i$ = INKEY$: IF i$ = "w" THEN kj = 3: IF player1 = 1 THEN GOSUB jump ELSE GOSUB jump4
IF kh = 1 THEN GOTO 12
IF player1 = 1 THEN PUT (a, 60), stand, PSET ELSE PUT (d, 60), sssstand, PSET
NEXT
FOR c = 10 TO c1 STEP 4
PUT (c, 60), ssstand, PSET
IF player1 = 1 THEN PUT (a, 60), stand, PSET ELSE PUT (d, 60), sssstand, PSET
NEXT
IF c + 80 > 310 THEN c = 230
12 PUT (c, 60), ssstand, PSET
kh = 0
FOR l = 1 TO 16: i$ = INKEY$: NEXT
RETURN

ssspec3:
B = c - 60
GOSUB ppunch
LINE (B, 60)-(B + 60, 60 + 100), 0, BF
B = 10000
RETURN

wwwwalkf:
IF d + 40 + 21 > 310 THEN RETURN
IF d + 40 + 21 > B + 50 THEN RETURN
IF d + 40 + 21 > c + 55 THEN RETURN
d = d + 3
PUT (d, 60), wwwwalk, PSET
FOR i = 1 TO 100: NEXT
d = d + 3
PUT (d, 60), wwwwalk1, PSET
FOR i = 1 TO 100: NEXT
d = d + 3
PUT (d, 60), wwwwalk2, PSET
FOR i = 1 TO 100: NEXT
d = d + 3
PUT (d, 60), wwwwalk3, PSET
FOR i = 1 TO 100: NEXT
d = d + 3
PUT (d, 60), wwwwalk2, PSET
FOR i = 1 TO 100: NEXT
d = d + 3
PUT (d, 60), wwwwalk1, PSET
FOR i = 1 TO 100: NEXT
d = d + 3
PUT (d, 60), wwwwalk, PSET
FOR i = 1 TO 100: NEXT
PUT (d, 60), sssstand, PSET
RETURN

wwwwalkb:
IF d - 21 < 10 THEN RETURN
d = d - 3
PUT (d, 60), wwwwalk, PSET
FOR i = 1 TO 100: NEXT
d = d - 3
PUT (d, 60), wwwwalk1, PSET
FOR i = 1 TO 100: NEXT
d = d - 3
PUT (d, 60), wwwwalk2, PSET
FOR i = 1 TO 100: NEXT
d = d - 3
PUT (d, 60), wwwwalk3, PSET
FOR i = 1 TO 100: NEXT
d = d - 3
PUT (d, 60), wwwwalk2, PSET
FOR i = 1 TO 100: NEXT
d = d - 3
PUT (d, 60), wwwwalk1, PSET
FOR i = 1 TO 100: NEXT
d = d - 3
PUT (d, 60), wwwwalk, PSET
FOR i = 1 TO 100: NEXT
PUT (d, 60), sssstand, PSET
RETURN

pre:
CLS
CIRCLE (150, 60), 8                     'head
LINE (150, 70 - 2)-(145, 70 + 30)       'body
LINE -(140, 115)                        'thigh
LINE -(125, 135)                        'feet
LINE -(135, 140)
LINE (145, 100)-(155, 120)              'thigh
LINE -(160, 140)                        'leg
LINE -(165, 140)                        'feet
LINE (149, 75)-(140, 90)                'uarm
LINE -(164, 95)                         'larm
LINE (149, 75)-(155, 85)                'uarm
LINE -(167, 88)                         'larm
GET (120, 45)-(180, 150), walk0
CLS

CIRCLE (150, 60), 8                     'head
LINE (150, 70 - 2)-(145, 70 + 30)       'body
LINE -(145, 115)                        'thigh
LINE -(130, 135)                        'feet
LINE -(135, 140)
LINE (145, 100)-(170, 120)              'thigh
LINE -(170, 140)                        'leg
LINE -(175, 140)                        'feet
LINE (149, 75)-(140, 90)                'uarm
LINE -(164, 95)                         'larm
LINE (149, 75)-(155, 85)                'uarm
LINE -(167, 88)                         'larm
GET (120, 45)-(180, 150), walk
CLS

CIRCLE (150, 60), 8                     'head
LINE (150, 70 - 2)-(145, 70 + 30)       'body
LINE -(150, 115)                        'thigh
LINE -(130, 135)                        'feet
LINE -(135, 140)
LINE (145, 100)-(155, 120)              'thigh
LINE -(160, 140)                        'leg
LINE -(165, 140)                        'feet
LINE (149, 75)-(140, 90)                'uarm
LINE -(164, 95)                         'larm
LINE (149, 75)-(155, 85)                'uarm
LINE -(167, 88)                         'larm
GET (120, 45)-(180, 150), walk2
CLS

CIRCLE (150, 60), 8                     'head
LINE (150, 70 - 2)-(145, 70 + 30)       'body
LINE -(155, 115)                        'thigh
LINE -(130, 135)                        'feet
LINE -(135, 140)
LINE (145, 100)-(150, 120)              'thigh
LINE -(152, 140)                        'leg
LINE -(158, 140)                        'feet
LINE (149, 75)-(140, 90)                'uarm
LINE -(164, 95)                         'larm
LINE (149, 75)-(155, 85)                'uarm
LINE -(167, 88)                         'larm
GET (120, 45)-(180, 150), walk3
CLS

CIRCLE (150, 60), 8                     'head
LINE (150, 70 - 2)-(145, 70 + 30)       'body
LINE -(160, 105)                        'thigh
LINE -(140, 125)                        'feet
LINE -(145, 130)
LINE (145, 100)-(150, 120)              'thigh
LINE -(145, 140)                        'leg
LINE -(150, 140)                        'feet
LINE (149, 75)-(140, 90)                'uarm
LINE -(164, 95)                         'larm
LINE (149, 75)-(155, 85)                'uarm
LINE -(167, 88)                         'larm
GET (120, 45)-(180, 150), walk4
CLS

CIRCLE (150, 60), 8                     'head
LINE (150, 70 - 2)-(145, 70 + 30)       'body
LINE -(165, 110)                        'thigh
LINE -(150, 130)                        'feet
LINE -(155, 133)
LINE (145, 100)-(140, 120)              'thigh
LINE -(135, 140)                        'leg
LINE -(140, 140)                        'feet
LINE (149, 75)-(140, 90)                'uarm
LINE -(164, 95)                         'larm
LINE (149, 75)-(155, 85)                'uarm
LINE -(167, 88)                         'larm
GET (120, 45)-(180, 150), walk5
CLS

CIRCLE (150, 60), 8                     'head
LINE (150, 70 - 2)-(145, 70 + 30)       'body
LINE -(160, 110)                        'thigh
LINE -(160, 135)                        'feet
LINE -(165, 135)
LINE (145, 100)-(135, 120)              'thigh
LINE -(130, 140)                        'leg
LINE -(135, 140)                        'feet
LINE (149, 75)-(140, 90)                'uarm
LINE -(164, 95)                         'larm
LINE (149, 75)-(155, 85)                'uarm
LINE -(167, 88)                         'larm
GET (120, 45)-(180, 150), walk6
CLS

CIRCLE (150, 60), 8                     'head
LINE (150, 70 - 2)-(145, 70 + 30)       'body
LINE -(115, 140)                        'leg
LINE -(120, 145)                        'feet
LINE (145, 100)-(170, 120)              'thigh
LINE -(170, 140)                        'leg
LINE -(175, 140)                        'feet
LINE (149, 75)-(140, 90)                'uarm
LINE -(164, 95)                         'larm
LINE (149, 75)-(155, 85)                'uarm
LINE -(167, 88)                         'larm
GET (115, 45)-(180, 150), stand
CLS

CIRCLE (150, 60), 8                     'head
LINE (150, 70 - 2)-(145, 70 + 30)       'body
LINE -(115, 140)                        'leg
LINE -(120, 145)                        'feet
LINE (145, 100)-(170, 120)              'thigh
LINE -(170, 140)                        'leg
LINE -(175, 140)                        'feet
LINE (149, 75)-(145, 90)                'uarm**
LINE -(165, 95)                         'larm**
LINE (149, 75)-(155, 85)                'uarm
LINE -(167, 88)                         'larm
GET (110, 45)-(180, 150), punch1
CLS
CIRCLE (150, 60), 8                     'head
LINE (150, 70 - 2)-(145, 70 + 30)       'body
LINE -(115, 140)                        'leg
LINE -(120, 145)                        'feet
LINE (145, 100)-(170, 120)              'thigh
LINE -(170, 140)                        'leg
LINE -(175, 140)                        'feet
LINE (149, 75)-(153, 85)                'uarm**
LINE -(165, 95)                         'larm**
LINE (149, 75)-(155, 85)                'uarm
LINE -(167, 88)                         'larm
GET (110, 45)-(180, 150), punch2
CLS
CIRCLE (150, 60), 8                     'head
LINE (150, 70 - 2)-(145, 70 + 30)       'body
LINE -(115, 140)                        'leg
LINE -(120, 145)                        'feet
LINE (145, 100)-(170, 120)              'thigh
LINE -(170, 140)                        'leg
LINE -(175, 140)                        'feet
LINE (149, 75)-(160, 80)                'uarm**
LINE -(168, 87)                         'larm**
LINE (149, 75)-(155, 85)                'uarm
LINE -(167, 90)                         'larm
GET (110, 45)-(180, 150), punch3
CLS
CIRCLE (150, 60), 8                     'head
LINE (150, 70 - 2)-(145, 70 + 30)       'body
LINE -(115, 140)                        'leg
LINE -(120, 145)                        'feet
LINE (145, 100)-(170, 120)              'thigh
LINE -(170, 140)                        'leg
LINE -(175, 140)                        'feet
LINE (149, 75)-(165, 75)                'uarm**
LINE -(177, 80)                         'larm**
LINE (149, 75)-(155, 85)                'uarm
LINE -(167, 90)                         'larm
GET (110, 45)-(180, 150), punch4
CLS
CIRCLE (150, 60), 8                     'head
LINE (150, 70 - 2)-(145, 70 + 30)       'body
LINE -(115, 140)                        'leg
LINE -(120, 145)                        'feet
LINE (145, 100)-(170, 120)              'thigh
LINE -(170, 140)                        'leg
LINE -(175, 140)                        'feet
LINE (149, 75)-(167, 78)                'uarm**
LINE -(183, 75)                         'larm**
LINE (149, 75)-(155, 85)                'uarm
LINE -(167, 90)                         'larm
GET (110, 45)-(180, 150), punch5
CLS

CIRCLE (150, 60), 8                     'head
LINE (150, 70 - 2)-(145, 70 + 30)       'body
LINE -(160, 105)                        'thigh**
LINE -(150, 125)                        'feet**
LINE -(155, 128)
LINE (145, 100)-(150, 120)              'thigh
LINE -(145, 140)                        'leg
LINE -(150, 140)                        'feet
LINE (149, 75)-(140, 90)                'uarm
LINE -(164, 95)                         'larm
LINE (149, 75)-(155, 85)                'uarm
LINE -(167, 88)                         'larm
GET (120, 45)-(180, 150), kick1
CLS
CIRCLE (150, 60), 8                     'head
LINE (150, 70 - 2)-(145, 70 + 30)       'body
LINE -(160, 106)                        'thigh**
LINE -(155, 125)                        'feet**
LINE -(160, 128)
LINE (145, 100)-(150, 120)              'thigh
LINE -(145, 140)                        'leg
LINE -(150, 140)                        'feet
LINE (149, 75)-(140, 90)                'uarm
LINE -(164, 95)                         'larm
LINE (149, 75)-(155, 85)                'uarm
LINE -(167, 88)                         'larm
GET (120, 45)-(180, 150), kick2
CLS
CIRCLE (150, 60), 8                     'head
LINE (150, 70 - 2)-(145, 70 + 30)       'body
LINE -(160, 106)                        'thigh**
LINE -(160, 128)                        'feet**
LINE -(165, 128)
LINE (145, 100)-(150, 120)              'thigh
LINE -(145, 140)                        'leg
LINE -(150, 140)                        'feet
LINE (149, 75)-(140, 90)                'uarm
LINE -(164, 95)                         'larm
LINE (149, 75)-(155, 85)                'uarm
LINE -(167, 88)                         'larm
GET (120, 45)-(180, 150), kick3
CLS
CIRCLE (150, 60), 8                     'head
LINE (150, 70 - 2)-(145, 70 + 30)       'body
LINE -(160, 106)                        'thigh**
LINE -(165, 128)                        'feet**
LINE -(170, 128)
LINE (145, 100)-(150, 120)              'thigh
LINE -(145, 140)                        'leg
LINE -(150, 140)                        'feet
LINE (149, 75)-(140, 90)                'uarm
LINE -(164, 95)                         'larm
LINE (149, 75)-(155, 85)                'uarm
LINE -(167, 88)                         'larm
GET (120, 45)-(180, 150), kick4
CLS
CIRCLE (150, 60), 8                     'head
LINE (150, 70 - 2)-(145, 70 + 30)       'body
LINE -(160, 106)                        'thigh**
LINE -(170, 128)                        'feet**
LINE -(175, 125)
LINE (145, 100)-(150, 120)              'thigh
LINE -(145, 140)                        'leg
LINE -(150, 140)                        'feet
LINE (149, 75)-(140, 90)                'uarm
LINE -(164, 95)                         'larm
LINE (149, 75)-(155, 85)                'uarm
LINE -(167, 88)                         'larm
GET (120, 45)-(180, 150), kick5
CLS
CIRCLE (150, 60), 8                     'head
LINE (150, 70 - 2)-(145, 70 + 30)       'body
LINE -(160, 106)                        'thigh**
LINE -(175, 128)                        'feet**
LINE -(180, 125)
LINE (145, 100)-(150, 120)              'thigh
LINE -(145, 140)                        'leg
LINE -(150, 140)                        'feet
LINE (149, 75)-(140, 90)                'uarm
LINE -(164, 95)                         'larm
LINE (149, 75)-(155, 85)                'uarm
LINE -(167, 88)                         'larm
GET (120, 45)-(180, 150), kick6
CLS
CIRCLE (150, 60), 8                     'head
LINE (150, 70 - 2)-(145, 70 + 30)       'body
LINE -(160, 106)                        'thigh**
LINE -(180, 128)                        'feet**
LINE -(185, 125)
LINE (145, 100)-(150, 120)              'thigh
LINE -(145, 140)                        'leg
LINE -(150, 140)                        'feet
LINE (149, 75)-(140, 90)                'uarm
LINE -(164, 95)                         'larm
LINE (149, 75)-(155, 85)                'uarm
LINE -(167, 88)                         'larm
GET (120, 45)-(190, 150), kick7
CLS
CIRCLE (150, 60), 8                     'head
LINE (150, 70 - 2)-(145, 70 + 30)       'body
LINE -(160, 106)                        'thigh**
LINE -(185, 128)                        'feet**
LINE -(190, 125)
LINE (145, 100)-(150, 120)              'thigh
LINE -(145, 140)                        'leg
LINE -(150, 140)                        'feet
LINE (149, 75)-(140, 90)                'uarm
LINE -(164, 95)                         'larm
LINE (149, 75)-(155, 85)                'uarm
LINE -(167, 88)                         'larm
GET (120, 45)-(190, 150), kick8
CLS
CIRCLE (150, 60), 8                     'head
LINE (150, 70 - 2)-(145, 70 + 30)       'body
LINE -(160, 106)                        'thigh**
LINE -(190, 128)                        'feet**
LINE -(195, 124)
LINE (145, 100)-(150, 120)              'thigh
LINE -(145, 140)                        'leg
LINE -(150, 140)                        'feet
LINE (149, 75)-(140, 90)                'uarm
LINE -(164, 95)                         'larm
LINE (149, 75)-(155, 85)                'uarm
LINE -(167, 88)                         'larm
GET (120, 45)-(195, 150), kick9
CLS
CIRCLE (150, 60), 8                     'head
LINE (150, 70 - 2)-(145, 70 + 30)       'body
LINE -(160, 106)                        'thigh**
LINE -(195, 128)                        'feet**
LINE -(200, 124)
LINE (145, 100)-(150, 120)              'thigh
LINE -(145, 140)                        'leg
LINE -(150, 140)                        'feet
LINE (149, 75)-(140, 90)                'uarm
LINE -(164, 95)                         'larm
LINE (149, 75)-(155, 85)                'uarm
LINE -(167, 88)                         'larm
GET (120, 45)-(200, 150), kick10

CLS
CIRCLE (150, 50), 9           'head
LINE (150, 58)-(150, 100)     'body
LINE (150, 70)-(140, 80)      'uarm
LINE -(130, 60)               'larm
LINE (150, 70)-(170, 80)      'uarm
LINE -(160, 90)               'larm
CIRCLE (150, 118), 20         'wheel

LINE (130, 118)-(170, 118)    'spook
LINE (150, 102)-(150, 134)
LINE (136, 108)-(165, 128)
LINE (165, 108)-(135, 128)
GET (120, 40)-(180, 140), sstand

CLS
CIRCLE (150, 50), 9           'head
LINE (150, 58)-(150, 100)     'body
LINE (150, 70)-(140, 80)      'uarm
LINE -(130, 60)               'larm
LINE (150, 70)-(170, 80)      'uarm
LINE -(160, 90)               'larm
CIRCLE (150, 118), 20         'wheel

LINE (130, 118 - 3)-(170, 118 + 3)'spook
LINE (150 + 3, 102)-(150 - 3, 134)

LINE (136 + 3, 108 - 3)-(165 - 3, 128 + 3)
LINE (165, 108)-(135, 128)
GET (120, 40)-(180, 140), wwalk1

CLS
CIRCLE (150, 50), 9           'head
LINE (150, 58)-(150, 100)     'body
LINE (150, 70)-(140, 80)      'uarm
LINE -(130, 60)               'larm
LINE (150, 70)-(170, 80)      'uarm
LINE -(160, 90)               'larm
CIRCLE (150, 118), 20         'wheel

LINE (132, 118 - 6)-(168, 118 + 6)  'spook
LINE (150 + 6, 102)-(150 - 6, 134)

LINE (136 + 6, 108 - 3)-(165 - 6, 128 + 6)
LINE (167, 108 + 3)-(133, 128 - 3)
GET (120, 40)-(180, 140), wwalk2

CLS
CIRCLE (150, 50), 9           'head
LINE (150, 58)-(150, 100)     'body
LINE (150, 70)-(140, 80)      'uarm
LINE -(130, 60)               'larm
LINE (150, 70)-(170, 80)      'uarm
LINE -(160, 90)               'larm
CIRCLE (150, 118), 20         'wheel

LINE (134, 118 - 9)-(168, 118 + 7)  'spook
LINE (150 + 9, 103)-(150 - 9, 132)

LINE (136 + 9, 108 - 5)-(165 - 9, 128 + 5)
LINE (168, 108 + 6)-(132, 128 - 6)
GET (120, 40)-(180, 140), wwalk3

CLS
CIRCLE (150, 50), 9           'head
LINE (150, 58)-(150, 100)     'body

LINE (150, 70)-(132, 78)      'uarm*
LINE -(128, 66)               'larm*

LINE (150, 70)-(170, 80)      'uarm
LINE -(160, 90)               'larm
CIRCLE (150, 118), 20         'wheel

LINE (130, 118)-(170, 118)    'spook
LINE (150, 102)-(150, 134)
LINE (136, 108)-(165, 128)
LINE (165, 108)-(135, 128)
GET (125, 40)-(180, 140), ppunch1

CLS
CIRCLE (150, 50), 9           'head
LINE (150, 58)-(150, 100)     'body

LINE (150, 70)-(135, 75)      'uarm*
LINE -(125, 66)               'larm*

LINE (150, 70)-(170, 80)      'uarm
LINE -(160, 90)               'larm
CIRCLE (150, 118), 20         'wheel

LINE (130, 118)-(170, 118)    'spook
LINE (150, 102)-(150, 134)
LINE (136, 108)-(165, 128)
LINE (165, 108)-(135, 128)
GET (125, 40)-(180, 140), ppunch2

CLS
CIRCLE (150, 50), 9           'head
LINE (150, 58)-(150, 100)     'body

LINE (150, 70)-(132, 73)      'uarm*
LINE -(120, 68)               'larm*

LINE (150, 70)-(170, 80)      'uarm
LINE -(160, 90)               'larm
CIRCLE (150, 118), 20         'wheel

LINE (130, 118)-(170, 118)    'spook
LINE (150, 102)-(150, 134)
LINE (136, 108)-(165, 128)
LINE (165, 108)-(135, 128)
GET (115, 40)-(180, 140), ppunch3

CLS
CIRCLE (150, 50), 9           'head
LINE (150, 58)-(150, 100)     'body

LINE (150, 70)-(132, 70)      'uarm*
LINE -(115, 68)               'larm*

LINE (150, 70)-(170, 80)      'uarm
LINE -(160, 90)               'larm
CIRCLE (150, 118), 20         'wheel

LINE (130, 118)-(170, 118)    'spook
LINE (150, 102)-(150, 134)
LINE (136, 108)-(165, 128)
LINE (165, 108)-(135, 128)
GET (110, 40)-(180, 140), ppunch4

CLS
CIRCLE (150, 118), 20         'wheel
LINE (130, 118)-(170, 118)    'spook
LINE (150, 102)-(150, 134)
LINE (136, 108)-(165, 128)
LINE (165, 108)-(135, 128)
GET (125, 95)-(175, 140), spook

CLS
CIRCLE (150, 60), 35
GET (110, 20)-(190, 100), ssstand

CLS
LINE (140, 50)-(155, 65), , B
LINE (147, 65)-(142, 70)        'body
LINE (146, 65)-(151, 70)        'body
LINE -(151, 100)                'body
LINE (142, 70)-(142, 100)       'body
LINE -(146, 115)                'body
LINE (151, 100)-(146, 115)      'body
LINE (146, 115)-(134, 140)      'leg
LINE -(139, 140)                'feet
LINE (146, 115)-(157, 140)      'leg
LINE -(162, 140)                'feet
LINE (146, 75)-(138, 90)        'arm
LINE -(160, 80)                 'arm
LINE (142, 75)-(135, 85)        'arm/
LINE -(142, 82)                 'arm/
LINE (151, 80)-(160, 75)        'arm/
GET (130, 45)-(170, 145), sssstand

CLS
LINE (140, 50)-(155, 65), , B
LINE (147, 65)-(142, 70)        'body
LINE (146, 65)-(151, 70)        'body
LINE -(151, 100)                'body
LINE (142, 70)-(142, 100)       'body
LINE -(146, 115)                'body
LINE (151, 100)-(146, 115)      'body
LINE (146, 115)-(137, 140)      'leg   134
LINE -(143, 140)                'feet
LINE (146, 115)-(154, 140)      'leg   157
LINE -(159, 140)                'feet
LINE (146, 75)-(138, 90)        'arm
LINE -(160, 80)                 'arm
LINE (142, 75)-(135, 85)        'arm/
LINE -(142, 82)                 'arm/
LINE (151, 80)-(160, 75)        'arm/
GET (130, 45)-(170, 145), wwwwalk

CLS
LINE (140, 50)-(155, 65), , B
LINE (147, 65)-(142, 70)        'body
LINE (146, 65)-(151, 70)        'body
LINE -(151, 100)                'body
LINE (142, 70)-(142, 100)       'body
LINE -(146, 115)                'body
LINE (151, 100)-(146, 115)      'body
LINE (146, 115)-(140, 140)      'leg   134
LINE -(145, 140)                'feet
LINE (146, 115)-(151, 140)      'leg   157
LINE -(156, 140)                'feet
LINE (146, 75)-(138, 90)        'arm
LINE -(160, 80)                 'arm
LINE (142, 75)-(135, 85)        'arm/
LINE -(142, 82)                 'arm/
LINE (151, 80)-(160, 75)        'arm/
GET (130, 45)-(170, 145), wwwwalk1

CLS
LINE (140, 50)-(155, 65), , B
LINE (147, 65)-(142, 70)        'body
LINE (146, 65)-(151, 70)        'body
LINE -(151, 100)                'body
LINE (142, 70)-(142, 100)       'body
LINE -(146, 115)                'body
LINE (151, 100)-(146, 115)      'body
LINE (146, 115)-(143, 140)      'leg   134
LINE -(148, 140)                'feet
LINE (146, 115)-(148, 140)      'leg   157
LINE -(153, 140)                'feet
LINE (146, 75)-(138, 90)        'arm
LINE -(160, 80)                 'arm
LINE (142, 75)-(135, 85)        'arm/
LINE -(142, 82)                 'arm/
LINE (151, 80)-(160, 75)        'arm/
GET (130, 45)-(170, 145), wwwwalk2

CLS
LINE (140, 50)-(155, 65), , B
LINE (147, 65)-(142, 70)        'body
LINE (146, 65)-(151, 70)        'body
LINE -(151, 100)                'body
LINE (142, 70)-(142, 100)       'body
LINE -(146, 115)                'body
LINE (151, 100)-(146, 115)      'body
LINE (146, 115)-(146, 140)      'leg   134
LINE -(151, 140)                'feet
LINE (146, 115)-(145, 140)      'leg   157
LINE -(150, 140)                'feet
LINE (146, 75)-(138, 90)        'arm
LINE -(160, 80)                 'arm
LINE (142, 75)-(135, 85)        'arm/
LINE -(142, 82)                 'arm/
LINE (151, 80)-(160, 75)        'arm/
GET (130, 45)-(170, 145), wwwwalk3

CLS
LINE (140, 50)-(155, 65), , B
LINE (147, 65)-(142, 70)        'body
LINE (146, 65)-(151, 70)        'body
LINE -(151, 100)                'body
LINE (142, 70)-(142, 100)       'body
LINE -(146, 115)                'body
LINE (151, 100)-(146, 115)      'body
LINE (146, 115)-(134, 140)      'leg
LINE -(139, 140)                'feet
LINE (146, 115)-(157, 140)      'leg
LINE -(162, 140)                'feet

LINE (146, 75)-(141, 90)        'arm
LINE -(160, 80)                 'arm

LINE (142, 75)-(135, 85)        'arm/
LINE -(142, 82)                 'arm/
LINE (151, 80)-(160, 75)        'arm/

GET (130, 45)-(170, 145), ppppunch

CLS
LINE (140, 50)-(155, 65), , B
LINE (147, 65)-(142, 70)        'body
LINE (146, 65)-(151, 70)        'body
LINE -(151, 100)                'body
LINE (142, 70)-(142, 100)       'body
LINE -(146, 115)                'body
LINE (151, 100)-(146, 115)      'body
LINE (146, 115)-(134, 140)      'leg
LINE -(139, 140)                'feet
LINE (146, 115)-(157, 140)      'leg
LINE -(162, 140)                'feet

LINE (146, 75)-(144, 90)        'arm
LINE -(167, 80)                 'arm

LINE (142, 75)-(135, 85)        'arm/
LINE -(142, 82)                 'arm/
LINE (151, 80)-(160, 75)        'arm/

GET (130, 45)-(170, 145), ppppunch1

CLS
LINE (140, 50)-(155, 65), , B
LINE (147, 65)-(142, 70)        'body
LINE (146, 65)-(151, 70)        'body
LINE -(151, 100)                'body
LINE (142, 70)-(142, 100)       'body
LINE -(146, 115)                'body
LINE (151, 100)-(146, 115)      'body
LINE (146, 115)-(134, 140)      'leg
LINE -(139, 140)                'feet
LINE (146, 115)-(157, 140)      'leg
LINE -(162, 140)                'feet

LINE (146, 75)-(147, 90)        'arm
LINE -(170, 80)                 'arm

LINE (142, 75)-(135, 85)        'arm/
LINE -(142, 82)                 'arm/
LINE (151, 80)-(160, 75)        'arm/

GET (130, 45)-(175, 145), ppppunch2

CLS
LINE (140, 50)-(155, 65), , B
LINE (147, 65)-(142, 70)        'body
LINE (146, 65)-(151, 70)        'body
LINE -(151, 100)                'body
LINE (142, 70)-(142, 100)       'body
LINE -(146, 115)                'body
LINE (151, 100)-(146, 115)      'body
LINE (146, 115)-(134, 140)      'leg
LINE -(139, 140)                'feet
LINE (146, 115)-(157, 140)      'leg
LINE -(162, 140)                'feet

LINE (146, 75)-(150, 90)        'arm
LINE -(173, 80)                 'arm

LINE (142, 75)-(135, 85)        'arm/
LINE -(142, 82)                 'arm/
LINE (151, 80)-(160, 75)        'arm/

GET (130, 45)-(180, 145), ppppunch3

CLS
LINE (140, 50)-(155, 65), , B
LINE (147, 65)-(142, 70)        'body
LINE (146, 65)-(151, 70)        'body
LINE -(151, 100)                'body
LINE (142, 70)-(142, 100)       'body
LINE -(146, 115)                'body
LINE (151, 100)-(146, 115)      'body
LINE (146, 115)-(134, 140)      'leg
LINE -(139, 140)                'feet
LINE (146, 115)-(157, 140)      'leg
LINE -(162, 140)                'feet

LINE (146, 75)-(153, 90)        'arm
LINE -(176, 78)                 'arm

LINE (142, 75)-(135, 85)        'arm/
LINE -(142, 82)                 'arm/
LINE (151, 80)-(160, 75)        'arm/

GET (130, 45)-(180, 145), ppppunch4

CLS
LINE (140, 50)-(155, 65), , B
LINE (147, 65)-(142, 70)        'body
LINE (146, 65)-(151, 70)        'body
LINE -(151, 100)                'body
LINE (142, 70)-(142, 100)       'body
LINE -(146, 115)                'body
LINE (151, 100)-(146, 115)      'body
LINE (146, 115)-(134, 140)      'leg
LINE -(139, 140)                'feet
LINE (146, 115)-(157, 140)      'leg
LINE -(162, 140)                'feet

LINE (146, 75)-(158, 85)        'arm
LINE -(179, 78)                 'arm

LINE (142, 75)-(135, 85)        'arm/
LINE -(142, 82)                 'arm/
LINE (151, 80)-(160, 75)        'arm/

GET (130, 45)-(185, 145), ppppunch5

CLS
LINE (140, 50)-(155, 65), , B
LINE (147, 65)-(142, 70)        'body
LINE (146, 65)-(151, 70)        'body
LINE -(151, 100)                'body
LINE (142, 70)-(142, 100)       'body
LINE -(146, 115)                'body
LINE (151, 100)-(146, 115)      'body
LINE (146, 115)-(134, 140)      'leg
LINE -(139, 140)                'feet
LINE (146, 115)-(157, 140)      'leg
LINE -(162, 140)                'feet

LINE (146, 75)-(158, 83)        'arm
LINE -(179, 77)                 'arm

LINE (142, 75)-(135, 85)        'arm/
LINE -(142, 82)                 'arm/
LINE (151, 80)-(160, 75)        'arm/

GET (130, 45)-(185, 145), ppppunch6

CLS
LINE (140, 50)-(155, 65), , B
LINE (147, 65)-(142, 70)        'body
LINE (146, 65)-(151, 70)        'body
LINE -(151, 100)                'body
LINE (142, 70)-(142, 100)       'body
LINE -(146, 115)                'body
LINE (151, 100)-(146, 115)      'body
LINE (146, 115)-(134, 140)      'leg
LINE -(139, 140)                'feet
LINE (146, 115)-(157, 140)      'leg
LINE -(162, 140)                'feet

LINE (146, 75)-(158, 80)        'arm
LINE -(180, 77)                 'arm

LINE (142, 75)-(135, 85)        'arm/
LINE -(142, 82)                 'arm/
LINE (151, 80)-(160, 75)        'arm/

GET (130, 45)-(185, 145), ppppunch7

CLS
LINE (140, 50)-(155, 65), , B
LINE (147, 65)-(142, 70)        'body
LINE (146, 65)-(151, 70)        'body
LINE -(151, 100)                'body
LINE (142, 70)-(142, 100)       'body
LINE -(146, 115)                'body
LINE (151, 100)-(146, 115)      'body
LINE (146, 115)-(134, 140)      'leg
LINE -(139, 140)                'feet
LINE (146, 115)-(157, 140)      'leg
LINE -(162, 140)                'feet

LINE (146, 75)-(158, 77)        'arm
LINE -(180, 75)                 'arm

LINE (142, 75)-(135, 85)        'arm/
LINE -(142, 82)                 'arm/
LINE (151, 80)-(160, 75)        'arm/

GET (130, 45)-(185, 145), ppppunch8

CLS
LINE (140, 50)-(155, 65), , B
LINE (147, 65)-(142, 70)        'body
LINE (146, 65)-(151, 70)        'body
LINE -(151, 100)                'body
LINE (142, 70)-(142, 100)       'body
LINE -(146, 115)                'body
LINE (151, 100)-(146, 115)      'body

LINE (146, 115)-(150, 139)      'leg   134
LINE -(155, 140)                'feet

LINE (146, 115)-(145, 140)      'leg   157
LINE -(150, 140)                'feet
LINE (146, 75)-(138, 90)        'arm
LINE -(160, 80)                 'arm
LINE (142, 75)-(135, 85)        'arm/
LINE -(142, 82)                 'arm/
LINE (151, 80)-(160, 75)        'arm/

GET (130, 45)-(170, 145), KKKKICK

CLS
LINE (140, 50)-(155, 65), , B
LINE (147, 65)-(142, 70)        'body
LINE (146, 65)-(151, 70)        'body
LINE -(151, 100)                'body
LINE (142, 70)-(142, 100)       'body
LINE -(146, 115)                'body
LINE (151, 100)-(146, 115)      'body

LINE (146, 115)-(153, 137)      'leg   134
LINE -(158, 135)                'feet

LINE (146, 115)-(145, 140)      'leg   157
LINE -(150, 140)                'feet
LINE (146, 75)-(138, 90)        'arm
LINE -(160, 80)                 'arm
LINE (142, 75)-(135, 85)        'arm/
LINE -(142, 82)                 'arm/
LINE (151, 80)-(160, 75)        'arm/

GET (130, 45)-(170, 145), KKKKICK1

CLS
LINE (140, 50)-(155, 65), , B
LINE (147, 65)-(142, 70)        'body
LINE (146, 65)-(151, 70)        'body
LINE -(151, 100)                'body
LINE (142, 70)-(142, 100)       'body
LINE -(146, 115)                'body
LINE (151, 100)-(146, 115)      'body

LINE (146, 115)-(156, 135)      'leg   134
LINE -(161, 133)                'feet

LINE (146, 115)-(145, 140)      'leg   157
LINE -(150, 140)                'feet
LINE (146, 75)-(138, 90)        'arm
LINE -(160, 80)                 'arm
LINE (142, 75)-(135, 85)        'arm/
LINE -(142, 82)                 'arm/
LINE (151, 80)-(160, 75)        'arm/

GET (130, 45)-(170, 145), KKKKICK2

CLS
LINE (140, 50)-(155, 65), , B
LINE (147, 65)-(142, 70)        'body
LINE (146, 65)-(151, 70)        'body
LINE -(151, 100)                'body
LINE (142, 70)-(142, 100)       'body
LINE -(146, 115)                'body
LINE (151, 100)-(146, 115)      'body

LINE (146, 115)-(163, 135)      'leg   134
LINE -(168, 130)                'feet

LINE (146, 115)-(145, 140)      'leg   157
LINE -(150, 140)                'feet
LINE (146, 75)-(138, 90)        'arm
LINE -(160, 80)                 'arm
LINE (142, 75)-(135, 85)        'arm/
LINE -(142, 82)                 'arm/
LINE (151, 80)-(160, 75)        'arm/

GET (130, 45)-(175, 145), KKKKICK3

CLS
LINE (140, 50)-(155, 65), , B
LINE (147, 65)-(142, 70)        'body
LINE (146, 65)-(151, 70)        'body
LINE -(151, 100)                'body
LINE (142, 70)-(142, 100)       'body
LINE -(146, 115)                'body
LINE (151, 100)-(146, 115)      'body

LINE (146, 115)-(168, 130)      'leg   134
LINE -(173, 125)                'feet

LINE (146, 115)-(145, 140)      'leg   157
LINE -(150, 140)                'feet
LINE (146, 75)-(138, 90)        'arm
LINE -(160, 80)                 'arm
LINE (142, 75)-(135, 85)        'arm/
LINE -(142, 82)                 'arm/
LINE (151, 80)-(160, 75)        'arm/

GET (130, 45)-(180, 145), KKKKICK4

CLS
LINE (140, 50)-(155, 65), , B
LINE (147, 65)-(142, 70)        'body
LINE (146, 65)-(151, 70)        'body
LINE -(151, 100)                'body
LINE (142, 70)-(142, 100)       'body
LINE -(146, 115)                'body
LINE (151, 100)-(146, 115)      'body

LINE (146, 115)-(171, 125)      'leg   134
LINE -(174, 120)                'feet

LINE (146, 115)-(145, 140)      'leg   157
LINE -(150, 140)                'feet
LINE (146, 75)-(138, 90)        'arm
LINE -(160, 80)                 'arm
LINE (142, 75)-(135, 85)        'arm/
LINE -(142, 82)                 'arm/
LINE (151, 80)-(160, 75)        'arm/

GET (130, 45)-(180, 145), KKKKICK5

CLS
LINE (140, 50)-(155, 65), , B
LINE (147, 65)-(142, 70)        'body
LINE (146, 65)-(151, 70)        'body
LINE -(151, 100)                'body
LINE (142, 70)-(142, 100)       'body
LINE -(146, 115)                'body
LINE (151, 100)-(146, 115)      'body

LINE (146, 115)-(176, 122)      'leg   134
LINE -(178, 116)                'feet

LINE (146, 115)-(145, 140)      'leg   157
LINE -(150, 140)                'feet
LINE (146, 75)-(138, 90)        'arm
LINE -(160, 80)                 'arm
LINE (142, 75)-(135, 85)        'arm/
LINE -(142, 82)                 'arm/
LINE (151, 80)-(160, 75)        'arm/

GET (130, 45)-(185, 145), KKKKICK6
RETURN


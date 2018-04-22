RANDOMIZE TIMER
CLS
GOSUB scre
coun = 0
e = 30
f = 20
ine = 0
inx = -INT(RND * 1 + 1)
iny = -INT(RND * 1 + 1)
inyy = 1
x1 = 14
y1 = e + 2
DO: LOOP UNTIL INKEY$ = " "
start = TIMER
DO
i$ = INKEY$
SELECT CASE i$
CASE CHR$(0) + "K": IF ine > 0 THEN ine = 0: ine = ine - 1 ELSE ine = ine - 1
CASE CHR$(0) + "M": IF ine < 0 THEN ine = 0: ine = ine + 1 ELSE ine = ine + 1
CASE "a": IF inf > 0 THEN inf = 0: inf = inf - 1 ELSE inf = inf - 1
CASE "d": IF inf < 0 THEN inf = 0: inf = inf + 1 ELSE inf = inf + 1
CASE "c": IF cheat = 0 THEN cheat = 1: LOCATE 15, e: PRINT "     " ELSE cheat = 0
CASE "q": END
END SELECT

IF coun = 5 THEN coun = 0: GOSUB newblock:

IF cheat = 1 THEN LOCATE 15, e: PRINT "     "
IF cheat = 1 THEN IF y1 > e + 2 THEN ine = 2
IF cheat = 1 THEN IF y1 < e + 2 THEN ine = -2

COLOR 15
fin = TIMER
tim = INT(fin - start)
LOCATE 1, 10: PRINT tim; " seconds"
LOCATE x1, y1: PRINT " "

LOCATE 15, e: PRINT "     "
LOCATE 15, f: PRINT "     "

'IF ine = iny AND y1 > e - 1 AND y1 < e + 5 THEN iny = iny + inyy: inyy = -inyy
'IF inf = iny AND y1 > f - 1 AND y1 < f + 5 THEN iny = iny + inyy: inyy = -inyy
 
IF iny = 0 THEN iny = 1
IF iny > 3 THEN iny = iny - 1
IF iny < -3 THEN iny = iny + 1

IF ine < -3 THEN ine = -3
IF ine > 3 THEN ine = 3

IF inf < -3 THEN inf = -3
IF inf > 3 THEN inf = 3


check:
IF inx > 0 AND iny > 0 THEN GOTO 8        '\  down
IF inx < 0 AND iny < 0 THEN GOTO 9        '\  up
IF inx > 0 AND iny < 0 THEN GOTO 10       '/  down
IF inx < 0 AND iny > 0 THEN GOTO 11       '/  up

8
IF SCREEN(x1, y1 + 1) = 219 THEN iny = -iny: GOTO 2
IF SCREEN(x1 + 1, y1) = 219 THEN inx = -inx: GOTO 2
IF SCREEN(x1 + 1, y1 + 1) = 219 THEN inx = -inx: iny = -iny: GOTO 2
9
IF SCREEN(x1, y1 - 1) = 219 THEN iny = -iny: GOTO 2
IF SCREEN(x1 - 1, y1) = 219 THEN inx = -inx: GOTO 2
IF SCREEN(x1 - 1, y1 - 1) = 219 THEN inx = -inx: GOTO 2
10
IF SCREEN(x1, y1 - 1) = 219 THEN iny = -iny: GOTO 2
IF SCREEN(x1 + 1, y1) = 219 THEN inx = -inx: GOTO 2
IF SCREEN(x1 + 1, y1 - 1) = 219 THEN inx = -inx: GOTO 2
11
IF SCREEN(x1, y1 + 1) = 219 THEN iny = -iny: GOTO 2
IF SCREEN(x1 - 1, y1) = 219 THEN inx = -inx: GOTO 2
IF SCREEN(x1 - 1, y1 + 1) = 219 THEN inx = -inx: GOTO 2

2 IF x1 + inx > 16 THEN inx = -inx
  IF x1 + inx < 3 THEN inx = -inx
  IF y1 + iny > 76 THEN iny = -iny
  IF y1 + iny < 5 THEN iny = -iny

x1 = x1 + inx
y1 = y1 + iny
e = e + ine
f = f + inf

IF e < 3 THEN e = 3
IF e > 75 THEN e = 75
IF f < 3 THEN f = 3
IF f > 75 THEN f = 75


COLOR 12
LOCATE x1, y1: PRINT "*"
IF x1 > 13 AND x1 < 16 AND y1 > e - 1 AND y1 < e + 5 THEN inx = -inx
IF x1 + inx > 14 AND x1 < 16 AND y1 > e - 1 AND y1 < e + 5 THEN inx = -inx

IF x1 > 13 AND x1 < 16 AND y1 > f - 1 AND y1 < f + 5 THEN inx = -inx
IF x1 + inx > 14 AND x1 < 16 AND y1 > f - 1 AND y1 < f + 5 THEN inx = -inx

IF x1 > 15 THEN GOTO ag:
COLOR 11
LOCATE 15, e: PRINT "ÄÄÄÄ-"
COLOR 13
LOCATE 15, f: PRINT "ÄÄÄÄ-"
FOR i = 1 TO 500: NEXT
coun = coun + 1
LOOP


scre:
FOR i = 3 TO 79
LOCATE 2, i: PRINT "Ä"
LOCATE 18, i: PRINT "Ä"
NEXT
FOR i = 3 TO 17
LOCATE i, 2: PRINT "³"
LOCATE i, 80: PRINT "³"
NEXT
LOCATE 2, 2: PRINT "Ú"
LOCATE 2, 80: PRINT "¿"
LOCATE 18, 2: PRINT "À"
LOCATE 18, 80: PRINT "Ù"
RETURN

ag:
fin = TIMER
tim = INT(fin - start)
COLOR 15
LOCATE 10, 30: PRINT "Time taken = "; tim; " seconds"
FOR i = 1 TO 1000: NEXT
END

newblock:
COLOR 10
kl = INT(RND * 10 + 3)
kj = INT(RND * 70 + 3)
LOCATE kl, kj: PRINT "Û"
RETURN


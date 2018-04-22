RANDOMIZE TIMER
CLS
b = 100
x = 10
y = 10
x1 = 5
y1 = 5
e = INT(RND * 73 + 6)
inx = INT(RND * 2 + 1)
iny = INT(RND * 2 + 1)
ine = 1
DIM pos1(b)
DIM pos2(b)
GOSUB scre
num = 0
start = TIMER
DO
i$ = INKEY$
SELECT CASE i$
CASE CHR$(0) + "H": LOCATE x, y: PRINT " ": x = x - 1
CASE CHR$(0) + "P": LOCATE x, y: PRINT " ": x = x + 1
CASE CHR$(0) + "K": LOCATE x, y: PRINT " ": y = y - 1
CASE CHR$(0) + "M": LOCATE x, y: PRINT " ": y = y + 1
CASE "q": END
CASE " ": IF num > b - 1 THEN GOTO 1 ELSE num = num + 1: pos1(num) = x: pos2(num) = y
END SELECT
IF x > 17 THEN x = 17
IF x < 3 THEN x = 3
IF y > 78 THEN y = 78
IF y < 3 THEN y = 3
COLOR 10
1 LOCATE x, y: PRINT "Û"
COLOR 11
LOCATE 16, e: PRINT "Ä"
LOCATE 16, e + 1: PRINT "Ä"
LOCATE 16, e + 2: PRINT "Ä"
LOCATE 16, e - 1: PRINT "Ä"
LOCATE 16, e - 2: PRINT "Ä"
COLOR 10
FOR k = 1 TO num
LOCATE pos1(k), pos2(k): PRINT "Û"
NEXT

COLOR 15
fin = TIMER
tim = INT(fin - start)
LOCATE 1, 10: PRINT tim; " seconds"
LOCATE x1, y1: PRINT " "

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

2 x1 = x1 + inx
  y1 = y1 + iny

IF x1 > 16 THEN inx = -inx
IF x1 < 4 THEN inx = -inx
IF y1 > 76 THEN iny = -iny
IF y1 < 5 THEN iny = -iny
COLOR 12
LOCATE x1, y1: PRINT "ø": FOR i = 1 TO 300: NEXT

IF x1 + inx > 15 AND y1 > e - 3 AND y1 < e + 3 THEN GOTO e:
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

e:
fin = TIMER
tim = INT(fin - start)
COLOR 15
LOCATE 10, 30: PRINT "Time taken = "; tim; " seconds"
FOR i = 1 TO 1000: NEXT
END


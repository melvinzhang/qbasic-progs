start = TIMER

CLS
DIM tem(4)
a = 10
b = 38
x = 10
y = 10

GOSUB scre
GOSUB choose

1 DO
i$ = INKEY$
SELECT CASE i$
CASE "w": IF SCREEN(x - 1, y) = 32 THEN LOCATE x, y: PRINT " ": x = x - 1
CASE "s", "x": IF SCREEN(x + 1, y) = 32 THEN LOCATE x, y: PRINT " ": x = x + 1
CASE "a": IF SCREEN(x, y - 1) = 32 THEN LOCATE x, y: PRINT " ": y = y - 1
CASE "d": IF SCREEN(x, y + 1) = 32 THEN LOCATE x, y: PRINT " ": y = y + 1
CASE " ": GOSUB place
CASE "q": END
END SELECT
IF y < 3 THEN y = 3
IF x < 3 THEN x = 3
IF y > 79 THEN y = 79
IF x > 17 THEN x = 17

LOCATE x, y: PRINT CHR$(cha)

fin = TIMER
tim = INT(fin - start)
IF tim > 50 THEN GOSUB water
LOCATE 2, 10: PRINT "Time = "; tim
LOOP

choose:
RANDOMIZE TIMER
k = INT(RND * 7 + 1)
SELECT CASE k
CASE 1: cha = 186
CASE 2: cha = 205
CASE 3: cha = 206
CASE 4: cha = 201
CASE 5: cha = 187
CASE 6: cha = 188
CASE 7: cha = 200
END SELECT
GOTO 1

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
LOCATE 10, 38: PRINT "o"
RETURN

place:
LOCATE x, y: PRINT CHR$(cha)
DO
i$ = INKEY$
SELECT CASE i$
CASE "w": IF SCREEN(x - 1, y) = 32 THEN x = x - 1: GOSUB choose
CASE "s", "x": IF SCREEN(x + 1, y) = 32 THEN x = x + 1: GOSUB choose
CASE "a": IF SCREEN(x, y - 1) = 32 THEN y = y - 1: GOSUB choose
CASE "d": IF SCREEN(x, y + 1) = 32 THEN y = y + 1: GOSUB choose
CASE "q": END
END SELECT
LOOP
RETURN

water:     
IF SCREEN(a - 1, b) = 186 THEN tem(1) = 186: GOTO 10
IF SCREEN(a - 1, b) = 206 THEN tem(1) = 206: GOTO 10
IF SCREEN(a - 1, b) = 187 THEN tem(1) = 187: GOTO 10
IF SCREEN(a - 1, b) = 201 THEN tem(1) = 201: GOTO 10

19
IF SCREEN(a + 1, b) = 186 THEN tem(2) = 186: GOTO 20
IF SCREEN(a + 1, b) = 206 THEN tem(2) = 206: GOTO 20
IF SCREEN(a + 1, b) = 200 THEN tem(2) = 200: GOTO 20
IF SCREEN(a + 1, b) = 188 THEN tem(2) = 188: GOTO 20

29
IF SCREEN(a, b - 1) = 205 THEN tem(3) = 205: GOTO 30
IF SCREEN(a, b - 1) = 206 THEN tem(3) = 206: GOTO 30
IF SCREEN(a, b - 1) = 200 THEN tem(3) = 200: GOTO 30
IF SCREEN(a, b - 1) = 201 THEN tem(3) = 201: GOTO 30

39
IF SCREEN(a, b + 1) = 205 THEN tem(4) = 205: GOTO 40
IF SCREEN(a, b + 1) = 206 THEN tem(4) = 206: GOTO 40
IF SCREEN(a, b + 1) = 188 THEN tem(4) = 188: GOTO 40
IF SCREEN(a, b + 1) = 187 THEN tem(4) = 187: GOTO 40
RETURN

10
a = a - 1
COLOR 1
LOCATE a, b: PRINT CHR$(tem(1))
COLOR 0
GOTO 19

20
a = a + 1
COLOR 1
LOCATE a, b: PRINT CHR$(tem(2))
COLOR 0
GOTO 29

30
b = b - 1
COLOR 1
LOCATE a, b: PRINT CHR$(tem(3))
COLOR 0
GOTO 39

40
b = b + 1
COLOR 1
LOCATE a, b: PRINT CHR$(tem(4))
COLOR 0
RETURN


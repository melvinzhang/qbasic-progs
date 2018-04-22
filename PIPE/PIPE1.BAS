CLS
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




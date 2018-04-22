CLS
x = 10
y = 10
DIM xp(14)
DIM yp(76)
DIM ch(1064)
DIM tem(3)
tem1 = 0

GOSUB scre
GOSUB choose

DO
    i$ = INKEY$
    SELECT CASE i$
        CASE "w": IF SCREEN(x - 1, y) <> 111 THEN LOCATE x, y: PRINT " ": x = x - 1
        CASE "s", "x": IF SCREEN(x + 1, y) <> 111 THEN LOCATE x, y: PRINT " ": x = x + 1
        CASE "a": IF SCREEN(x, y - 1) <> 111 THEN LOCATE x, y: PRINT " ": y = y - 1
        CASE "d": IF SCREEN(x, y + 1) <> 111 THEN LOCATE x, y: PRINT " ": y = y + 1
        CASE " ": GOSUB place
        CASE "q": END
    END SELECT
    IF y < 3 THEN y = 3
    IF x < 3 THEN x = 3
    IF y > 79 THEN y = 79
    IF x > 17 THEN x = 17

    LOCATE x, y: PRINT CHR$(cha)

    FOR i = 1 TO tem(1)
        FOR i2 = 1 TO tem(3)
            LOCATE xp(i), yp(i): PRINT CHR$(ch(i2))
        NEXT
    NEXT

LOOP

choose:
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
tem(1) = tem(1) + 1
tem(2) = tem(2) + 1
tem(3) = tem(3) + 1
xp(tem(1)) = x
yp(tem(2)) = y
ch(tem(3)) = cha
GOSUB choose
RETURN

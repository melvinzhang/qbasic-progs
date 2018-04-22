CLS
x = 10
y = 10
tem = 0

GOSUB scre
DO
i$ = INKEY$
SELECT CASE i$
CASE "w": IF SCREEN(x - 1, y) = 32 THEN LOCATE x, y: PRINT " ": x = x - 1
CASE "s", "x": IF SCREEN(x + 1, y) = 32 THEN LOCATE x, y: PRINT " ": x = x + 1
CASE "a": IF SCREEN(x, y - 1) = 32 THEN LOCATE x, y: PRINT " ": y = y - 1
CASE "d": IF SCREEN(x, y + 1) = 32 THEN LOCATE x, y: PRINT " ": y = y + 1
CASE "r": GOSUB road
CASE " ": GOSUB onto
CASE "q": END
END SELECT
IF y < 3 THEN y = 3
IF y > 79 THEN y = 79
IF x < 3 THEN x = 3
IF x > 17 THEN x = 17

LOCATE x, y: PRINT "+"
LOOP
END


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

LOCATE 20, 2: PRINT "R : Roads   M : Mine"
LOCATE 21, 2: PRINT "V : View    C : Abandon Colony"
LOCATE 22, 2: PRINT "G : Grow    B : Build colony"
RETURN

road:

LOCATE 17, 30: PRINT "   1 : ³"
LOCATE 18, 30: PRINT "   2 : Ä"
LOCATE 19, 30: PRINT "   3 : Å"
LOCATE 20, 30: PRINT "   4 : À"


5 i$ = INKEY$
IF i$ = "" THEN GOTO 5
IF i$ = "1" THEN tem = 179
IF i$ = "2" THEN tem = 196
IF i$ = "2" THEN tem = 197
IF i$ = "q" THEN RETURN
LOCATE 20, 30: PRINT "         "
LOCATE 21, 30: PRINT "         "
RETURN

onto:
DO
j$ = INKEY$
SELECT CASE j$
CASE "w": IF SCREEN(x - 1, y) = 32 THEN LOCATE x, y: PRINT CHR$(tem): x = x - 1: RETURN
CASE "s", "x": IF SCREEN(x + 1, y) = 32 THEN LOCATE x, y: PRINT CHR$(tem): x = x + 1: RETURN
CASE "d": IF SCREEN(x, y + 1) = 32 THEN LOCATE x, y: PRINT CHR$(tem): y = y + 1: RETURN
CASE "a": IF SCREEN(x, y - 1) = 32 THEN LOCATE x, y: PRINT CHR$(tem): y = y - 1: RETURN
CASE "q": END
END SELECT
LOOP
RETURN


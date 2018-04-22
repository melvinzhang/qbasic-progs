RANDOMIZE TIMER
CLS
GOSUB scre
e = 30
ine = 0
inx = -INT(RND * 1 + 1)
iny = -INT(RND * 1 + 1)
x1 = 14
y1 = e + 2
DO: LOOP UNTIL INKEY$ = " "
DO
i$ = INKEY$
SELECT CASE i$
CASE "a": ine = ine - 1
CASE "d": ine = ine + 1
CASE "q": END
END SELECT

LOCATE x1, y1: PRINT " "
LOCATE 15, e: PRINT "     "
IF ine < -3 THEN ine = -3
IF ine > 3 THEN ine = 3
2 x1 = x1 + inx
  y1 = y1 + iny
  e = e + ine

IF x1 > 15 THEN inx = -inx
IF x1 < 5 THEN inx = -inx
IF y1 > 76 THEN iny = -iny
IF y1 < 5 THEN iny = -iny
IF e < 3 THEN e = 3
IF e > 75 THEN e = 75
LOCATE x1, y1: PRINT "*"
IF x1 > 13 AND x1 < 16 AND y1 > e AND y1 < e + 5 THEN inx = -inx
IF x1 > 15 THEN END
IF x1 + inx > 14 AND x1 < 16 AND y1 > e AND y1 < e + 5 THEN inx = -inx
LOCATE 15, e: PRINT "-----"
FOR i = 1 TO 500: NEXT
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


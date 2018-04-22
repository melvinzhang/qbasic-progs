CLS
FOR i = 8 TO 17: LOCATE i, 15: PRINT "³": NEXT i
FOR i = 15 TO 65: LOCATE 7, i: PRINT "Ä": NEXT i
FOR i = 8 TO 17: LOCATE i, 65: PRINT "³": NEXT i
FOR i = 15 TO 65: LOCATE 18, i: PRINT "Ä": NEXT i
FOR i = 15 TO 65: LOCATE 13, i: PRINT "Ä": NEXT i


i = 10
g = 40
j = 14
10 i$ = INKEY$
SELECT CASE i$
CASE CHR$(0) + "P": i = i + 1:  CLS : GOTO lin  'cursor down **
CASE CHR$(0) + "H": i = i - 1:  CLS : GOTO lin   'cursor up   **
CASE CHR$(0) + "K": g = g - 1:  CLS : GOTO lin   'cursor left **
CASE CHR$(0) + "M": g = g + 1:  CLS : GOTO lin   'cursor right**
CASE "s", "x": j = j + 1: CLS : GOTO lin
CASE "w": j = j - 1: CLS : GOTO lin
CASE "q", "Q": END
CASE ELSE
END SELECT
IF i > 17 THEN i = 17
IF g < 16 THEN g = 16
IF i < 8 THEN i = 8
IF g > 64 THEN g = 64
LOCATE i, g: PRINT "+"
LOCATE 1, 1: PRINT i
LOCATE 2, 1: PRINT g
LOCATE 3, i: PRINT j
GOTO 10



lin:
IF j > 18 THEN j = 18
IF j < 7 THEN j = 7
FOR i1 = 7 TO 18: LOCATE i1, 15: PRINT "³": NEXT i1
FOR i1 = 15 TO 65: LOCATE 7, i1: PRINT "Ä": NEXT i1
FOR i1 = 8 TO 18: LOCATE i1, 65: PRINT "³": NEXT i1
FOR i1 = 15 TO 65: LOCATE 18, i1: PRINT "Ä": NEXT i1
FOR i1 = 15 TO 65: LOCATE j, i1: PRINT "Ä": NEXT i1
GOTO 10


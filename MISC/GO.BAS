CLS
i = 10
g = 20
b = 20
c = 40
INPUT "Speed of A"; s
INPUT "speed of B"; s1
10 i$ = INKEY$
SELECT CASE i$
CASE CHR$(0) + "P": k = s         'cursor down **
CASE CHR$(0) + "H": k = -s       'cursor up   **
CASE CHR$(0) + "K": l = -s       'cursor left **
CASE CHR$(0) + "M": l = s        'cursor right**
CASE "s", "x": z = s1
CASE "w": z = -s1
CASE "a": x = -s1
CASE "d": x = s1
CASE "q": END
CASE ELSE
END SELECT
LOCATE i, g: PRINT " "
LOCATE b, c: PRINT " "
i = i + k
g = g + l
b = b + z
c = c + x
IF i > 23 THEN i = 23
IF i < 1 THEN i = 1
IF g > 80 THEN g = 80
IF g < 1 THEN g = 1

IF b > 23 THEN b = 23
IF b < 1 THEN b = 1
IF c > 80 THEN c = 80
IF c < 1 THEN c = 1

IF b = i AND c = g THEN END

COLOR 12, 0
LOCATE i, g: PRINT CHR$(5)
COLOR 13, 0
LOCATE b, c: PRINT "#"
FOR h = 1 TO 300: NEXT h
GOTO 10


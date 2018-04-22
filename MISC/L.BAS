10 SCREEN 1
g = 150
i = 100
g1 = 200
i1 = 150
g2 = 10
i2 = 50
g3 = 50
i3 = 100
d = g
q = i
20 i$ = INKEY$
IF i$ = CHR$(0) + "P" THEN i = i + 5: CLS
IF i$ = CHR$(0) + "H" THEN i = i - 5: CLS
IF i$ = CHR$(0) + "K" THEN g = g - 5: CLS
IF i$ = CHR$(0) + "M" THEN g = g + 5: CLS

IF i$ = "w" THEN i1 = i1 - 5: CLS
IF i$ = "s" OR i$ = "x" THEN i1 = i1 + 5: CLS
IF i$ = "a" THEN g1 = g1 - 5: CLS
IF i$ = "d" THEN g1 = g1 + 5: CLS

IF i$ = "o" THEN i2 = i2 - 5: CLS
IF i$ = "l" OR i$ = "." THEN i2 = i2 + 5: CLS
IF i$ = "k" THEN g2 = g2 - 5: CLS
IF i$ = ";" THEN g2 = g2 + 5: CLS

IF i$ = "q" THEN END
LINE (g, i)-(g1, i1)
LINE (g2, i2)-(g, i)
LINE (g3, i3)-(g2, i2)
LINE (g1, i1)-(g3, i3)
GOTO 20






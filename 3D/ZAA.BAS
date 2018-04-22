CLS
SCREEN 1
g = 150
h = 100
DIM xc(4): DIM yc(4)
LET xc(1) = 130
LET yc(1) = 80
LET xc(2) = 180
LET yc(2) = 80
LET xc(3) = 130
LET yc(3) = 110
LET xc(4) = 180
LET yc(4) = 110

LINE (0, 0)-(xc(1), yc(1))
LINE (0, 190)-(xc(3), yc(3))
LINE (315, 0)-(xc(2), yc(2))
LINE (315, 190)-(xc(4), yc(4))
LINE (xc(1), yc(1))-(xc(3), yc(3))
LINE (xc(1), yc(1))-(xc(2), yc(2))
LINE -(xc(4), yc(4))
LINE -(xc(3), yc(3))

LINE (50, 159)-(50, 31)
LINE (100, 128)-(100, 62)
LINE (210, 128)-(210, 62)
LINE (50, 159)-(50, 31)
LINE (263, 159)-(263, 31)
DO
1 LET i$ = INKEY$
IF i$ = "" THEN GOTO 1
SELECT CASE i$
CASE "w": LET g = g - 5
CASE "s": LET g = g + 5
CASE "a": LET h = h - 5
CASE "d": LET h = h + 5
CASE "q": END
CASE ELSE
END SELECT
PSET (h, g)
LOCATE 1, 1: PRINT "G ="; g
LOCATE 2, 1: PRINT "H ="; h
LOOP
END



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
CLS

LINE (0, 0)-(xc(1), yc(1))
LINE (0, 190)-(xc(3), yc(3))
LINE (315, 0)-(xc(2), yc(2))
LINE (315, 190)-(xc(4), yc(4))
LINE (xc(1), yc(1))-(xc(3), yc(3))
LINE (xc(1), yc(1))-(xc(2), yc(2))
LINE -(xc(4), yc(4))
LINE -(xc(3), yc(3))

LINE (50, 159)-(50, 31)      'l1
LINE (100, 128)-(100, 62)   'l2

LINE (210, 128)-(210, 62)    'r1
LINE (263, 159)-(263, 31)    'r2

DO
1 LET i$ = INKEY$
IF i$ = "" THEN GOTO 1
SELECT CASE i$
CASE "w": LET g = g - 5
CASE "s": LET g = g + 5
CASE "a": LET h = h - 5
CASE "d": LET h = h + 5
CASE "q": END
CASE "v": GOSUB rm
CASE "r": GOSUB r1
CASE "f": GOSUB r1e
CASE "g": GOSUB cb1
CASE "h": GOSUB cb2
CASE "z": GOSUB r2
CASE ELSE
END SELECT
PSET (h, g)
LOCATE 1, 1: PRINT "G ="; g
LOCATE 2, 1: PRINT "H ="; h
LOOP
END

rm:
LINE (210, 62)-(263, 31), 0
LINE (211, 62)-(262, 31), 0
LINE (210, 128)-(263, 159), 0
LINE (211, 128)-(262, 159), 0
LINE (210, 62)-(263, 62)
LINE (210, 128)-(263, 128)
RETURN

r1:
LINE (210, 62)-(xc(2), yc(2)), 0
PSET (204, 66), 0
LINE (210, 128)-(xc(4), yc(4)), 0
PSET (204, 124), 0
RETURN

r1e:
LINE (210, 62)-(xc(2), yc(2)), 0
PSET (204, 66), 0
LINE (210, 128)-(xc(4), yc(4)), 0
PSET (204, 124), 0
LINE (xc(2), 80)-(210, 80)
LINE (xc(4), 110)-(210, 110)
RETURN

cb1:
LINE (101, 60)-(209, 128), 0, BF
LINE (100, 62)-(210, 62)
LINE (100, 128)-(210, 128)
RETURN

cb2:
LINE (51, 31)-(262, 159), 0, BF
LINE (50, 31)-(263, 31)
LINE (50, 159)-(263, 159)
RETURN

r2:
LINE (264, 0)-(315, 190), 0, BF
LINE (263, 31)-(315, 31)
LINE (263, 159)-(315, 159)
RETURN




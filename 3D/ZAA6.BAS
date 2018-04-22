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

LINE (50, 159)-(50, 31)     'l1
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
CASE "r": GOSUB rm
CASE "t": GOSUB r1
CASE "y": GOSUB r1e
CASE "u": GOSUB cb1
CASE "i": GOSUB cb2
CASE "o": GOSUB r2
CASE "p": GOSUB l1
CASE "f": GOSUB lm
CASE "g": GOSUB l2
CASE "h": GOSUB cr1
CASE "j": GOSUB crm
CASE "k": GOSUB cr2
CASE "l": GOSUB cl1
CASE ";": GOSUB clm
CASE "'": GOSUB cl2
CASE ELSE
END SELECT
PSET (h, g)
LOCATE 1, 1: PRINT "G ="; g
LOCATE 2, 1: PRINT "H ="; h
LOOP
END

rm:
LINE (211, 31)-(262, 159), 0, BF
LINE (210, 62)-(263, 62)
LINE (210, 128)-(263, 128)
RETURN

r1:
LINE (181, 60)-(210 - 1, 159), 0, BF
RETURN

r1e:
LINE (181, 60)-(210 - 1, 159), 0, BF
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

l1:
LINE (101, 62)-(xc(3) - 1, yc(3) + 20), 0, BF
LINE (xc(1), yc(1))-(101, yc(1))
LINE (xc(3), yc(3))-(101, yc(3))
RETURN

lm:
LINE (51, 31)-(100 - 1, 159), 0, BF
LINE (100, 128)-(51, 128)
LINE (100, 62)-(51, 62)
RETURN

l2:
LINE (0, 0)-(50 - 1, 190), 0, BF
LINE (50, 31)-(0, 31)
LINE (50, 159)-(0, 159)
RETURN

cr1:
LINE (181, 60)-(210 - 1, 159), 0, BF
LINE (xc(2), yc(2))-(210, 62)
LINE (xc(4), yc(4))-(210, 128)
RETURN

crm:
LINE (211, 31)-(262, 159), 0, BF
LINE (210, 62)-(263, 31)
LINE (210, 128)-(263, 159)
RETURN

cr2:
LINE (264, 0)-(315, 190), 0, BF
LINE (263, 31)-(315, 0)
LINE (263, 159)-(315, 190)
RETURN

cl1:
LINE (101, 62)-(xc(3) - 1, yc(3) + 20), 0, BF
LINE (xc(1), yc(1))-(100, 62)
LINE (xc(3), yc(3))-(100, 128)
RETURN

clm:
LINE (51, 31)-(100 - 1, 159), 0, BF
LINE (100, 62)-(50, 31)
LINE (100, 128)-(50, 159)
RETURN

cl2:
LINE (0, 0)-(50 - 1, 190), 0, BF
LINE (50, 31)-(0, 0)
LINE (50, 159)-(0, 190)
RETURN


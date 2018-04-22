SCREEN 1
CLS
DIM scren(80, 24)
FOR i = 1 TO 24
FOR i1 = 1 TO 80
scren(i1, i) = 0
NEXT
NEXT
scren(5, 5) = 1
scren(15, 10) = 1
scren(25, 15) = 1
scren(35, 20) = 1
scren(45, 6) = 1
scren(55, 7) = 1
scren(65, 8) = 1
scren(75, 9) = 1
scren(15, 15) = 1
ud = 10: lr = 10: dir = 1
scren(lr, ud) = 2
DO
i$ = INKEY$
SELECT CASE i$
CASE "q": END
CASE "w": GOSUB move
CASE "a": GOSUB right
CASE "d": GOSUB left
CASE ELSE
END SELECT
GOSUB bug
LOOP

right:
dir = dir + 1
IF dir = 5 THEN dir = 1
RETURN

left:
dir = dir - 1
IF dir = 0 THEN dir = 4
RETURN

move:
IF dir = 1 THEN GOSUB nor
IF dir = 2 THEN GOSUB eas
IF dir = 3 THEN GOSUB sou
IF dir = 4 THEN GOSUB wes
RETURN

nor:
scren(lr, ud) = 0
ud = ud - 1
scren(lr, ud) = 2
RETURN

eas:
scren(lr, ud) = 0
lr = lr + 1
scren(lr, ud) = 2
RETURN

sou:
scren(lr, ud) = 0
ud = ud + 1
scren(lr, ud) = 2
RETURN

wes:
scren(lr, ud) = 0
lr = lr - 1
scren(lr, ud) = 2
RETURN




bug:
IF scren(4, 8) = 1 THEN GOSUB cl2
IF scren(2, 8) = 32 THEN GOSUB l1
IF scren(3, 8) = 32 THEN GOSUB lm
IF scren(4, 8) = 32 THEN GOSUB l2
IF scren(2, 10) = 32 THEN GOSUB r1e
IF scren(3, 10) = 32 THEN GOSUB rm
IF scren(4, 10) = 32 THEN GOSUB r2
IF scren(2, 10) = 1 THEN GOSUB cr1
IF scren(3, 10) = 1 THEN GOSUB crm
IF scren(4, 10) = 1 THEN GOSUB cr2
IF scren(2, 8) = 1 THEN GOSUB cl1
IF scren(3, 8) = 1 THEN GOSUB clm
IF scren(2, 8) = 43 THEN GOSUB l1
IF scren(3, 8) = 43 THEN GOSUB lm
IF scren(4, 8) = 43 THEN GOSUB l2
IF scren(2, 10) = 43 THEN GOSUB r1e
IF scren(3, 10) = 43 THEN GOSUB rm
IF scren(4, 10) = 43 THEN GOSUB r2
IF scren(2, 9) = 1 THEN GOSUB cb1
IF scren(3, 9) = 1 THEN GOSUB cb2
RETURN

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






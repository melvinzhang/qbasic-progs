ON ERROR GOTO han
CLS
SCREEN 1
DIM tem(10)
DIM temp(10)
sp = 5
linco = 5
colo = 1
wi = 290
hi = 190
ud = INT(hi / 2)
lr = INT(wi / 2)
g = 5
d = 0
d1 = 0
d2 = 0
d3 = 0
fac = 7
func$ = "Line            "
1 i$ = INKEY$
SELECT CASE i$
CASE "": GOTO 1
CASE CHR$(0) + "H": PRESET (lr, ud): ud = ud - g
CASE CHR$(0) + "P": PRESET (lr, ud): ud = ud + g
CASE CHR$(0) + "K": PRESET (lr, ud): lr = lr - g
CASE CHR$(0) + "M": PRESET (lr, ud): lr = lr + g
CASE CHR$(0) + ";": GOSUB increme
CASE " ": d = d + 1: GOSUB choose
CASE "r": d = 0
CASE "": END
CASE "c": GOSUB col
CASE "g": fac = 2: func$ = "Copy          "
CASE "p": fac = 3: func$ = "Paste"
CASE "1": sp = 1
CASE "2": sp = 2
CASE "3": sp = 3
CASE "4": sp = 4
CASE "5": sp = 5
CASE "l": fac = 7: func$ = "Line             "
CASE CHR$(0) + "=": LET fac = 1: func$ = "Paint         "
CASE CHR$(0) + "<": fac = 4: func$ = "Clear       "
CASE CHR$(0) + ">": CLS : d = 0
CASE CHR$(0) + "?": fac = 5: func$ = "Circle"
CASE CHR$(0) + "@": fac = 6: func$ = "Save       "
CASE CHR$(0) + "A": GOSUB load
CASE ELSE
END SELECT

IF lr > wi THEN lr = wi
IF lr < 1 THEN lr = 1
IF ud > hi THEN ud = hi
IF ud < 1 THEN ud = 1
PSET (lr, ud)
LOCATE 1, 1: PRINT "Using "; func$
GOTO 1

choose:
IF fac = 1 THEN GOSUB pain
IF fac = 2 THEN d1 = d1 + 1: GOSUB sav
IF fac = 3 THEN GOSUB cho
IF fac = 4 THEN d2 = d2 + 1: GOSUB clean
IF fac = 5 THEN GOSUB cir
IF fac = 6 THEN d3 = d3 + 1: GOSUB save
IF fac = 7 THEN GOSUB lin
RETURN

lin:
IF d = 1 THEN tem(1) = lr: tem(2) = ud: PSET (lr, ud): lr = lr + g
IF d = 2 THEN LINE (tem(1), tem(2))-(lr, ud): tem(1) = lr: tem(2) = ud
IF d > 2 THEN LINE (tem(1), tem(2))-(lr, ud): tem(1) = lr: tem(2) = ud
RETURN

pain:
PRESET (lr, ud)
PAINT (lr, ud), colo, linco
RETURN

col:
LOCATE 1, 1: INPUT "Paint color "; colo
LOCATE 2, 1: INPUT "Line color "; linco
LOCATE 1, 1: PRINT "                      "
LOCATE 2, 1: PRINT "                      "
RETURN

sav:
IF d1 = 1 THEN PSET (lr, ud): temp(1) = lr: temp(2) = ud: lr = lr + g
IF d1 > 1 THEN LINE (temp(1), temp(2))-(lr, ud), , B: d1 = 0: GOTO 2
RETURN
2 LINE (temp(1), temp(2))-(lr, ud), 0, B
j = 4 + INT(((PMAP(lr, 0) - PMAP(temp(1), 0) + 1) * (2) + 7) / 8) * 1 * (PMAP(ud, 1) - PMAP(temp(2), 1) + 1)
REDIM box!(j)
GET (temp(1), temp(2))-(lr, ud), box!
RETURN

increme:
LOCATE 1, 1: INPUT "Input length moved each time "; g
LOCATE 1, 1: PRINT "                                          "
RETURN

copy:
PUT (lr, ud), box!, AND
RETURN

copy1:
PUT (lr, ud), box!, OR
RETURN

copy2:
PUT (lr, ud), box!, PRESET
RETURN

copy3:
PUT (lr, ud), box!, PSET
RETURN

copy4:
PUT (lr, ud), box!, XOR
RETURN

clean:
IF d2 = 1 THEN PSET (lr, ud): temp(3) = lr: temp(4) = ud: lr = lr + g
IF d2 = 2 THEN LINE (temp(3), temp(4))-(lr, ud), 0, BF: d2 = 0
RETURN

han:
lr = lr - 5: ud = ud - 5
RESUME NEXT

cir:
LOCATE 1, 1: INPUT "Radius of circle = ", ra
LOCATE 1, 1: PRINT "                                    "
4 CIRCLE (lr, ud), ra
RETURN

cho:
ON sp GOSUB copy, copy1, copy2, copy3, copy4
RETURN

save:
IF d3 = 1 THEN PSET (lr, ud): temp(5) = lr: temp(6) = ud: lr = lr + g
IF d3 > 1 THEN LINE (temp(5), temp(6))-(lr, ud), , B: d3 = 0: GOTO 5
RETURN
5 LINE (temp(5), temp(6))-(lr, ud), 0, B
j1 = 4 + INT(((PMAP(lr, 0) - PMAP(temp(5), 0) + 1) * (2) + 7) / 8) * 1 * (PMAP(ud, 1) - PMAP(temp(6), 1) + 1)
REDIM bog!(j1)
GET (temp(5), temp(6))-(lr, ud), bog!
LOCATE 2, 1: INPUT "Input filename"; nme$
nme$ = nme$ + ".gra"
OPEN nme$ FOR OUTPUT AS #1
FOR xe = 1 TO j1
WRITE #1, bog!(xe)
NEXT xe
CLOSE #1
RETURN

load:
REDIM bol!(1000)
LOCATE 2, 1: INPUT "Input filename"; name1$
name1$ = name1$ + ".gra"
OPEN name1$ FOR INPUT AS #1
CLS
vl = 0
DO WHILE NOT EOF(1)
vl = vl + 1
INPUT #1, bol!(vl)
LOOP
CLOSE #1
PUT (1, 1), bol!
RETURN


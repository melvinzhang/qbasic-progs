'Minkowski Sausage
SCREEN 12: CLS
WINDOW (-.3, -.7)-(1.3, .5)
DIM a(7): a(0) = 0: a(1) = 1: a(2) = 0: a(3) = 3
a(4) = 3: a(5) = 0: a(6) = 1: a(7) = 0
p = 3: DIM t(p)
h = 4 ^ (-p): x = 0: y = 0: PSET (0, 0)
FOR n = 0 TO 8 ^ p - 1
m = n: FOR l = 0 TO p - 1
t(l) = m MOD 8: m = INT(m / 8): NEXT l
s = 0: FOR k = 0 TO p - 1
s = s + a(t(k)): s = s MOD 4
NEXT k
IF s = 0 THEN x = x + h
IF s = 1 THEN y = y + h
IF s = 2 THEN x = x - h
IF s = 3 THEN y = y - h
LINE -(x, y)
NEXT n: BEEP
a$ = INPUT$(1): END


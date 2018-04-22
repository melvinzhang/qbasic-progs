'Koch's curve
SCREEN 12: CLS : pi = 3.141593
WINDOW (-.1, -.4)-(1.1, .5)
p = 4: DIM t(p)
h = 3 ^ (-p): PSET (0, 0)
FOR n = 0 TO 4 ^ p - 1
m = n: FOR l = 0 TO p - 1
t(l) = m MOD 4: m = m / 4: NEXT l
s = 0: FOR k = 0 TO p - 1
s = s + (t(k) + 1) MOD 3 - 1
NEXT k
x = x + COS(pi * s / 3) * h
y = y + SIN(pi * s / 3) * h
LINE -(x, y)
NEXT n: BEEP: a$ = INPUT$(1): END



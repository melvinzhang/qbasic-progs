'Star fractal
SCREEN 12: CLS : pi = 3.141593
WINDOW (-.5, -.8)-(1.5, .7)
p = 5: v = 4: a = 144: r = .35: a = a * pi / 180
PSET (0, 0): x = 0: y = 0
FOR n = 0 TO (v + 1) * v ^ (p - 1) - 1
m = n: b = n * a: f = 0
90
IF m MOD v <> 0 OR f >= p - 1 THEN GOTO 110
f = f + 1: m = INT(m / v): GOTO 90
110
x = x + r ^ (p - f - 1) * COS(b): y = y + r ^ (p - f - 1) * SIN(b)
LINE -(x, y)
NEXT n: BEEP: a$ = INPUT$(1): END


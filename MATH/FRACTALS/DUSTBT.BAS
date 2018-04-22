'Dust Fractal of three rotations
SCREEN 12: CLS
WINDOW (-.8, -.6)-(1.6, 1.2)
p = 7: DIM x1(p), y1(p), x2(p), y2(p), x3(p), y3(p)
t1 = .5: t2 = .866
a = .43: b = .3: c = a: d = b: e = a: f = b
g = t1 * (1 - e) + t2 * f: h = -t1 * f + t2 * (1 - e)
PSET (0, 0): PSET (1, 0): PSET (t1, t2)
x1(0) = .5: y1(0) = .289: PSET (x1(0), y1(0))
FOR m = 0 TO 3 ^ (p - 1) - 1: s = p: n = m
IF m = 0 THEN s = 1: GOTO 160
130
IF n MOD 3 = 0 THEN n = n / 3: s = s - 1: GOTO 130
x1(s - 1) = x2(s - 1): y1(s - 1) = y2(s - 1)
x2(s - 1) = x3(s - 1): y2(s - 1) = y3(s - 1)
160
FOR j = s TO p
x = x1(j - 1): y = y1(j - 1)
x1(j) = a * x - b * y: y1(j) = b * x + a * y
x2(j) = c * x - d * y + 1 - c: y2(j) = d * x + c * y - d
x3(j) = e * x - f * y + g: y3(j) = f * x + e * y + h
PSET (x1(j), y1(j)): PSET (x2(j), y2(j)): PSET (x3(j), y3(j))
NEXT j: NEXT m: BEEP: a$ = INPUT$(1): END


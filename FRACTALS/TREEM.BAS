'Mandelbrot Tree
SCREEN 12: CLS : pi = 3.141593
WINDOW (-9.5, -3)-(10.5, 12)
p = 10: DIM x1(p), y1(p), x2(p), y2(p), u1(p), v1(p), u2(p), v2(p)
r1 = .72: r2 = .67: a = 3.98: b = 4.38
a1 = 0: a2 = a: b1 = 0: b2 = a + r1
e1 = 1: e2 = b + r2: f1 = 1: f2 = b
c1 = .5: c2 = b2: d1 = .5: d2 = e2
x1(0) = 0: y1(0) = 0: u1(0) = 1: v1(0) = 0
LINE (0, 0)-(1, 0)
s = 1: GOSUB 210
FOR m = 1 TO 2 ^ (p - 1) - 1: s = p: n = m
140
IF n MOD 2 = 0 THEN n = n / 2: s = s - 1: GOTO 140
h = a2: a2 = f2: f2 = h: h = b2: b2 = e2: e2 = h: h = c2: c2 = d2: d2 = h
GOSUB 190
NEXT m: BEEP
a$ = INPUT$(1): END
190
x1(s - 1) = x2(s - 1): y1(s - 1) = y2(s - 1)
u1(s - 1) = u2(s - 1): v1(s - 1) = v2(s - 1)
210
FOR j = s TO p
x = x1(j - 1): y = y1(j - 1): u = u1(j - 1): v = v1(j - 1)
x3 = u - x: y3 = v - y
x1(j) = x + a1 * x3 - a2 * y3: y1(j) = y + a2 * x3 - a1 * y3
u1(j) = x + b1 * x3 - b2 * y3: v1(j) = y + b2 * x3 + b1 * y3
x2(j) = x + e1 * x3 - e2 * y3: y2(j) = y + e2 * x3 + e1 * y3
u2(j) = x + f1 * x3 - f2 * y3: v2(j) = y + f2 * x3 + f1 * y3
u3 = x + c1 * x3 - c2 * y3: v3 = y + c2 * x3 + c1 * y3
u4 = x + d1 * x3 - d2 * y3: v4 = y + d2 * x3 + d1 * y3
IF j = s THEN h = a2: a2 = f2: f2 = h: h = b2: b2 = e2: e2 = h: h = c2: c2 = d2: d2 = h
LINE (x, y)-(x1(j), y1(j)): LINE (u1(j), v1(j))-(u3, v3)
LINE (u2(j), v2(j))-(u, v)
NEXT j: RETURN: END



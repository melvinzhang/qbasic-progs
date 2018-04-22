'Dust Fractal, backtracking
SCREEN 12: CLS
WINDOW (-1.1, -1)-(2.1, 1.4)
p = 11: DIM x1(p), y1(p), x2(p), y2(p)
a = .5: b = .5: c = .5: d = -.5
x1(0) = a: y1(0) = b
PSET (0, 0): PSET (1, 0): PSET (a, b)
s = 1: GOSUB 140
FOR m = 1 TO 2 ^ (p - 1) - 1: s = p: n = m
110
IF n MOD 2 = 0 THEN n = n / 2: s = s - 1: GOTO 110
GOSUB 140: NEXT m: BEEP
a$ = INPUT$(1): END
140
x1(s - 1) = x2(s - 1): y1(s - 1) = y2(s - 1)
FOR j = s TO p
x = x1(j - 1): y = y1(j - 1)
x1(j) = a * x - b * y: y1(j) = b * x + a * y
x2(j) = c * x - d * y + 1 - c: y2(j) = d * x + c * y - d
PSET (x1(j), y1(j)): PSET (x2(j), y2(j))
NEXT j
RETURN
END


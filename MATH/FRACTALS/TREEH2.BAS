'H-Fractals, Backtracking
SCREEN 12: CLS
WINDOW (-1.2, -.9)-(1.2, .9)
p = 6: DIM x1(p), x2(p), x3(p), x4(p), y1(p), y2(p), y3(p), y4(p)
a = .5
x1(0) = 0: y1(0) = 0: s = 1: GOSUB 140
FOR m = 1 TO 4 ^ (p - 1) - 1: n = m: s = p
90 IF n MOD m = 0 THEN n = n / 4: s = s - 1: GOTO 90
GOSUB 120: NEXT m
BEEP: a$ = INPUT$(1): END
120
x1(s - 1) = x2(s - 1): x2(s - 1) = x3(s - 1): x3(s - 1) = x4(s - 1)
y1(s - 1) = y2(s - 1): y2(s - 1) = y3(s - 1): y3(s - 1) = y4(s - 1)
140
FOR j = s TO p
x = x1(j - 1): y = y1(j - 1): b = a ^ j: c = a * b * 1.5
x1(j) = x + b: y1(j) = y + c
x2(j) = x + b: y2(j) = y - c
x3(j) = x - b: y3(j) = y + c
x4(j) = x - b: y4(j) = y - c
LINE (x - b, y)-(x + b, y)
LINE (x1(j), y1(j))-(x2(j), y2(j))
LINE (x3(j), y3(j))-(x4(j), y4(j))
NEXT j: RETURN: END


'JULIA FRACTAL OF Z:+Z^2+c
SCREEN 12: CLS
WINDOW (-2, -1.5)-(2, 1.5)
p = 12: DIM x1(p), y1(p), x2(p), y2(p)
a = .25: b = .25
a1 = (.25 - a) / 2: b1 = -b / 2: r1 = SQR(a1 ^ 2 + b1 ^ 2)
x1(0) = .5 + SQR(r1 + a1): y1(0) = SQR(r1 - a1)
IF b > 0 THEN y1(0) = -y1(0)
PSET (x1(0), y1(0)): s = 1: GOSUB 150
FOR m = 1 TO 2 ^ (p - 1) - 1: s = p: n = m
120
IF n MOD 2 = 0 THEN n = n / 2: s = s - 1: GOTO 120
GOSUB 140: NEXT m: BEEP: END
140
x1(s - 1) = x2(s - 1): y1(s - 1) = y2(s - 1)
150
FOR j = s TO p
x = x1(j - 1): y = y1(j - 1)
r = SQR((x - a) ^ 2 + (y - b) ^ 2) / 2: t = (x - a) / 2
x1(j) = SQR(r + t): x2(j) = -x1(j)
y1(j) = SQR(r - t): IF y < b THEN y1(j) = -y1(j)
y2(j) = -y1(j)
PSET (x1(j), y1(j)): PSET (x2(j), y2(j))
NEXT j: RETURN: END








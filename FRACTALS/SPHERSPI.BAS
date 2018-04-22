'Spherical Spiral
SCREEN 12: CLS : pi = 3.141593
WINDOW (-2, -1.5)-(2, 1.5)
a = .2
c = .9
p = 1 / SQR(2): q = p * SQR(1 - c * c)
FOR n = -500 TO 500
s = n * pi / 50: t = ATN(a * s)
x = COS(s) * COS(t): y = SIN(s) * COS(t): z = -SIN(t)
u = p * (y - x): v = c * z - q * (x + y)
IF n = -500 THEN PSET (u, v) ELSE LINE -(u, v)
NEXT n: BEEP: a$ = INPUT$(1): END


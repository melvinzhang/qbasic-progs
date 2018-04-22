'Rotating and reducing polgon
SCREEN 12: CLS : pi = 3.141593
WINDOW (-4 / 3, -1)-(4 / 2, 1)
PRINT "Select number of sides"
INPUT p: CLS : DIM x(p), y(p)
b = .05     'rotation angle in radials
a = pi * (1 - 2 / p): c = SIN(a) / (SIN(b) + SIN(a + b))
FOR k = 0 TO p: t = (2 * k + 1) * pi / p
x(k) = SIN(t): y(k) = COS(t)
NEXT k
FOR n = 1 TO 100: PSET (x(0), y(0))
FOR l = 1 TO p: LINE -(x(l), y(l))
NEXT l
FOR m = 0 TO p: z = x(m)
x(m) = (x(m) * COS(b) - y(m) + SIN(b)) * c
y(m) = (z * SIN(b) + y(m) * COS(b)) * c
NEXT m: NEXT n
BEEP: a$ = INPUT$(1): END






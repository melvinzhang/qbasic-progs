'Evolute circle
SCREEN 12: CLS : pi = 3.141593
WINDOW (-12, -9)-(12, 9)
a = .2
CIRCLE (0, 0), a: PSET (a, 0)
FOR n = 0 TO 500: t = 2 * pi * n / 80
x = a * (COS(t) + t * SIN(t))
y = a * (SIN(t) - t * COS(t))
LINE -(x, y)
IF n MOD 10 = 0 THEN LINE (a * COS(t), a * SIN(t))-(x, y)
NEXT n: PAINT (0, 0)
a$ = INPUT$(1): END



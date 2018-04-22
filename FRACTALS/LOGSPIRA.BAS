'Logarithmic Spiral
SCREEN 12: CLS : pi = 3.141593
WINDOW (-4, -3)-(4, 3)
a = .05: b = .05
PSET (a, 0)
FOR t = 0 TO 82 STEP .1: r = a * EXP(b * t)
x = r * COS(t): y = r * SIN(t)
LINE -(x, y)
NEXT t: a$ = INPUT$(1): END


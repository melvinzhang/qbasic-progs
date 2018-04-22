'Archimedes spiral
SCREEN 12: CLS : pi = 3.141593
WINDOW (-12, -9)-(12, 9)
a = .1: PSET (0, 0)
FOR t = 0 TO 16 * pi STEP 1: r = a * t
x = r * COS(t): y = r * SIN(t)
LINE -(x, y)
NEXT t
a$ = INPUT$(1): END


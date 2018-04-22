'ORBITS OF HENON'S QUADRATIC SYSTEM
SCREEN 12: CLS : RANDOMIZE TIMER
FOR k = 1 TO 20
x = -.4 + RND
y = -.4 + RND
WINDOW (-1.6, -1.2)-(1.6, 1.2)
a = .24: b = SQR(1 - a ^ 2)
FOR n = 1 TO 500: PSET (x, y)
z = x: x = x * a - (y - x * x) * b
y = z * b + (y - z * z) * a
IF ABS(x) + ABS(y) > 10 THEN GOTO 130
NEXT n
130
NEXT k: BEEP: a$ = INPUT$(1): END
END



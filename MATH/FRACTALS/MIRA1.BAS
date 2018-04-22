RANDOMIZE TIMER
FIRST = 20
SECOND = 15
A = RND
B = .9998
X = RND * 10 + 5
Y = RND * 10 - 4

'Orbit of Mira's system
SCREEN 12: CLS
WINDOW (-FIRST, -SECOND)-(FIRST, SECOND)
p = 12000: c = 2 - 2 * A
w = A * X + c * X * X / (1 + X * X)
FOR n = 0 TO p
IF n > 100 THEN PSET (X, Y)
z = X: X = B * Y + w: u = X * X
w = A * X + c * u / (1 + u): Y = w - z
NEXT n
BEEP: A$ = INPUT$(1): END


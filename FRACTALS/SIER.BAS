'Sierpinski Sieve
SCREEN 12: CLS : pi = 3.141593
WINDOW (-2.6, -2.4)-(2.6, 1.5)
p = 5: DIM t(p): a = SQR(3)
FOR m = 0 TO p
FOR n = o TO 3 ^ m - 1
n1 = n: FOR l = 0 TO m - 1
t(l) = n1 MOD 3: n1 = n1 / 3: NEXT l
x = 0: y = 0
FOR k = 0 TO m - 1
x = x + COS((4 * t(k) + 1) * pi / 6) / 2 ^ k
y = y + SIN((4 * t(k) + 1) * pi / 6) / 2 ^ k
NEXT k
u1 = x + a / 2 ^ (m + 1): u2 = x - a / 2 ^ (m + 1): v1 = y - 1 / 2 ^ (m + 1): v2 = y + 1 / 2 ^ m
LINE (u1, v1)-(x, v2)
LINE -(u2, v1): LINE -(u1, v1)
NEXT n: NEXT m
BEEP: a$ = INPUT$(1): END



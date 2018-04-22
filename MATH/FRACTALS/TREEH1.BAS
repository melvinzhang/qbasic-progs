'H-fractal
DIM x(2048), y(2048)
SCREEN 12: CLS
WINDOW (-2.4, -1.8)-(2.4, 1.8)
p = 9
a = SQR(1 / 2)
x(1) = 0: y(1) = 0
FOR m = 0 TO p: s = m MOD 2
FOR n = 2 ^ m TO 2 ^ (m + 1) - 1
IF s = 1 THEN GOSUB 160 ELSE GOSUB 190
NEXT n: NEXT m
FOR n = 1 TO 2 ^ (p + 1) - 1
LINE (x(2 * n), y(2 * n))-(x(2 * n + 1), y(2 * n + 1))
NEXT n: BEEP: a$ = INPUT$(1): END
160
x(2 * n) = x(n): y(2 * n) = y(n) + a ^ m
x(2 * n + 1) = x(n): y(2 * n + 1) = y(n) - a ^ m
RETURN
190
x(2 * n) = x(n) + a ^ m: y(2 * n) = y(n)
x(2 * n + 1) = x(n) - a ^ m: y(2 * n + 1) = y(n)
RETURN
END




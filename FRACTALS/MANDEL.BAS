'Mandelbrot set
SCREEN 1: CLS
WINDOW (-2.2, -1.4)-(1.1, 1.4)
n1 = 160: n2 = 100
FOR i = -n1 TO n1: a = -.55 + 1.65 * i / n1
FOR j = 0 TO n2: b = 1.4 * j / n2
u = 4 * (a * a + b * b): v = u - 2 * a + 1 / 4
IF u + 8 * a + 15 / 4 < 0 THEN k = 1: GOTO 170
x = a: y = b
FOR k = 1 TO 50
u = x * x: v = y * y: w = 2 * x * y
x = u - v + a: y = w + b
IF u + v > 16 THEN GOTO 170
NEXT k
170
l = k MOD 2: PSET (a, b), l: PSET (a, -b), l
NEXT j: NEXT i
BEEP: a$ = INPUT$(1): END


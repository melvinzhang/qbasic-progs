'Levy curve
SCREEN 12: CLS : pi = 3.141593
WINDOW (-.7, -1.3)-(1.7, .5)
PRINT "Select order P as a small integer less then 12"
INPUT p: CLS
h = 2 ^ (-(p / 2)): a = h * COS(p * pi / 4): b = h * SIN(p * pi / 4)
LINE (0, 0)-(a, -b): LINE -(a + b, a - b)
x = 1: y = 1
FOR n = 2 TO 2 ^ p - 1
m = n: s = 1
120
IF m MOD 2 = 1 THEN s = s + 1
m = m / 2
IF m > 1 THEN GOTO 120
IF s MOD 4 = 0 THEN x = x + 1
IF s MOD 4 = 1 THEN y = y + 1
IF s MOD 4 = 2 THEN x = x - 1
IF s MOD 4 = 3 THEN y = y - 1
LINE -(a * x + b * y, a * y - b * x)
NEXT n: BEEP: a$ = INPUT$(1): END



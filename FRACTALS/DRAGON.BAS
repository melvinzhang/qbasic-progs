'Dragons Curve
SCREEN 12: CLS : pi = 3.141593
WINDOW (-4, -3)-(4, 3)
PRINT "SELECT ORDER P AS AN INTEGER LESS THEN 11"
INPUT p: CLS : h = 2 ^ (-p / 2)
PRINT "SELECT ANGLE IN DEGREES, TAKE A=90 OR SLIGHTLY LARGER"
INPUT a: CLS : a = a * pi / 180
b = pi - a: x = h: y = 0: LINE (0, 0)-(h, 0): s = 0
FOR n = 1 TO 2 ^ p - 1: m = n
110
IF m MOD 2 = 0 THEN m = m / 2: GOTO 110
IF m MOD 4 = 1 THEN d = 1 ELSE d = -1
s = (s + d)
x = x + h * COS(s * b)
y = y + h * SIN(s * b)
LINE -(x, y): NEXT n
BEEP: a$ = INPUT$(1): END






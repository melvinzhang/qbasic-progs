'CLOUD2
SCREEN 12: CLS
WINDOW (-8, -5)-(8, 7)
a = .51: b = -.49: c = .9995
x = 4: y = 1: GOSUB 110
FOR n = 0 TO 9000: PSET (y, x)
z = x: x = c * y + w: GOSUB 110: y = w - z
NEXT n: BEEP: a$ = INPUT$(1): END
110
IF x > 0 THEN w = a * x ELSE w = b * x
RETURN: END



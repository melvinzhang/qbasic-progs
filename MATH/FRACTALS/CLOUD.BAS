'CLOUD
RANDOMIZE TIMER
SCREEN 12: CLS
WINDOW (-120, -90)-(120, 90)
a = 3.5: b = -3
x = 3 + RND
y = 6 + RND
GOSUB 110
FOR n = 0 TO 10000: PSET (x, y)
z = x: x = y + w
GOSUB 110
y = w - z: NEXT n: BEEP: a$ = INPUT$(1): END
110
IF x > 1 THEN w = a * x + b * (x - 1): RETURN
IF x < -1 THEN w = a * x + b * (x + 1): RETURN
w = a * x: RETURN: END


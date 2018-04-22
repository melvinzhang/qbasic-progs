'DUST FRACTAL
SCREEN 12: CLS : pi = 3.141593: RANDOMIZE TIMER
WINDOW (-1.1, -1.2)-(2.1, 1.2)
r1 = .6: a = r1 * COS(2 * pi / 3): b = r1 * SIN(2 * pi / 3)
r2 = .6: c = r2 * COS(2 * pi / 3): d = -r2 * SIN(2 * pi / 3)
x = a: y = b
FOR k = 1 TO 10000
IF RND < .5 THEN GOSUB 120 ELSE GOSUB 130
PSET (x, y): NEXT k
BEEP: a$ = INPUT$(1): END
120
z = x: x = a * x - b * y: y = b * z + a * y: RETURN
130
z = x: x = c * x - d * y + 1 - c: y = d * z + c * y - d: RETURN
END



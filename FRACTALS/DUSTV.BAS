'Dust Fractal, Varia, Mote Carlo method
SCREEN 12: CLS : pi = 3.141593: RANDOMIZE 100
WINDOW (-3.1, -2.7)-(4.1, 2.7)
r = .7: a = r * COS(2 * pi / 3): b = r * SIN(2 * pi / 3): c = 2.5: d = .9
x = 1: y = 0
FOR k = 1 TO 10000
IF RND < .5 THEN GOSUB 110 ELSE GOSUB 130
PSET (x, y): NEXT k
BEEP: a$ = INPUT$(1): END
110
z = x: x = a * x - b * y: y = b * z + a * y: RETURN
120
z = x: x = d * x + y + 1 - d: y = -z - d * y + 1: RETURN
130
z = x: x = .2 * (x - 1) * (x - 1) - y + 1: y = .8 * z: RETURN
140
z = x: x = (x * x - y * y + c - 1) / c: RETURN
150
z = x: x = (x * x + y + y + c - 1) / c: y = 2 * z * y / c: RETURN
END




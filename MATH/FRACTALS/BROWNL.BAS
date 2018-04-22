'Brownian Line
SCREEN 12: CLS : RANDOMIZE TIMER
WINDOW (-1.2, -.9)-(1.2, .9)
w = 40: y = 0
LINE (1, 0)-(-1, 0)
FOR k = o TO 2000
x = -1 + k / 1000: y = y + w * (RND - .5) / 2000
LINE -(x, y)
NEXT k: a$ = INPUT$(1): END


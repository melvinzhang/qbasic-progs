'Structure of a binary tree
SCREEN 12: CLS
WINDOW (-2, -.5)-(2, 2.5)
LINE (0, 0)-(0, 1)
FOR k = 1 TO 7: h = 2 ^ (-k + 1)
FOR l = 1 TO 2 ^ k
x = -2 + (4 * l - 2) * h: y = 2 - h
LINE (x - h, y + h / 2)-(x - h, y)
LINE (x - h, y)-(x + h, y): LINE -(x + h, y + h / 2)
NEXT l: NEXT k
BEEP: a$ = INPUT$(1): END


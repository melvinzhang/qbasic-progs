'Cantor Comb
SCREEN 12: CLS
WINDOW (-.3, -.4)-(1.3, .8)
DIM a(729), b(729): a(0) = 0: a(1) = 1
b = .1: LINE (0, 0)-(1, 0): LINE -(1, -b): LINE -(0, -b): LINE -(0, 0)
FOR p = 1 TO 6
FOR i = 0 TO 2 ^ p - 1
b(i) = a(i) / 3: b(i + 2 ^ p) = 1 - (1 - a(i)) / 3
NEXT i
FOR j = 1 TO 2 ^ (p + 1) - 1
a(j) = b(j): NEXT j
FOR k = 0 TO 2 ^ (p + 1) - 1 STEP 2
LINE (a(k), b * p)-(a(k + 1), b * p)
LINE (a(k), b * p)-(a(k), b * p - b)
LINE (a(k + 1), b * p)-(a(k + 1), b * p - b)
NEXT k: NEXT p
BEEP: a$ = INPUT$(1): END





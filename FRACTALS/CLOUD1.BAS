'CLOUD1
SCREEN 12: CLS
DIM x(8), y(8), p(8)
WINDOW (-40, -30)-(40, 30)
a = -.5: b = 2
DATA 2,0,200,4,0,400,6,0,800,8,0,800
DATA 10,0,1000,12,0,1200,14,0,1400,16,0,1600
FOR i = 1 TO 8: READ x(i), y(i), p(i): NEXT i
FOR k = 1 TO 8: x = x(k): y = y(k): p = p(k)
GOSUB 140: FOR n = 0 TO p: PSET (x, y)
z = x: x = y + w: GOSUB 140: y = w - z
NEXT n: NEXT k: BEEP: a$ = INPUT$(1): END
140
w = x * (a + b / (1 + ABS(x))): RETURN: END



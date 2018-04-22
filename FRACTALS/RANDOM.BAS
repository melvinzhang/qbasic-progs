RANDOMIZE TIMER
SCREEN 12
hi = 440
wi = 600
incre = 20
x = wi / 2
y = hi / 2
PSET (x, y)


DO
A = INT((4 - 1 + 1) * RND + 1)
SELECT CASE A
CASE 1
   x1 = x - incre
   y1 = y + incre
   GOSUB CheckBound
   LINE (x, y)-(x1, y1)
   x = x1
   y = y1

CASE 2
   x1 = x - incre
   y1 = y - incre
   GOSUB CheckBound
   LINE (x, y)-(x1, y1)
   x = x1
   y = y1


CASE 3
   x1 = x + incre
   y1 = y - incre
   GOSUB CheckBound
   LINE (x, y)-(x1, y1)
   x = x1
   y = y1

CASE 4
   x1 = x + incre
   y1 = y + incre
   GOSUB CheckBound
   LINE (x, y)-(x1, y1)
   x = x1
   y = y1
END SELECT

LOOP

CheckBound:
IF x1 < 0 THEN x1 = wi: x = x1
IF y1 < 0 THEN y1 = hi: y = y1
IF x1 > wi THEN x1 = 0: x = x1
IF y1 > hi THEN y1 = 0: y = y1
RETURN


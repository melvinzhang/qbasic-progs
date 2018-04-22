CLS
RANDOMIZE TIMER
c = 0
DIM num(5)

DO
c = c + 1
i = INT(RND * 5) + 1
num(i) = num(i) + 1

FOR k = 10 TO 14
LOCATE k, 20: PRINT k - 9; "="; CINT((num(k - 9) / c) * 100); "% "
NEXT

LOOP


CLS
INPUT ; a$
LET j$ = a$
LET j = LEN(a$)
FOR i = 1 TO INT(j)
LET l = l + 1
MID$(j$, l, 1) = MID$(a$, j, 1)
LET j = j - 1
NEXT i
CLS
PRINT j$



CLS
INPUT "Input a number"; n$
n$ = LTRIM$(RTRIM$(n$))
leng = LEN(n$)
ll = leng


DIM numm$(100)
PRINT
PRINT n$; ":   (";


FOR i = 1 TO leng
1 f$ = MID$(n$, i, 1)

FOR z = 1 TO c
IF f$ = numm$(z) THEN i = i + 1: GOTO 1
NEXT

PRINT f$;
IF i < leng THEN PRINT "+";
numer = numer + VAL(f$)
c = c + 1: numm$(c) = f$
NEXT

PRINT ")/("



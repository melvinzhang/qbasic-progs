'TO FIND THE SUM OF TWO WORDS AND WITH THE SUM PRODUCE A THRID WORD

CLS
INPUT "Input first word "; w1$
INPUT "Input second word "; w2$

L1 = LEN(w1$)
L2 = LEN(w2$)

DIM num1(20)
DIM num2(20)
DIM ans(20)

P = L1
FOR i = 1 TO L1
num1(i) = ASC(MID$(w1$, P, 1)) - 64
P = P - 1
NEXT

P = L2
FOR i = 1 TO L2
num2(i) = ASC(MID$(w2$, P, 1)) - 64
P = P - 1
NEXT

IF L1 > L2 THEN ll = L1 ELSE ll = L2

FOR i = 20 TO 1 STEP -1
ans(i) = num1(i) + num2(i)
IF ans(i) > 26 THEN ans(i) = ans(i) - 26: ans(i + 1) = ans(i + 1) + 1
NEXT
                      
FOR i = 20 TO 1 STEP -1
IF ans(i) > 0 THEN w$ = w$ + CHR$(ans(i) + 64)
NEXT

PRINT
PRINT w1$; " + "; w2$; " = "; w$


' TO PROVE GOLDBACH'S THEORY THAT EVERY EVEN NUMBER > 4 IS THE SUM
' OF TWO PRIME NUMBERS

CLS
INPUT "Input an EVEN number > 4 "; n
n1 = n - 1



10
FOR a = 2 TO n1
a1 = a - 1
IF a > 2 THEN GOSUB testprima
NEXT

gotit:
PRINT n; " = "; a; "+"; b
END

testprima:
FOR i = 2 TO a1
IF INT(a / i) = a / i THEN RETURN
NEXT

b = n - a
b1 = b - 1

FOR i = 2 TO b1
IF INT(b / i) = b / i THEN RETURN
NEXT

PRINT n; "="; a; "+"; b


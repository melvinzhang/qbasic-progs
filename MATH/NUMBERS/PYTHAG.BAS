DIM num1(300)
DIM num2(300)
DIM ans(300)
counter = 1
CLS
FOR i = 1 TO 100
FOR i1 = 1 TO 100
new = (i ^ 2) + (i1 ^ 2)

IF INT(SQR(new)) = SQR(new) THEN
num1(counter) = i: num2(counter) = i1
ans(counter) = new
counter = counter + 1
PRINT i; "ý  + "; i1; "ý  ="; SQR(new); "ý"
END IF

NEXT
NEXT



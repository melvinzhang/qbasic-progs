DEFLNG A-Z
n = 2027651281
x = INT(SQR(n))
y = 0

DO
x = x + 1
ans = x ^ 2 - n
IF INT(SQR(ans)) = SQR(ans) THEN y = SQR(ans): EXIT DO
LOOP

a = x + y
b = x - y
PRINT n; " is factorised into "; a; " and "; b



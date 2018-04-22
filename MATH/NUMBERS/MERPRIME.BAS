CLS
DEFLNG A-Z
n = 19
m = 2 ^ n - 1
k = 4

FOR i = 1 TO (n - 2)
u = (((k ^ 2 - 2) / m) - INT((k ^ 2 - 2) / m)) * m
PRINT u
IF u = 0 THEN PRINT "This is a Mersenne Prime": END
k = u
NEXT



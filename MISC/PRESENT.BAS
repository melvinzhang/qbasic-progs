CLS
j = 1
l = 50

     a$ = "Good evening, Welcome to Singapore. "
a$ = a$ + "Now to your right is the temple of "
a$ = a$ + "doom and to your right is hell "

FOR i = 1 TO LEN(a$)
LOCATE 15, l: PRINT MID$(a$, j, i)
LOCATE 15, 28: PRINT "Û": LOCATE 15, 52: PRINT "Û"
FOR k = 1 TO 500: NEXT k
LET l = l - 1
IF j > LEN(a$) THEN END
IF l = 30 THEN LET kk = 1
IF kk = 1 THEN LET j = j + 1: i = 20: l = 30
NEXT i
END


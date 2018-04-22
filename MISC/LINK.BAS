CLS
1 RANDOMIZE TIMER
a = INT(RND * 9)
b = INT(RND * 9)
c = INT(RND * 9)
d = INT(RND * 9)


f = 700 + (a * 10) + b
h = f * 9
j = (1000 * c) + 500 + (10 * d) + 4

IF h = j THEN GOTO xaviar:  ELSE GOTO 1

xaviar:
PRINT
PRINT f
PRINT "x  9"
PRINT j
END



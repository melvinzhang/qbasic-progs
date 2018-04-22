
'THIS PROGRAM IS DEDICATED TO SOLVING THE FOLLOWING PROBLEM

'THINK OF ANY FOUR DIGIT NUMBER, AND DIVIDE THIS NUMBER TO PRODUCE A
'NUMBER WHICH IS THE REVERSE OF THE FIRST NUMBER



'INPUT "Input a"; a
'INPUT "Input b"; b
'INPUT "Input c"; c
'INPUT "Input d"; D
'LET b = 2
'LET c = 3
'LET d = 5

CLS

1 RANDOMIZE TIMER
  LET a = INT(RND * 9)
2 LET b = INT(RND * 9)
3 LET c = INT(RND * 9)
4 LET d = INT(RND * 9)
5 LET j = INT(RND * 9)

IF b = a THEN GOTO 2
IF c = a OR c = b THEN GOTO 3
IF d = a OR d = b OR d = c THEN GOTO 4
'IF j = a OR j = b OR j = c OR j = d THEN GOTO 5



LET a1 = a * 10000
LET b1 = b * 1000
LET c1 = c * 100
LET d1 = d * 10
LET j1 = j
LET e = a1 + b1 + c1 + d1 + j1

LET f = (10000 * j) + (1000 * d) + (100 * c) + (10 * b) + a
X = f / e
IF INT(X) = X AND X <> 1 THEN GOTO Xenon ELSE GOTO 1

Xenon:
PRINT
PRINT "F = "; f
PRINT
PRINT "E = "; e
PRINT
PRINT "X = "; X





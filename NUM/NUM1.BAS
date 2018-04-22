
'THIS PROGRAM IS DEDICATED TO SOLVING THE FOLLOWING PROBLEM

'THINK OF ANY FOUR DIGIT NUMBER, AND DIVIDE THIS NUMBER TO PRODUCE A
'NUMBER WHICH IS THE REVERSE OF THE FIRST NUMBER



'INPUT "Input a"; a
'INPUT "Input b"; b
'INPUT "Input c"; c
'INPUT "Input d"; D
'b = 2
'c = 3
'd = 5

CLS

1 RANDOMIZE TIMER
  a = INT(RND * 9)
2 b = INT(RND * 9)
3 c = INT(RND * 9)
4 d = INT(RND * 9)
5 j = INT(RND * 9)

IF b = a THEN GOTO 2
IF c = a OR c = b THEN GOTO 3
IF d = a OR d = b OR d = c THEN GOTO 4
'IF j = a OR j = b OR j = c OR j = d THEN GOTO 5

a1 = a * 10000
b1 = b * 1000
c1 = c * 100
d1 = d * 10
j1 = j
e = a1 + b1 + c1 + d1 + j1

f = (10000 * j) + (1000 * d) + (100 * c) + (10 * b) + a
X = f / e
IF INT(X) = X AND X <> 1 THEN GOTO Xenon ELSE GOTO 1

Xenon:
PRINT
PRINT "F = "; f
PRINT
PRINT "E = "; e
PRINT
PRINT "X = "; X





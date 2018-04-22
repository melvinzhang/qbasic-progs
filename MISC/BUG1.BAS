RANDOMIZE TIMER
10 PRINT "BUG EYES"
20 s = 0
30 FOR t = 1 TO 10
40 CLS
50 FOR i = 1 TO INT(RND * 30 + 20)
60 NEXT i
70 r = INT(RND * 4 + 1)
80 IF r = 1 THEN GOSUB 240
81 IF r = 2 THEN GOSUB 270
82 IF r = 3 THEN GOSUB 300
83 IF r = 4 THEN GOSUB 330
90 PRINT "00"
100 FOR i = 1 TO 4500          'delay loop so they you can shoot the bugs
110 r$ = INKEY$
120 IF r$ <> "" THEN GOTO 140
130 NEXT i
140 IF VAL("0" + r$) <> r THEN GOTO 210
150 s = s + 1
160 CLS
170 GOSUB 350
180 PRINT "*"
190 FOR j = 1 TO 2000          'delay loop so that you can see star
200 NEXT j
210 NEXT t
220 PRINT "YOU BLASTED "; s; "/10 BUGS"
225 FOR k = 1 TO 1000: NEXT k
230 END
240 d = 15
250 a = 3
260 GOTO 350
270 d = 3
280 a = 27
290 GOTO 350
300 d = 15
310 a = 34
320 GOTO 350
330 d = 30
340 a = 21
350 FOR i = 1 TO d
360 PRINT
370 NEXT i
380 PRINT TAB(a);
390 RETURN



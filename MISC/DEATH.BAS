CLS
10 PRINT "Death Valley"
20 s = 0
30 m = 100
40 PRINT "Width"
50 INPUT w

60 w = INT(w / 2)
70 l = 10
80 y = w
90 r = w

RANDOMIZE TIMER
100 d = INT(RND * 3 - 1)
110 IF l + d < 0 OR l + d > 20 THEN GOTO 100

120 l = l + d
130 y = y - d
140 r = r + d
                     
141 FOR j = 1 TO 1200
142 NEXT j


150 n = l
160 GOSUB 1000
170 PRINT CHR$(219);

180 n = y
190 GOSUB 1000
200 PRINT CHR$(5);

210 n = r
220 GOSUB 1000
230 PRINT CHR$(219)

240 i$ = INKEY$
250 IF i$ <> CHR$(0) + "K" THEN GOTO 280
260 y = y - 1
270 r = r + 1

280 IF i$ <> CHR$(0) + "M" THEN GOTO 310
290 y = y + 1
300 r = r - 1
310 IF y < 0 OR r < 0 THEN GOTO 370
s = s + 1
320 IF s < m THEN GOTO 100
340 PRINT "WELL DONE-YOU MADE IT"
350 PRINT "THROUGH THE DEATH VALLEY"
SLEEP
360 END
370 PRINT "YOU CRASHED INTO THE WALL"
380 PRINT "AND DISINTERGRATED"
SLEEP
390 END
1000 IF n = o THEN RETURN
1010 FOR i = 1 TO n
1020 PRINT " ";
1030 NEXT i
1040 RETURN



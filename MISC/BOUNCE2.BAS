10 wi = 70
20 hi = 20
30 v = 1
40 w = 0
50 g = 15: z = 1
60 ts = 0
70 nb = 3
80 DIM x(g): DIM y(g)
90 GOSUB 830
100 GOSUB 550
110 GOSUB 800
120 BEEP: GOTO 270
130 q$ = INKEY$
140 IF q$ = "a" THEN w = -1: v = 0
150 IF q$ = "z" THEN w = 1: v = 0
160 IF q$ = "," THEN v = -1: w = 0
170 IF q$ = "." THEN v = 1: w = 0
175 IF q$ = "q" THEN END
180 GOSUB 440
190 LOCATE y, x: PRINT " "
200 x = x + v
210 y = y + w
220 IF y < 4 THEN y = 4: w = -w
230 IF x < 3 THEN x = 3: v = -v
240 IF y > hi - 2 THEN y = hi - 2: w = -w
250 IF x > wi - 1 THEN x = wi - 1: v = -v
260 LOCATE y, x: PRINT CHR$(d)
270 FOR i = 1 TO g
280 IF x = x(i) AND y = y(i) THEN GOSUB 290
290 NEXT i
300 IF x = p AND y = q THEN BEEP: t = 1
310 LOCATE y, x: PRINT CHR$(88)
320 t = t - 1
330 LOCATE 2, 1: PRINT "SCORE "; ts; " TIME "; t; "    "
340 IF t > 0 THEN GOTO 130
350 IF b > 0 THEN LOCATE 5, 5: PRINT "BONUS "; b
360 FOR G1 = 1 TO 5000: NEXT G1
370 ts = ts + b
380 IF b = 0 THEN nb = nb - 1
390 IF nb > 0 THEN GOTO 100
400 LOCATE 5, 5: PRINT "PLAY AGAIN ? (Y/N)"
410 INPUT q$
420 IF q$ = "y" THEN GOTO 10
430 END
440 IF w = 1 THEN d = 86
450 IF w = -1 THEN d = 94
460 IF v = -1 THEN d = 60
470 IF v = 1 THEN d = 62
480 RETURN
490 s = s + 1
500 ts = ts + 5
510 x(i) = 0
520 y(i) = 0
530 IF s = g THEN b = t / 3: t = 1
540 RETURN
550 CLS
560 COLOR 3
570 LOCATE 1, 1: PRINT "BOUNCING BUG : BUGS "; nb
580 s = 0
590 b = 0
600 z = z + .3
610 t = 1000 / z
620 FOR i = 1 TO g
630 COLOR INT(RND(1) * 2 + 1)
640 GOSUB 800
650 x(i) = x: y(i) = y
660 LOCATE y(i), x(i): PRINT CHR$(35)
670 NEXT i
680 GOSUB 800
690 p = x: letq = y
700 COLOR INT(RND(1) * 2 + 1)
710 FOR i = 1 TO wi
720 LOCATE 3, i: PRINT "*"
730 LOCATE hi - 1, i: PRINT "*"
740 NEXT i
750 FOR i = 3 TO hi - 1
760 LOCATE i, 1: PRINT "*"
770 LOCATE i, wi: PRINT "*"
780 NEXT i
790 RETURN
800 x = RND(1) * (wi - 1) + 1
810 y = RND(1) * (hi - 5) + 4
820 RETURN
830 GOSUB 550
840 GOSUB 620
850 COLOR 3
860 LOCATE 2, 1: PRINT "PRESS SPACE TO START"
870 q$ = INKEY$
880 IF q$ <> " " THEN GOTO 840
890 RETURN









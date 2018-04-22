15 RANDOMIZE TIMER
20 CLS : KEY OFF
60 SCREEN 1, 0
70 DIM h(12), m(12)
80 DIM a%(500), b%(500), c%(500), d%(500), e%(500), f%(500)
90 x1 = 250: y1 = 10
100 x2 = 250: y2 = 50
150 FOR l = 1 TO 12
160 h(l) = 190
170 m(l) = 188
180 NEXT l
220 LINE (50, 50)-(80, 80), 3, BF
230 CIRCLE (65, 65), 2, 2: PAINT (65, 65), 2
240 GET (50, 50)-(80, 80), a%
250 CIRCLE (57, 57), 2, 2: PAINT (57, 57), 2
260 CIRCLE (73, 73), 2, 2: PAINT (73, 73), 2
270 GET (50, 50)-(80, 80), c%
280 CIRCLE (57, 73), 2, 2: PAINT (57, 73), 2
290 CIRCLE (73, 57), 2, 2: PAINT (73, 57), 2
300 GET (50, 50)-(80, 80), e%
310 CLS
320 LINE (50, 50)-(80, 80), 3, BF
330 CIRCLE (57, 57), 2, 2: PAINT (57, 57), 2
340 CIRCLE (73, 73), 2, 2: PAINT (73, 73), 2
350 GET (50, 50)-(80, 80), b%
360 CIRCLE (57, 73), 2, 2: PAINT (57, 73), 2
370 CIRCLE (73, 57), 2, 2: PAINT (73, 57), 2
380 GET (50, 50)-(80, 80), d%
390 CIRCLE (57, 65), 2, 2: PAINT (57, 65), 2
400 CIRCLE (73, 65), 2, 2: PAINT (73, 65), 2
410 GET (50, 50)-(80, 80), f%
460 CLS
470 g = 10 * RND
480 k = INT(g + 3)
490 LINE (10, 10)-(200, 191), 1, B
500 LOCATE 1, 2: PRINT "2 3 4 5 6 7 8 9 10 11 12"
510 FOR i = 1 TO k
520 a = RND(i) * 7
530 c = INT(a)
540 IF c > 6 THEN GOTO 520
550 IF c < 1 THEN GOTO 520
560 b = RND(i) * 7
570 d = INT(b)
580 IF b > 6 THEN GOTO 560
590 IF d < 1 THEN GOTO 560
600 LINE (x1, y1)-(x1 + 30, y1 + 30), 0, BF
610 LINE (x2, y2)-(x2 + 30, y2 + 30), 0, BF
620 IF c = 1 THEN PUT (x1, y1), a%
630 IF d = 1 THEN PUT (x2, y2), a%
640 IF c = 2 THEN PUT (x1, y1), b%
650 IF c = 2 THEN PUT (x2, y2), b%
660 IF c = 3 THEN PUT (x1, y1), c%
670 IF c = 3 THEN PUT (x2, y2), c%
680 IF c = 4 THEN PUT (x1, y1), d%
690 IF c = 4 THEN PUT (x2, y2), d%
700 IF c = 5 THEN PUT (x1, y1), e%
710 IF c = 5 THEN PUT (x2, y2), e%
720 IF c = 6 THEN PUT (x1, y1), f%
730 IF c = 6 THEN PUT (x2, y2), f%
740 FOR j = 1 TO i * 5: NEXT j
750 SOUND (500 - i * 30) / 2, .1
760 NEXT i
800 LOCATE 16, 28: PRINT "1st No ="; c
810 LOCATE 17, 28: PRINT "2nd No ="; d
820 s = c + d
830 LOCATE 18, 28: PRINT "SUM    ="; s
880 LINE (s * 16 - 4, h(s))-(s * 16 + 4, h(s)), 1, BF
890 LINE (s * 16 - 2, m(s))-(s * 16 + 6, m(s)), 2, BF
900 h(s) = h(s) - 1
910 m(s) = m(s) - 1
960 o = o + 1
970 LOCATE 13, 28: PRINT "No. of THROW"
980 LOCATE 14, 32: PRINT o
990 IF o > 500 THEN END
1040 GOTO 470


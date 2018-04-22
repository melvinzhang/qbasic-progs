10 SCREEN 1
20 DIM a(12): DIM l(12): DIM d(12): DIM c(12)
30 CLS
40 wi = 290
50 hi = 180
60 sx = wi / 2
70 sy = hi / 2
80 w = .0174532925#
90 PRINT "TYPE 1 TO DRAW A SHAPE"
100 PRINT "TYPE 2 TO MAKE A PATTERN"
110 INPUT r
120 PSET (sx, sy)
130 ox = sx
140 oy = sy
150 a = 90
160 CLS
170 IF r = 2 THEN GOSUB 510
180 IF r = 1 THEN GOSUB 200
190 GOTO 90
200 CLS
210 i = 1
220 s = 1
230 b = a
240 d = 1
250 c = 1
260 l = wi / 20
270 a = a + 150
280 FOR h = 1 TO 3
290 GOSUB 730
300 a = a + 120
310 NEXT h
320 a = b
330 d = 1
340 INPUT "Angle to turn"; aa
350 INPUT "Length of move"; l
360 INPUT "Draw (Y/N) "; d$
370 IF d$ = "n" THEN d = 0: GOTO 390

380 INPUT "Drawing colour"; c

390 a = a - aa
400 IF aa > 360 THEN aa = aa - 360
410 IF aa < 0 THEN aa = aa + 360
420 a(i) = a
430 l(i) = l
440 d(i) = d
450 c(i) = c
460 GOSUB 730
470 IF i = 12 THEN RETURN
480 i = i + 1
490 IF l > 0 THEN GOTO 230
500 RETURN
510 p = 0
530 CLS
540 INPUT "Starting Scale"; s
550 INPUT "Number of Steps"; ns
560 INPUT "Scale Change"; st
570 INPUT "Angle Change"; q
580 CLS
590 FOR x = 1 TO ns
600 ox = sx
610 oy = sy
620 FOR t = 1 TO i
630 a = a(t) + p
640 l = l(t) * s
650 d = d(t)
660 c = c(t)
670 GOSUB 730
680 NEXT t
690 s = s + st
700 p = p + q
710 NEXT x
720 RETURN
730 nx = ox + (l * COS(w * a))
740 ny = oy + (l * SIN(w * a))
750 IF nx < 0 OR nx > wi THEN GOSUB 840: GOTO 830
760 IF ny < 0 OR nx > hi THEN GOSUB 840: GOTO 830

770 COLOR c

780 PSET (ox, oy)
790 IF d = 1 THEN LINE -(nx, ny)
800 IF d = 0 THEN PSET (nx, ny)
810 ox = nx
820 oy = ny
830 RETURN
840 BEEP
850 IF r = 2 THEN x = ns: t = i
860 IF r = 1 THEN i = i - 1: a = a + aa
870 RETURN















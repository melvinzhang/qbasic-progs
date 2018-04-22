CLS
INPUT "Number of dots"; dot
INPUT "Background color"; back
10 cl = dot
20 wi = 300
30 hi = 195
40 cx = wi / 2
50 cy = hi / 2
60 mx = wi / 20
70 my = hi / 20
80 DIM x(cl): DIM y(cl): DIM v(cl): DIM w(cl): DIM c(cl)
90 GOSUB 680
100 PRINT "Type 1 for a Shape"
110 PRINT "Type 2 for Dots"
115 PRINT "Type 3 to Exit"
120 INPUT d
130 IF d < 1 OR d > 3 THEN GOTO 120
140 SCREEN 7
150 GOSUB 560
160 v = 0
170 w = 0
180 q$ = INKEY$


190 IF q$ = CHR$(0) + "P" THEN w = 2
200 IF q$ = CHR$(0) + "H" THEN w = -2
210 IF q$ = CHR$(0) + "K" THEN v = -2
220 IF q$ = CHR$(0) + "M" THEN v = 2

225 IF q$ = "q" THEN RUN "b:\project\manager1.bas"

230 IF q$ = " " THEN GOSUB 560
240 IF q$ = "e" THEN GOSUB 480
250 IF q$ = "w" THEN GOSUB 520
260 IF q$ = "s" THEN GOSUB 650
270 FOR j = 1 TO cl
280 IF v(j) < -mx THEN v(j) = -mx
290 IF v(j) > mx THEN v(j) = mx
300 IF w(j) < -my THEN w(j) = -my
310 IF w(j) > my THEN w(j) = my
320 v(j) = v(j) + v
330 w(j) = w(j) + w
340 x(j) = x(j) + v(j)
350 y(j) = y(j) + w(j)
360 IF x(j) < 1 THEN x(j) = 1: v(j) = -v(j)
370 IF y(j) < 1 THEN y(j) = 1: w(j) = -w(j)
380 IF x(j) > wi THEN x(j) = wi: v(j) = -v(j)
390 IF y(j) > hi THEN y(j) = hi: w(j) = -w(j)
400 NEXT j
410 PSET (x(cl), y(cl))
420 FOR j = 1 TO cl
430 COLOR c(j), back
440 IF d = 1 THEN LINE -(x(j), y(j))
450 IF d = 2 THEN PSET (x(j), y(j))
460 NEXT j
470 GOTO 160
480 FOR i = 1 TO cl
490 v(i) = -v(i)
500 NEXT i
510 RETURN
520 FOR i = 1 TO cl
530 w(i) = -w(i)
540 NEXT i
550 RETURN
560 CLS 1
570 FOR i = 1 TO cl
580 x(i) = cx
590 y(i) = cy
RANDOMIZE TIMER
600 v(i) = RND(1) * 12 - 6
610 w(i) = RND(1) * 12 - 6
620 NEXT i
630 PSET (cx, cy)
640 RETURN
650 q$ = INKEY$
660 IF q$ <> " " THEN GOTO 650
670 RETURN
680 CLS
690 FOR i = 1 TO cl
700 PRINT "Type colour number for point "; i
710 INPUT c(i)
720 NEXT i
730 RETURN
















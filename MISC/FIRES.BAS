SCREEN 1
COLOR 1, 1
DEFINT A-Z
DIM x(6), y(6)

'initialisation
FOR i = 1 TO 6
    x(i) = 0: y(i) = 0
NEXT i

'calculate coordinates
FOR i = 1 TO 6
   x(i) = 8 + i * 25
NEXT i
FOR j = 1 TO 6
   y(j) = 163 - j * 24
NEXT j

loop1:
   'draw x-y axis
   CLS
      FOR i = 6 TO 1 STEP -1
         LOCATE (7 - i) * 3, 1: PRINT i
      NEXT i
      FOR j = 1 TO 6
         LOCATE 21, (j * 3) + 2: PRINT CHR$(64 + j)
      NEXT j
   
   'draw connecting lines (grids)
   FOR k = 19 TO 130 STEP 24
      LINE (33, k)-(158, k)
   NEXT k
   LINE (33, 139)-(133, k)
   FOR l = 33 TO 133 STEP 25
      LINE (l, 19)-(l, 139)
   NEXT l
   LINE (158, 19)-(158, 115)

   'draw circles
   FOR i = 1 TO 6
      FOR j = 1 TO 6
      IF i = 6 AND j = 1 GOTO skip
      CIRCLE (x(i), y(j)), 5, 1
      PAINT (x(i), y(j)), 0, 1

skip:
      NEXT j
   NEXT i

   'main routine
   stat = 1
   GOSUB request
   CLS
GOTO loop1

request:
   LOCATE 3, 22: PRINT "location of "
   LOCATE 4, 22: PRINT "station; "; stat
   LOCATE 5, 22: PRINT "(type X to finish)"
   GOSUB dox
   IF (x$ = "X") THEN RETURN
   a = ASC(x$) - 64
   GOSUB doy
   IF (y$ = "X") THEN RETURN
   b = VAL(y$)
   IF (a = 6 AND b = 1) THEN GOSUB errorrout: GOTO request
   stat = stat + 1
   GOSUB paintfill
GOTO request

errorrout:
   LOCATE 23, 1: PRINT "Invalid Station"
   GOSUB warnbell
   FOR x = 1 TO 1000: NEXT x
   RETURN
   LOCATE 23, 1: PRINT "               "
 
dox:
   LOCATE 7, 35: PRINT "    "
   LOCATE 8, 35: PRINT "    "
   LOCATE 7, 22: PRINT "x-coordinate=";
   x$ = ""
scanx:
         x$ = INKEY$
   IF x$ = "" GOTO scanx
   x$ = UCASE$(x$): PRINT x$
   IF x$ = "X" THEN RETURN
   IF x$ = "Q" THEN END
   IF x$ < "A" OR x$ > "F" THEN GOSUB warnbell: GOTO dox
   RETURN

doy:
   LOCATE 8, 35: PRINT "    "
   LOCATE 8, 22: PRINT "y-coordinate=";
   y$ = ""
scany:
      y$ = INKEY$
   IF y$ = "" GOTO scany
   y$ = UCASE$(y$): PRINT y$
   IF y$ < "1" OR y$ > "6" THEN GOSUB warnbell: GOTO doy
   RETURN

warnbell: PLAY "O3 C": RETURN

paintfill:
   PAINT (x(a), y(b)), 1, 1
   CIRCLE (x(a), y(b)), 2, 2
   aa = a - 1
   IF aa < 1 GOTO next1
      PAINT (x(aa), y(b)), 1, 1
next1:
   aa = a + 1
   IF (aa = 6 AND b = 1) GOTO next2
      IF aa > 6 GOTO next2
         PAINT (x(aa), y(b)), 1, 1
next2:
   bb = b - 1
   IF (a = 6 AND bb = 1) GOTO next3
      IF bb < 1 GOTO next3
         PAINT (x(a), y(bb)), 1, 1
next3:
   bb = b + 1
   IF bb > 6 GOTO paintend
      PAINT (x(a), y(bb)), 1, 1
paintend:
RETURN





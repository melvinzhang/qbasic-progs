DEFDBL A-Z
DECLARE SUB SetUpScreen ()
DECLARE SUB PutPoint (xpos#, ypos#)
DECLARE SUB SolveEq (y#, y1#, x#)

SetUpScreen

FOR x = -20 TO 20 STEP .03125

y = x ^ 2 - 13 * x + 12
y1 = 0

PutPoint x, y
PutPoint x, y1

SolveEq y, y1, x
NEXT

DEFSNG A-Z
SUB PutPoint (xpos#, ypos#)
IF UCASE$(INKEY$) = "Q" THEN END
PSET (xpos#, ypos#), 12
END SUB

SUB SetUpScreen
SCREEN 12
WINDOW (-20, -15)-(20, 15)
LINE (-20, 0)-(20, 0)
LINE (0, 15)-(0, -15)

FOR pointx = -20 TO 20
LINE (pointx, .1)-(pointx, -.1)
NEXT

FOR pointy = -15 TO 15
LINE (.1, pointy)-(-.1, pointy)
NEXT
END SUB

SUB SolveEq (y#, y1#, x#)
IF ABS(y# - y1#) < .03125 THEN
LOCATE 1, 1
PRINT "X = "; : PRINT USING "###.##"; x#
PRINT "Y = "; : PRINT USING "###.##"; y#
DO: LOOP UNTIL INKEY$ <> ""
END IF
END SUB


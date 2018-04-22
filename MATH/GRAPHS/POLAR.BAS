DEFDBL A-Z
DECLARE SUB SetUpScreen ()
DECLARE SUB PutPoint (x#, y#)
DECLARE SUB SolveEq (y#, y1#, x#)

SetUpScreen


FOR t = -10 TO 10 STEP .01


y = t ^ 2
x = SIN(t)

PutPoint x, y
NEXT

DEFSNG A-Z
SUB PutPoint (x#, y#)
IF y# > 15 AND x# < 0 THEN x# = x# + .025
IF y# < -15 AND x# < 0 THEN x# = x# + .025
IF INKEY$ <> "" THEN END
PSET (x#, y#), 12
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
IF ABS(y# - y1#) <= .03125 THEN
LOCATE 1, 1
PRINT "x# = "; : PRINT USING "###.##"; x#
PRINT "Y = "; : PRINT USING "###.##"; y#
END IF
END SUB


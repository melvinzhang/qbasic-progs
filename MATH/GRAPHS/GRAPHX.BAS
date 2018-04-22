DEFDBL A-Z

CONST maxleft = -20
CONST maxright = 20
CONST maxup = 15
CONST maxdown = -15

DECLARE SUB SetUpScreen ()
DECLARE SUB PutPoint (x#, y#)
DECLARE SUB SolveEq (y#, y1#, x#)
SetUpScreen


FOR x = -20 TO 20 STEP .01

y = (6 * x) - 5 * (x ^ 3)







PutPoint x, y
LOCATE 1, 1: PRINT "X ="; : PRINT USING "####.##"; x
LOCATE 2, 1: PRINT "Y ="; : PRINT USING "####.##"; y
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
WINDOW (maxleft, maxdown)-(maxright, maxup)
LINE (maxleft, 0)-(maxright, 0)
LINE (0, maxup)-(0, maxdown)

FOR pointx = maxleft TO maxright
LINE (pointx, .1)-(pointx, -.1)
NEXT

FOR pointy = maxdown TO maxup
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


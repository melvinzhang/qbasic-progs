RANDOMIZE TIMER
SCREEN 12
wi = 640
hi = 480
maxy = 240
miny = 240
y = hi / 2
x = 0
inc = .5
LINE (0, y)-(wi, y)

DO
Chance = INT((RND * 2) + 1)

SELECT CASE Chance
CASE 1
   y = y + inc
   x = x + inc
   in = in + inc
CASE 2
   y = y - inc
   x = x + inc
   de = de + inc
END SELECT

IF y > maxy THEN maxy = y
IF y < miny THEN miny = y

PSET (x, y)
LOOP UNTIL x > 640

LOCATE 1, 1
PRINT "Max Y Value ="; 240 - miny
PRINT "Min Y Value ="; maxy - 240
PRINT
PRINT "Difference  ="; ABS((240 - miny) - (maxy - 240))
PRINT
PRINT "Y increased "; in; "times"
PRINT "Y decreased "; de; "times"


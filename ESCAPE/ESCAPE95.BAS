Restart:
RANDOMIZE TIMER

'***** GAME CONTROLS *****

speed = 200
acceleration = 2
density = 700
bomb = 5
wallbreaker = 0         '1 - off

'*************************

DIM a(100)
DIM b(100)
left = 1
right = 1
upp = 1
down = 1
x1 = 2
y1 = 20
a(1) = INT(RND * 20)
b(1) = INT(RND * 20)
start = TIMER
remain$ = " "

'***** CREATING THE PLAY FIELD *****

CLS
COLOR 12
FOR i = 1 TO density
LOCATE (RND * 21) + 1, (RND * 78) + 1: PRINT "Û"
NEXT

COLOR 9
FOR i = 1 TO 80
LOCATE 1, i: PRINT "Û"
LOCATE 22, i: PRINT "Û"
NEXT
FOR i = 1 TO 22
LOCATE i, 1: PRINT "Û"
LOCATE i, 80: PRINT "Û"
NEXT

COLOR 14
LOCATE 2, 79: PRINT "E"
COLOR 11
LOCATE 23, 70: PRINT "Bombs ="; bomb

'***********************************


1
cnt = cnt + acceleration
i$ = INKEY$
SELECT CASE i$
CASE CHR$(0) + "H": IF SCREEN(y1 - 1, x1) <> 32 THEN GOTO 1 ELSE LOCATE y1, x1: PRINT " ": y1 = y1 - 1
CASE CHR$(0) + "P": IF SCREEN(y1 + 1, x1) <> 32 THEN GOTO 1 ELSE LOCATE y1, x1: PRINT " ": y1 = y1 + 1
CASE CHR$(0) + "K": IF SCREEN(y1, x1 - 1) <> 32 THEN GOTO 1 ELSE LOCATE y1, x1: PRINT " ": x1 = x1 - 1
CASE CHR$(0) + "M": IF SCREEN(y1, x1 + 1) <> 32 THEN GOTO 1 ELSE LOCATE y1, x1: PRINT " ": x1 = x1 + 1

CASE "w":      IF bomb = 0 THEN GOTO 1 ELSE bomb = bomb - 1: LOCATE y1 - 1, x1: PRINT " ": COLOR 11: LOCATE 23, 70: PRINT "Bombs ="; bomb
CASE "s", "x": IF bomb = 0 THEN GOTO 1 ELSE bomb = bomb - 1: LOCATE y1 + 1, x1: PRINT " ": COLOR 11: LOCATE 23, 70: PRINT "Bombs ="; bomb
CASE "a":      IF bomb = 0 THEN GOTO 1 ELSE bomb = bomb - 1: LOCATE y1, x1 - 1: PRINT " ": COLOR 11: LOCATE 23, 70: PRINT "Bombs ="; bomb
CASE "d":      IF bomb = 0 THEN GOTO 1 ELSE bomb = bomb - 1: LOCATE y1, x1 + 1: PRINT " ": COLOR 11: LOCATE 23, 70: PRINT "Bombs ="; bomb

CASE "p": GOSUB pause
CASE "r": GOTO Restart
CASE "q": END
CASE ELSE
END SELECT
COLOR 15
LOCATE y1, x1: PRINT ""

IF y1 = 2 AND x1 = 78 THEN GOTO finish
IF y1 = 3 AND x1 = 79 THEN GOTO finish
IF y1 = 3 AND x1 = 78 THEN GOTO finish

IF cnt >= speed THEN cnt = 0: GOSUB move
GOTO 1



move:
COLOR 11
LOCATE a(1), b(1): PRINT ""

ri = SCREEN(a(1), b(1) + 1)
le = SCREEN(a(1), b(1) - 1)
up = SCREEN(a(1) - 1, b(1))
dw = SCREEN(a(1) + 1, b(1))

IF wallbreaker = 1 THEN GOTO brain

IF ri = 219 AND dw = 219 AND b(1) < x1 AND a(1) < y1 THEN IF (x1 - b(1)) > (y1 - a(1)) THEN LOCATE a(1), b(1) + 1: PRINT " ": GOTO brain ELSE LOCATE a(1) + 1, b(1): PRINT " ": GOTO brain
IF ri = 219 AND up = 219 AND b(1) < x1 AND a(1) > y1 THEN IF (x1 - b(1)) > (a(1) - y1) THEN LOCATE a(1), b(1) + 1: PRINT " ": GOTO brain ELSE LOCATE a(1) - 1, b(1): PRINT " ": GOTO brain

IF le = 219 AND dw = 219 AND b(1) > x1 AND a(1) < y1 THEN IF (b(1) - x1) > (y1 - a(1)) THEN LOCATE a(1), b(1) - 1: PRINT " ": GOTO brain ELSE LOCATE a(1) + 1, b(1): PRINT " ": GOTO brain
IF le = 219 AND up = 219 AND b(1) > x1 AND a(1) > y1 THEN IF (b(1) - x1) > (a(1) - y1) THEN LOCATE a(1), b(1) - 1: PRINT " ": GOTO brain ELSE LOCATE a(1) - 1, b(1): PRINT " ": GOTO brain


brain:
IF right = 1 AND ri = 32 AND x1 > b(1) THEN GOTO right
IF left = 1 AND le = 32 AND x1 < b(1) THEN GOTO left
IF upp = 1 AND up = 32 AND y1 < a(1) THEN GOTO up
IF down = 1 AND dw = 32 AND y1 > a(1) THEN GOTO down


IF right = 1 AND ri = 32 AND left = 1 AND le = 32 AND x1 > b(1) THEN GOTO right
IF right = 1 AND ri = 32 AND left = 1 AND le = 32 AND x1 < b(1) THEN GOTO left

IF upp = 1 AND up = 32 AND down = 1 AND dw = 32 AND y1 > a(1) THEN GOTO down
IF upp = 1 AND up = 32 AND down = 1 AND dw = 32 AND y1 < a(1) THEN GOTO up


IF up = 219 AND ri = 219 AND le = 219 AND dw = 32 THEN GOTO down
IF up = 32 AND ri = 219 AND le = 219 AND dw = 219 THEN GOTO up
IF up = 219 AND ri = 32 AND le = 219 AND dw = 219 THEN GOTO right
IF up = 219 AND ri = 219 AND le = 32 AND dw = 219 THEN GOTO left


IF right = 1 AND ri = 32 THEN GOTO right
IF left = 1 AND le = 32 THEN GOTO left
IF upp = 1 AND up = 32 THEN GOTO up
IF down = 1 AND dw = 32 THEN GOTO down

RETURN

right:
COLOR 12
LOCATE a(1), b(1): PRINT remain$
b(1) = b(1) + 1
left = 0
right = 1
upp = 1
down = 1
GOTO 10



left:
COLOR 12
LOCATE a(1), b(1): PRINT remain$
b(1) = b(1) - 1
right = 0
left = 1
upp = 1
down = 1
GOTO 10



up:
COLOR 12
LOCATE a(1), b(1): PRINT remain$
a(1) = a(1) - 1
down = 0
upp = 1
right = 1
left = 1
GOTO 10



down:
COLOR 12
LOCATE a(1), b(1): PRINT remain$
a(1) = a(1) + 1
upp = 0
down = 1
right = 1
left = 1
GOTO 10



10
COLOR 11
LOCATE a(1), b(1): PRINT ""

speed = speed - 1
IF speed <= 1 THEN speed = 1

IF SCREEN(a(1) + 1, b(1)) = 2 THEN END
IF SCREEN(a(1) - 1, b(1)) = 2 THEN END
IF SCREEN(a(1), b(1) + 1) = 2 THEN END
IF SCREEN(a(1), b(1) - 1) = 2 THEN END
RETURN

finish:
LOCATE 10, 20: PRINT "You have escaped in"; INT(TIMER - start); "seconds"
LOCATE 11, 20: INPUT "Do you wish to play again (y/n) "; again$
IF again$ = "y" THEN GOTO Restart
IF again$ = "n" THEN END ELSE GOTO finish
                                        
pause:
COLOR 11
LOCATE 23, 1: PRINT "GAME PAUSED"
DO
LOOP UNTIL INKEY$ <> ""
LOCATE 23, 1: PRINT "           "
RETURN


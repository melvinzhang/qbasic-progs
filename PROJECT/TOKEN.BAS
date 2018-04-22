5 SCREEN 0
CLS
DIM pile(1, 3)
pile(1, 1) = 3
pile(1, 2) = 4
pile(1, 3) = 5
piles = 1
token = 0
playturn = 1
ud = 7

DO
CLS
COLOR 14
IF playturn = 1 THEN LOCATE 2, 37: PRINT "Player 1" ELSE LOCATE 2, 37: PRINT "Player 2"

COLOR 15
LOCATE 5, 15: PRINT "1"
LOCATE 5, 40: PRINT "2"
LOCATE 5, 65: PRINT "3"

COLOR 10
FOR i = 1 TO pile(1, 1)
LOCATE ud, 15: PRINT "O"
ud = ud + 1
NEXT

COLOR 11
ud = 7
FOR i = 1 TO pile(1, 2)
LOCATE ud, 40: PRINT "O"
ud = ud + 1
NEXT

COLOR 9
ud = 7
FOR i = 1 TO pile(1, 3)
LOCATE ud, 65: PRINT "O"
ud = ud + 1
NEXT
ud = 7
COLOR 7
1 LOCATE 20, 20: INPUT "Input number of pile          "; piles
2 LOCATE 22, 20: INPUT "Input number of tokens to take"; token

IF piles > 3 THEN GOTO 1
IF token > 5 THEN GOTO 2

pile(1, piles) = pile(1, piles) - token
IF playturn = 1 THEN playturn = 2 ELSE playturn = 1
IF pile(1, 3) < 1 AND pile(1, 2) < 1 AND pile(1, 1) = 1 THEN GOTO lose
IF pile(1, 1) < 1 AND pile(1, 3) < 1 AND pile(1, 2) = 1 THEN GOTO lose
IF pile(1, 1) < 1 AND pile(1, 2) < 1 AND pile(1, 3) = 1 THEN GOTO lose
LOOP

lose:
COLOR 4
LOCATE 2, 30: PRINT "      Player"; playturn; "lost"
COLOR 7
GOTO again

again:
LOCATE 13, 26: INPUT "Do you want to play again (y/n) "; aga$
IF LCASE$(aga$) = "y" THEN GOTO 5 ELSE RUN "b:\project\manager1.bas"


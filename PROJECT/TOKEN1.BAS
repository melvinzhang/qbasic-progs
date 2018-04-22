1 SCREEN 0
CLS
DIM pile(1, 7)
pile(1, 7) = 13
pile(1, 6) = 11
pile(1, 5) = 9
pile(1, 4) = 7
pile(1, 3) = 5
pile(1, 2) = 3
pile(1, 1) = 1
player = 1

DO
CLS
COLOR 28
LOCATE 5, 35: PRINT "  Player"; player
COLOR 2
FOR i = 1 TO pile(1, 1)
LOCATE 10, 40 + i: PRINT "¡": LOCATE 10, 60: PRINT "( "; i; " )"
NEXT
COLOR 3
FOR i = 1 TO pile(1, 2)
LOCATE 11, 39 + i: PRINT "¡": LOCATE 11, 60: PRINT "( "; i; " )"
NEXT
COLOR 4
FOR i = 1 TO pile(1, 3)
LOCATE 12, 38 + i: PRINT "¡": LOCATE 12, 60: PRINT "( "; i; " )"
NEXT
COLOR 5
FOR i = 1 TO pile(1, 4)
LOCATE 13, 37 + i: PRINT "¡": LOCATE 13, 60: PRINT "( "; i; " )"
NEXT
COLOR 6
FOR i = 1 TO pile(1, 5)
LOCATE 14, 36 + i: PRINT "¡": LOCATE 14, 60: PRINT "( "; i; " )"
NEXT
COLOR 7
FOR i = 1 TO pile(1, 6)
LOCATE 15, 35 + i: PRINT "¡": LOCATE 15, 60: PRINT "( "; i; ")"
NEXT
COLOR 8
FOR i = 1 TO pile(1, 7)
LOCATE 16, 34 + i: PRINT "¡": LOCATE 16, 60: PRINT "( "; i; ")"
NEXT
COLOR 7

FOR i = 10 TO 16
LOCATE i, 25: PRINT i - 9
NEXT

2 LOCATE 20, 10: INPUT "Input number of row "; row
IF row > 7 THEN LOCATE 20, 10: PRINT "                                        ": GOTO 2
LOCATE 22, 10: INPUT "Input number of tokens to take "; token
pile(1, row) = pile(1, row) - token

FOR i = 1 TO 7
IF pile(1, i) < 1 THEN pi = pi + 1
NEXT

IF pi = 7 THEN GOTO lose

pi = 0

IF player = 1 THEN player = 2 ELSE player = 1
LOOP

lose:
COLOR 4
LOCATE 10, 30: PRINT "     Player"; player; "lost"
COLOR 15
GOTO again

again:
LOCATE 13, 26: INPUT "Do you want to play again (y/n) "; aga$
IF LCASE$(aga$) = "y" THEN GOTO 1 ELSE RUN "b:\project\manager1.bas"


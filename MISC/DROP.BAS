DO
x = INT(RND * 22) + 1
y = INT(RND * 80) + 1

IF SCREEN(x, y) <> 32 THEN d = SCREEN(x, y): GOSUB Drop
LOOP UNTIL INKEY$ <> ""
END

Drop:
FOR i = x TO 23
COLOR INT(RND * 15)
LOCATE i, y: PRINT CHR$(d)
FOR ll = 1 TO 50: NEXT
LOCATE i, y: PRINT " "
NEXT
RETURN


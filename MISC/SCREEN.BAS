RANDOMIZE TIMER

DO
i = INT(RND * 23) + 1
i1 = INT(RND * 80) + 1
IF SCREEN(i, i1) <> 32 THEN d = SCREEN(i, i1): GOSUB Drop
LOOP UNTIL INKEY$ <> ""
END

Drop:
FOR k = i TO 23
COLOR INT(RND * 14) + 1
LOCATE k, i1: PRINT CHR$(d)
FOR l = 1 TO 50: NEXT
LOCATE k, i1: PRINT " "
NEXT
RETURN


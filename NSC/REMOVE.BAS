' TO COMPLETELY REMOVE ALL OF A CERTAIN CHARACTER FROM A STRING

CLS
w$ = "  12 3 4 567 8 9 0"
j$ = w$
                                                    
w$ = LTRIM$(RTRIM$(w$))

FOR i = 1 TO LEN(w$)
IF MID$(w$, i, 1) = " " THEN
nr = nr + 1
FOR i1 = i TO 2 STEP -1
MID$(w$, i1, 1) = MID$(w$, i1 - 1, 1)
NEXT
END IF
NEXT

FOR i = 1 TO nr
IF MID$(w$, i, 1) = "1" THEN MID$(w$, i, 1) = " "
NEXT

w$ = LTRIM$(w$)

PRINT j$; "  =>  "; w$




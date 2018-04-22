' CONVERTS A NORMAL NUMBER <= 127 INTO BINARY FORM

CLS
INPUT "Input a number to be converted (<= 127)"; n
DIM bin(-1 TO 6)
DIM nee(7)

FOR i = 0 TO 6
bin(i) = 2 ^ i
NEXT

bin(-1) = 0
              
FOR i1 = -1 TO 6
FOR i2 = -1 TO 6
FOR i3 = -1 TO 6
FOR i4 = -1 TO 6
FOR i5 = -1 TO 6
FOR i6 = -1 TO 6
FOR i7 = -1 TO 6
IF bin(i1) + bin(i2) + bin(i3) + bin(i4) + bin(i5) + bin(i6) + bin(i7) = n THEN
GOTO doneit
END IF
NEXT: NEXT: NEXT: NEXT: NEXT: NEXT: NEXT
END

doneit:
IF i1 > -1 THEN c = c + 1: nee(c) = i1
IF i2 > -1 THEN c = c + 1: nee(c) = i2
IF i3 > -1 THEN c = c + 1: nee(c) = i3
IF i4 > -1 THEN c = c + 1: nee(c) = i4
IF i5 > -1 THEN c = c + 1: nee(c) = i5
IF i6 > -1 THEN c = c + 1: nee(c) = i6
IF i7 > -1 THEN c = c + 1: nee(c) = i7


w$ = "0000000"

FOR i = 1 TO c
MID$(w$, nee(i) + 1, 1) = "1"
NEXT

FOR i = LEN(w$) TO 1 STEP -1
b$ = b$ + MID$(w$, i, 1)
NEXT

FOR i = 1 TO LEN(b$)
IF MID$(b$, i, 1) = "0" THEN MID$(b$, i, 1) = " " ELSE GOTO pp
NEXT


pp:
b$ = LTRIM$(b$)
PRINT
PRINT n; "= "; b$; " (BIN)"




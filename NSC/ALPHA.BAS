' COUNTS THE NUMBER OF EVERY ALPHABET IN A STRING AND DISPLAYING THE RESULT
' ON THE SCREEN

CLS
DIM alpha(1, 26)
READ word$

FOR i = 1 TO LEN(word$)
1 f$ = MID$(word$, i, 1)
IF ASC(f$) < 65 OR ASC(f$) > 90 THEN i = i + 1: GOTO 1
jj = ASC(f$) - 64
alpha(1, jj) = alpha(1, jj) + 1
NEXT

FOR i = 1 TO 20
LOCATE i, 1: PRINT CHR$(i + 64); " -"; alpha(1, i)
NEXT

FOR i = 21 TO 26
LOCATE i - 20, 20: PRINT CHR$(i + 64); " -"; alpha(1, i)
NEXT

LOCATE 23, 1: PRINT word$

DATA "A STRING OF CAPITAL LETTERS ON A SINGLE LINE"


' TO CONVERT A STRING OF ALPHABET INTO A NUMERICAL FORMAT WITH REFERENCE TO
' A TELEPHONE

CLS
DIM num$(2 TO 9)
num$(2) = "ABC"
num$(3) = "DEF"
num$(4) = "GHI"
num$(5) = "JKL"
num$(6) = "MNO"
num$(7) = "PRS"
num$(8) = "TUV"
num$(9) = "XYZ"

INPUT "Input 7 alphbets "; seven$

FOR i = 1 TO LEN(seven$)
b$ = MID$(seven$, i, 1)
FOR i2 = 2 TO 9
IF INSTR(num$(i2), b$) > 0 THEN answer$ = answer$ + LTRIM$(STR$(i2))
NEXT
NEXT

PRINT answer$


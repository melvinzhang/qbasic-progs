' TO CALCULATE THE NEXT THREE NASTY NUMBERS FROM A GIVEN NUMBER

CLS
INPUT "Input a number "; n

DO
n = n + 1
c = 0

FOR fac = 1 TO n
IF INT(n / fac) = n / fac THEN c = c + 1: fc(c) = fac
NEXT

FOR i1 = 1 TO c
FOR i2 = 1 TO c
FOR i3 = 1 TO c
FOR i4 = 1 TO c

IF fc(i1) + fc(i2) = fc(i3) - fc(i4) AND i1 <> i2 AND i2 <> i3 AND i3 <> i4 AND i1 <> i3 AND i2 <> i4 AND i1 <> i4 THEN
PRINT n; "IS NASTY BECAUSE"; fc(i1); "+"; fc(i2); "="; fc(i3); "-"; fc(i4)
num = num + 1: GOTO 10
END IF

NEXT
NEXT
NEXT
NEXT

10 LOOP UNTIL num = 3





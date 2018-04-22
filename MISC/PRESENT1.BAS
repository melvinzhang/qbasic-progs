CLS
j = 13
kj = 1
d$ = "Greetings to all you viewers out there. I hope you will enjoy the magnificientsceneries from here."
LET k = LEN(d$)
FOR i = 1 TO k
IF i = 79 THEN kl = 1
IF kl = 1 THEN LET j = j + 1: LET kj = 1: kl = 0
LOCATE j, kj: PRINT MID$(d$, i, 1)
kj = kj + 1
FOR l = 1 TO 200: NEXT l
NEXT i


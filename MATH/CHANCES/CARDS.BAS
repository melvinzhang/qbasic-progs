total# = 1
tot# = 1

CLS
INPUT "Number of the desired cards in deck "; no
INPUT "Number of cards you will draw "; dra

max = 52 - no
min = max - (dra - 1)

FOR cnt = min TO max STEP 1
total# = total# * cnt
NEXT cnt

FOR cnt = max TO 52 STEP 1
tot# = tot# * cnt
NEXT


j# = total# / tot#

final = (1 - j#) * 100

PRINT final; "%"






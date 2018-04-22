numerator# = 1
denominator# = 1

CLS
INPUT "Number of the desired cards in deck "; no
INPUT "Number of cards you will draw "; dra

max = (52 - no) + 1
max1 = 52 - no
min = (max1 - (dra - 1)) + 1


FOR cnt = min TO max1 STEP 1
numerator# = numerator# * cnt
NEXT cnt
numerator# = numerator# * 4


FOR cnt = max TO 52 STEP 1
denominator# = denominator# * cnt
NEXT
denominator# = denominator# * max1



j# = numerator# / denominator#

final = j# * 100

PRINT final; "%"






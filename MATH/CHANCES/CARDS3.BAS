numerator# = 1
denominator# = 1

CLS
INPUT "Number of the desired cards in deck "; no
INPUT "Number of cards you will draw "; dra

max = 52 - no
min = 52 - dra - 1
max1 = 52 - dra + 1

FOR cnt = min TO max STEP 1
numerator# = numerator# * cnt
NEXT
numerator# = numerator# * no


FOR cnt = max1 TO 52
denominator# = denominator# * cnt
NEXT



j# = numerator# / denominator#

final = j# * 100

PRINT final; "%"






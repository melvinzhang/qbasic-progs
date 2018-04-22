CLS

INPUT "Number of dice "; f
INPUT "Number of throws of dice(s) "; N
Face = 6 ^ f
C = Face - 1

P = (C / Face) ^ N

chance = (1 - P) * 100

PRINT
PRINT chance; "% chance that in"; N; "throws you will get the desired"
PRINT " number on the dice(s)"


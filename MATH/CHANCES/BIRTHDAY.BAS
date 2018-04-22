CLS
total# = 1
DaysInYear = 365

INPUT "Number of people in group "; N

min = DaysInYear - (N - 1)

FOR i = min TO DaysInYear STEP 1
total# = total# * i
NEXT

J = total# / DaysInYear ^ N

chance = (1 - J) * 100
PRINT
PRINT chance; "% that two people in the group will have the same birthday"












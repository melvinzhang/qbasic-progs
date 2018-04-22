DEFDBL A-Z
CLS
nn = 1
INPUT "Number of consecutive composite number "; n
FOR k = 1 TO (n + 1)
nn = nn * k
NEXT

FOR l = 2 TO (n + 1)
PRINT nn + l
NEXT



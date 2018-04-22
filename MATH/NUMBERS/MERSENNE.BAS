DEFLNG A-Z
CLS
DIM pr(50)
pr(1) = 1
pr(2) = 2
pr(3) = 3
pr(4) = 5
pr(5) = 7
pr(6) = 11
pr(7) = 13
pr(8) = 17
pr(9) = 19
pr(10) = 23
pr(11) = 29
pr(12) = 31
pr(13) = 37
pr(14) = 41
pr(15) = 43
pr(16) = 47
pr(17) = 53
pr(18) = 59
pr(19) = 61
pr(20) = 67
pr(21) = 71


FOR p = 1 TO 12
prime = 2 ^ pr(p) - 1
PRINT prime
NEXT


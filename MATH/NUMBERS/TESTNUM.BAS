CLS
DEFLNG A-Z
DIM factor(1000)
counter = 0
INPUT "Input a number "; num
PRINT
PRINT "Factors of"; num; "are :"
FOR i = 1 TO num

IF INT(num / i) = num / i THEN
counter = counter + 1
factor(counter) = i
sum = sum + i
PRINT i,
END IF

NEXT
PRINT
PRINT
PRINT " Sum of factors ="; sum
IF INT(num / 2) = num / 2 THEN PRINT num; "is a EVEN number"
IF INT(num / 2) <> num / 2 THEN PRINT num; "is a ODD number"

IF sum - num = num THEN PRINT num; "is a PERFECT number"
IF sum - num - 1 = 0 THEN PRINT num; "is a PRIME number"
IF num = 1 THEN PRINT num; "is a PRIME number"
IF INT(SQR(num)) = SQR(num) THEN PRINT num; "is a PERFECT SQUARE"


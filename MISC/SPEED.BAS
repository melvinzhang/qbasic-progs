CLS
seconds = 60
DIM average(seconds)

FOR k = 1 TO seconds
begin = TIMER
DO
i = i + 1
LOOP UNTIL TIMER - begin >= 1
average(k) = i
i = 0
NEXT

FOR total = 1 TO seconds
sum = sum + average(total)
NEXT

PRINT "Speed Index ="; INT(sum / seconds)

'Home Computer (386)            -- 950 SI
'School Comp Lab 1 (486)        -- 1454 SI


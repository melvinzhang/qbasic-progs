' CONVERTS A BINARY NUMBER TO A NORMAL NUMBER

CLS
INPUT "Input a binary number "; bin&
bin$ = STR$(bin&)

FOR i = LEN(bin$) TO 1 STEP -1
IF MID$(bin$, i, 1) = "1" THEN num& = num& + 2 ^ ABS(i - LEN(bin$))
NEXT

PRINT num&


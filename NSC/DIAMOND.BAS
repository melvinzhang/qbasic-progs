CLS
INPUT "Input a word <= 10 letters "; word$

wpos = LEN(word$) + 1

CLS
LOCATE 11, 20: PRINT MID$(word$, 1, 1)

FOR i = 11 - LEN(word$) TO 11 - 1
LOCATE i, 20: PRINT MID$(word$, wpos, 1)
wpos = wpos - 1
NEXT

wpos = 2
FOR i = 12 TO 12 + LEN(word$)
LOCATE i, 20: PRINT MID$(word$, wpos, 1)
wpos = wpos + 1
NEXT

llpos = 14
poss = 1

FOR i = 11 - LEN(word$) + 1 TO 11
b = SCREEN(i, 20)
b$ = CHR$(b)
  FOR coun = i - poss + 1 TO LEN(word$)
    LOCATE i, llpos + coun: PRINT MID$(word$, coun, 1)
  NEXT
  llpos = llpos + 1
  poss = poss + 2
NEXT

llpos = 19

FOR i = 11 TO 11 + LEN(word$) - 2
b = SCREEN(i, 20)
b$ = CHR$(b)
  FOR coun = i - 10 TO LEN(word$)
    LOCATE i, llpos + coun: PRINT MID$(word$, coun, 1)
  NEXT
  llpos = llpos - 1
NEXT

llpos = 26
poss = 1


FOR i = 11 - LEN(word$) + 1 TO 11
b = SCREEN(i, 20)
b$ = CHR$(b)
  FOR coun = i - poss + 1 TO LEN(word$)
    LOCATE i, llpos - coun: PRINT MID$(word$, coun, 1)
  NEXT
  llpos = llpos - 1
  poss = poss + 2
NEXT

llpos = llpos + 1

FOR i = 11 TO 11 + LEN(word$) - 2
b = SCREEN(i, 20)
b$ = CHR$(b)
  FOR coun = i - 10 TO LEN(word$)
    LOCATE i, llpos - coun: PRINT MID$(word$, coun, 1)
  NEXT
  llpos = llpos + 1
NEXT



END


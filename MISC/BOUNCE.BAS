RANDOMIZE TIMER
num = 5

DIM x(num)
DIM y(num)
DIM inx(num)
DIM iny(num)
DIM co(num)


FOR i = 1 TO num
x(i) = INT(RND * 21) + 1
y(i) = INT(RND * 79) + 1
inx(i) = INT(RND * 7) - 3
iny(i) = INT(RND * 7) - 3
co(i) = INT(RND * 16)
NEXT

DO

FOR ll = 1 TO num
LOCATE x(ll), y(ll): PRINT " "
x(ll) = x(ll) + inx(ll)
y(ll) = y(ll) + iny(ll)

IF x(ll) > 22 OR x(ll) < 1 THEN inx(ll) = -inx(ll): x(ll) = x(ll) + inx(ll)
IF y(ll) > 79 OR y(ll) < 1 THEN iny(ll) = -iny(ll): y(ll) = y(ll) + iny(ll)

COLOR co(ll)
LOCATE x(ll), y(ll): PRINT "*"

FOR ill = 1 TO 30: NEXT

NEXT

LOOP UNTIL INKEY$ <> ""


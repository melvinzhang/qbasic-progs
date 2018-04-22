SCREEN 12

x = 10
y = 20

x1 = 200
y1 = 300

defx = ABS(x - x1)
defy = ABS(y - y1)

IF defx >= defy THEN incx = defx / defy: incy = defy / defy: stepp = defy
IF defx < defy THEN incx = defx / defx: incy = defy / defx: stepp = defx

FOR i = 1 TO stepp
x = x + incx: y = y + incy
PSET (x, y)
FOR h = 1 TO 20: NEXT
'IF i < stepp THEN PRESET (x, y)
NEXT



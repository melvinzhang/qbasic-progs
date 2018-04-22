SCREEN 12
LINE (0, 0)-(0, 440)

FOR i = 0 TO 480 STEP 40
LINE (0, i)-(5, i)
NEXT

LINE (0, 440)-(640, 440)

radius = 10
force = 80
mass = 10
grav = 10

x = 50
y = 440 - radius - 1
maxy = y
acc = force / mass
Speed = 0
CIRCLE (x, y), radius

start = TIMER
DO
CIRCLE (x, y), radius, 0
diff = TIMER - start
Speed = Speed + acc - (diff * grav)
y = y - (diff * Speed)
CIRCLE (x, y), radius
LOCATE 1, 70: PRINT Speed
IF y > maxy THEN EXIT DO
FOR g = 1 TO 500: NEXT
LOOP




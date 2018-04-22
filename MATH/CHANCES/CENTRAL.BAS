CLS
RANDOMIZE TIMER
DIM a$(6)
DIM bb(100)
cc = 0

a$(1) = "                             Û                           "
a$(2) = "                            Û Û                          "
a$(3) = "                           Û Û Û                         "
a$(4) = "                          Û Û Û Û                        "
a$(5) = "                         Û Û Û Û Û                       "
a$(6) = "                        Û Û Û Û Û Û                      "

LOCATE 5, 1
FOR i = 5 TO 10
PRINT a$(i - 4)
PRINT
NEXT

DO
a = 3
b = 30
cc = cc + 1

DO
rr = INT(RND * 2)
IF rr = 0 THEN rr = -1

LOCATE a, b: PRINT " "
a = a + 1
IF SCREEN(a, b) = 219 THEN b = b + rr
LOCATE a, b: PRINT "o"
FOR ei = 1 TO 10: NEXT
LOOP UNTIL a > 20

bb(b) = bb(b) + 1


IF bb(b) < 10 THEN
LOCATE 22, b - 1: PRINT bb(b)
ELSE
LOCATE 22, b - 1: PRINT INT(bb(b) / 10)
LOCATE 23, b - 1: PRINT bb(b) - (INT(bb(b) / 10) * 10)
END IF

LOOP UNTIL cc = 200



        'D[n%]            Moves cursor down n% units.
        'E[n%]            Moves cursor up and right n% units.
        'F[n%]            Moves cursor down and right n% units.
        'G[n%]            Moves cursor down and left n% units.
        'H[n%]            Moves cursor up and left n% units.
        'L[n%]            Moves cursor left n% units.
CLS
SCREEN 1
DIM circle1(100)
DIM circle2(100)
DIM circle3(100)
PSET (100, 100)
DRAW "r10f5d3g5u5l6f4l3h7u5r1"
PSET (100, 50)
DRAW "d5g6l3h4u3e4r8"
PSET (50, 100)
DRAW "u4r3e5r3f4d6g4l4h3l4u1"
GET (95, 100)-(120, 120), circle1
GET (85, 50)-(120, 75), circle2
GET (48, 85)-(70, 115), circle3
CLS
PUT (50, 100), circle3
PUT (150, 100), circle2
PUT (110, 50), circle1


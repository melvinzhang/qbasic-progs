'$DYNAMIC
DECLARE SUB ListFiles ()
DECLARE SUB LineColour ()
DECLARE SUB DrawLine ()
DECLARE SUB Circles ()
DECLARE SUB Clean ()
DECLARE SUB Colours ()
DECLARE SUB Finishing ()
DECLARE SUB FinishColour ()
DECLARE SUB ChangeLength ()
DECLARE SUB Paints ()
DECLARE SUB DrawBox ()
DECLARE SUB Delay ()
DECLARE SUB Setup ()
DECLARE SUB Limits ()
DECLARE SUB PutPoint ()
DECLARE SUB SelectPoint ()
DECLARE SUB ResetFlip ()
DECLARE SUB Help ()
DECLARE SUB Position ()
DECLARE SUB Delete ()
DECLARE SUB StoreImage ()
DECLARE SUB HorizontalFlip ()
DECLARE SUB VerticalFlip ()
DECLARE SUB Paste ()
DECLARE SUB StoreScreen ()

COMMON SHARED ud, lr, feature, linco, colo, dist, o, p
COMMON SHARED d, d1, d2, d3, d4, d5, d6, d7, d8, d9, d10, d11
COMMON SHARED funct, func$, feature$, finco
COMMON SHARED maxdepth, maxheight, maxleft, maxright



ON ERROR GOTO HANDLER

DIM SHARED a(3)                  'array used to store position of cursor
DIM SHARED b(3)                  'array used to store position of cursor
DIM SHARED tem(10)               'array used to store temporary data
DIM SHARED temp(10)              'array used to store temporary data
DIM SHARED x(100)                'array used to store position for flipping
DIM SHARED y(100)                'array used to store position for flipping
DIM SHARED x1(100)               'array used to store position for flipping
DIM SHARED y1(100)               'array used to store position for flipping
DIM SHARED Store(4040)           'array used to store temporary image
DIM SHARED Store1(29720)         'array used to store image of whole screen
DIM SHARED box(1000)             'array used to store image to be pasted

wi = 630                         'width of screen
hi = 470                         'height of screen
maxdepth = 410                   'Maximum depth
maxheight = 30                   'Maximum height
maxleft = 10                     'Maximum left movement
maxright = 630                   'Maximum right movement
ud = INT(hi / 2)                 'up or down position
lr = INT(wi / 2)                 'left or right position
feature = 5                      'paste feature (XOR default)
linco = 15                       'line colour for paint function
colo = 1                         'colour of paint
dist = 10                        'pixels moved each time
o = 320                          'horizontal point of reflection
p = 240                          'vertical point of reflection
funct = 7                        'number of the function in use
func$ = "Line     "              'name of the fuction in use
feature$ = "XOR"                 'name of default paste feature
finco = 15                       'colour for the finishing function
maxdim = 32767                   'maximum number of subscripts (16383, 32767)
d = 0                            'counter for line function
d1 = 0                           'counter for copy function
d2 = 0                           'counter for clear function
d3 = 0                           'counter for save function
d4 = 0                           'counter for paste function
d5 = 0                           'counter for Flipping function
d6 = 0                           'counter for Flippingv function
d7 = 0                           'counter for Flipping function
d8 = 0                           'counter for Flipping function
d9 = 0                           'counter for Box function
d10 = 0                          'counter for Position, Paste functions
d11 = 0                          'counter for Copy, Save, Paste functions


SCREEN 12
LOCATE 1, 29: PRINT "Press any key to start"
Setup
Delay
GOTO Info


Main:
i$ = LCASE$(INKEY$)
SELECT CASE i$
CASE "": GOTO Main
CASE CHR$(0) + "h": PRESET (lr, ud): ud = ud - dist: PutPoint
CASE CHR$(0) + "p": PRESET (lr, ud): ud = ud + dist: PutPoint
CASE CHR$(0) + "k": PRESET (lr, ud): lr = lr - dist: PutPoint
CASE CHR$(0) + "m": PRESET (lr, ud): lr = lr + dist: PutPoint
CASE CHR$(0) + ";": ChangeLength
CASE " ": GOSUB CHOOSE

CASE "g": funct = 2:      func$ = "Copy     "
CASE "f": funct = 9:      func$ = "Finishing"
CASE "l": funct = 7:      func$ = "Line     ": d = 0
CASE "h": funct = 10:     func$ = "Flip (H) "
CASE "v": funct = 11:     func$ = "Flip (V) "
CASE "t": funct = 12:     func$ = "Flip     ": StoreImage: LOCATE 3, 2: PRINT "Select point of reflection"
CASE "b": funct = 14:     func$ = "Box      ": d9 = 0
CASE "[": IF d11 = 1 THEN funct = 3:  func$ = "Paste (S)"
CASE "p": IF d11 = 1 THEN funct = 13: func$ = "Paste    "

CASE "1": feature = 1: feature$ = "AND   "
CASE "2": feature = 2: feature$ = "OR    "
CASE "3": feature = 3: feature$ = "PRESET"
CASE "4": feature = 4: feature$ = "PSET  "
CASE "5": feature = 5: feature$ = "XOR   "

CASE "o": FinishColour
CASE "e": LineColour
CASE "/": Help
CASE "s": ResetFlip
CASE "c": Colours
CASE "": END

CASE CHR$(0) + "=": funct = 1: func$ = "Paint    "
CASE CHR$(0) + "<": funct = 4: func$ = "Clear    "
CASE CHR$(0) + ">": CLS 1: d = 0: a(1) = 0: a(2) = 0: a(3) = 0
CASE CHR$(0) + "?": funct = 5: func$ = "Circle   "
CASE CHR$(0) + "@": funct = 6: func$ = "Save     "
CASE CHR$(0) + "a": GOSUB Load
CASE CHR$(0) + "b": ListFiles
CASE CHR$(0) + "c": Delete
CASE ELSE
END SELECT

IF funct = 3 OR funct = 13 THEN
maxright = 630 - hori: maxdepth = 410 - verti
ELSE maxright = 630: maxdepth = 410
END IF

Limits


Info:
LOCATE 1, 1:  PRINT "Using "; func$
LOCATE 1, 19: PRINT "X ="; lr; " Y ="; ud; "     "
LOCATE 1, 40: PRINT "Colour ="; a(3)
LOCATE 1, 55: PRINT feature$
LOCATE 1, 73: PRINT "/ - Help"
PSET (lr, ud)
GOTO Main



CHOOSE:
SELECT CASE funct
CASE 1:  Paints
CASE 2:  d1 = d1 + 1: GOSUB Sav
CASE 3:  Position
CASE 4:  d2 = d2 + 1: Clean
CASE 5:  Circles
CASE 6:  d3 = d3 + 1: GOSUB Save
CASE 7:  d = d + 1:   DrawLine
CASE 9:  Finishing
CASE 10: HorizontalFlip
CASE 11: VerticalFlip
CASE 12: SelectPoint
CASE 13: Paste
CASE 14: d9 = d9 + 1: DrawBox
END SELECT
RETURN



'***** COPYS THE IMAGE INTO MEMORY *****
Sav:
d11 = 1
IF d1 = 1 THEN temp(1) = lr: temp(2) = ud: z(1) = a(3): lr = lr + dist: a(1) = lr: a(2) = ud: a(3) = POINT(lr, ud):
IF d1 > 1 THEN d1 = 0: GOTO 2
RETURN
2
j = 4 + INT(((PMAP(lr, 0) - PMAP(temp(1), 0) + 1) * (1) + 7) / 8) * 4 * (PMAP(ud, 1) - PMAP(temp(2), 1) + 1)
j = j / 4

IF j > maxdim THEN
LOCATE 3, 2: StoreImage: PRINT "Image size too large"
Delay
LOCATE 3, 2: PRINT "                    "
PUT (10, 30), Store, PSET
RETURN
END IF

REDIM SHARED box(j)

PRESET (lr, ud)
PRESET (temp(1), temp(2))
PSET (temp(1), temp(2)), z(1)
PSET (a(1), a(2)), a(3)
GET (temp(1), temp(2))-(lr, ud), box
IF z(1) = 0 THEN PRESET (temp(1), temp(2))

hori = ABS(temp(1) - lr)
verti = ABS(temp(2) - ud)
d4 = 0
RETURN



'***** SAVES THE IMAGE ONTO A FILE *****
Save:
d11 = 1
IF d3 = 1 THEN temp(5) = lr: temp(6) = ud: z(2) = a(3): lr = lr + dist: a(1) = lr: a(2) = ud: a(3) = POINT(lr, ud)
IF d3 > 1 THEN d3 = 0: GOTO 5
RETURN

5 PRESET (lr, ud)
PSET (a(1), a(2)), a(3)
j1 = 4 + INT(((PMAP(lr, 0) - PMAP(temp(5), 0) + 1) * (1) + 7) / 8) * 4 * (PMAP(ud, 1) - PMAP(temp(6), 1) + 1)
j1 = j1 / 4

IF j1 > maxdim THEN
LOCATE 3, 2: StoreImage: PRINT "Image size too large"
Delay
LOCATE 3, 2: PRINT "                    "
PUT (10, 30), Store, PSET
RETURN
END IF

REDIM SHARED bog(1 TO j1)

PRESET (lr, ud)
PRESET (temp(5), temp(6))
PSET (temp(5), temp(6)), z(2)
PSET (a(1), a(2)), a(3)
GET (temp(5), temp(6))-(lr, ud), bog
IF z(2) = 0 THEN PRESET (temp(5), temp(6))
LOCATE 3, 2: INPUT "Input filename"; nme$

kme$ = nme$ + ".gra"
jkl$ = nme$ + ".aa"
hori = ABS(temp(5) - lr)
verti = ABS(temp(6) - ud)

kl = j1 * 4

OPEN jkl$ FOR OUTPUT AS #1
WRITE #1, j1, hori, verti
CLOSE #1

DEF SEG = VARSEG(bog(1))
BSAVE kme$, VARPTR(bog(1)), kl
DEF SEG

PRESET (temp(5), temp(6))
LOCATE 3, 2: PRINT "                                  "
PUT (10, 30), Store, PSET
RETURN



'***** LOADS A IMAGE FROM A FILE *****
Load:
LOCATE 1, 1: PRINT "Using Load     "
StoreImage
LOCATE 3, 2: INPUT "Input filename"; name1$
kame1$ = name1$ + ".gra"
jame1$ = name1$ + ".aa"

OPEN jame1$ FOR INPUT AS #1
INPUT #1, count, hori, verti
CLOSE #1

REDIM SHARED box(1 TO count)

DEF SEG = VARSEG(box(1))
BLOAD kame1$, VARPTR(box(1))
DEF SEG

LOCATE 3, 2: PRINT "                                           "
PUT (10, 30), Store, PSET
d4 = 0
RETURN



'***** ERROR HANDLER *****
HANDLER:
SELECT CASE ERR

CASE 53
   LOCATE 3, 2: PRINT "File not found         "
   Delay
   LOCATE 3, 2: PRINT "                       "
   PUT (10, 30), Store, PSET
   RESUME Main

CASE 64
   LOCATE 3, 2: PRINT "Bad file name          "
   Delay
   LOCATE 3, 2: PRINT "                       "
   PUT (10, 30), Store, PSET
   RESUME Main

CASE ELSE
   LOCATE 3, 2: PRINT ERR: END
END SELECT

REM $STATIC
SUB ChangeLength
'***** CHANGES NO. OF PIXELS MOVED EACH TIME *****
length:
StoreImage
LOCATE 3, 2: INPUT "Input length moved each time "; dist$
LOCATE 3, 2: PRINT "                                          "
dist = VAL(dist$)
IF dist < 1 THEN GOTO length
PUT (10, 30), Store, PSET
END SUB

SUB Circles
'***** DRAWS A CIRCLE *****
StoreImage
LOCATE 3, 2: INPUT "Radius of circle = ", ra$
LOCATE 3, 2: PRINT "                                    "
ra = VAL(ra$)
PUT (10, 30), Store, PSET
4 CIRCLE (lr, ud), ra
END SUB

SUB Clean
'***** CLEAR A PORTION OF THE SCREEN *****
b(1) = 0: b(2) = 0: b(3) = 0
a(1) = 0: a(2) = 0: a(3) = 0

IF d2 = 1 THEN PSET (lr, ud): temp(3) = lr: temp(4) = ud: lr = lr + dist: a(1) = lr: a(2) = ud: a(3) = POINT(lr, ud)
IF d2 = 2 THEN LINE (temp(3), temp(4))-(lr, ud), 0, BF: d2 = 0
END SUB

SUB Colours
'***** CHANGES THE PAINT COLOUR AND THE BORDER COLOUR *****
StoreImage
LOCATE 3, 2: PRINT "Line colour ="; linco
LOCATE 4, 2: INPUT "Paint color (1-15) "; colo$
colo = VAL(colo$)
IF linco > 0 THEN GOTO nex
LOCATE 5, 2: INPUT "Line color  (1-15) "; linco$
linco = VAL(linco$)

nex:
LOCATE 3, 2: PRINT "                                        "
LOCATE 4, 2: PRINT "                                        "
LOCATE 5, 2: PRINT "                                        "
funct = 1: func$ = "Paint    "
PUT (10, 30), Store, PSET
END SUB

SUB Delay
'***** DELAY ROUTINE *****
SLEEP
FOR comp = 1 TO 16
hjk$ = INKEY$
NEXT
END SUB

SUB Delete
'***** DELETES IMAGE FILE FROM DRIVE *****
StoreImage
LOCATE 1, 1: PRINT "Using Delete   "
LOCATE 3, 2: INPUT "Input file name "; fil$
fil1$ = fil$ + ".gra"
fil2$ = fil$ + ".aa"
KILL fil1$
KILL fil2$
LOCATE 3, 2: PRINT "                               "
PUT (10, 30), Store, PSET
END SUB

SUB DrawBox
'***** DRAWS A BOX *****
b(1) = 0: b(2) = 0: b(3) = 0
a(1) = 0: a(2) = 0: a(3) = 0

IF d9 = 1 THEN tem(3) = lr: tem(4) = ud: PSET (lr, ud): lr = lr + dist: a(1) = lr: a(2) = ud: a(3) = POINT(lr, ud)
IF d9 >= 2 THEN LINE (tem(3), tem(4))-(lr, ud), linco, B: tem(3) = lr: tem(4) = ud: finco = linco: a(1) = lr: a(2) = ud: a(3) = POINT(lr, ud): d9 = 0
END SUB

SUB DrawLine
'***** DRAWS A LINE *****
b(1) = 0: b(2) = 0: b(3) = 0
a(1) = 0: a(2) = 0: a(3) = 0

IF d = 1 THEN tem(1) = lr: tem(2) = ud: PSET (lr, ud): lr = lr + dist: a(1) = lr: a(2) = ud: a(3) = POINT(lr, ud)
IF d >= 2 THEN LINE (tem(1), tem(2))-(lr, ud), linco: tem(1) = lr: tem(2) = ud: finco = linco: a(1) = lr: a(2) = ud: a(3) = POINT(lr, ud)
END SUB

SUB FinishColour
'***** CHANGES THE FINISHING COLOUR *****
StoreImage
LOCATE 3, 2: INPUT "Finishing color (1-15) "; finco$
LOCATE 3, 2: PRINT "                                      "
finco = VAL(finco$)
funct = 9: func$ = "Finishing"
PUT (10, 30), Store, PSET
END SUB

SUB Finishing
'***** FINISHING *****
b(1) = 0: b(2) = 0: b(3) = 0
a(1) = 0: a(2) = 0: a(3) = 0

PSET (lr, ud), finco
a(1) = lr: a(2) = ud: a(3) = finco
END SUB

SUB Help
'***** ON LINE HELP *****
StoreScreen
CLS 0
LOCATE 3, 2
PRINT "ON_LINE HELP  "
PRINT
PRINT " Esc : End                          F1   : Length moved"
PRINT " e   : Changes line colour          F2   : Clear"
PRINT " c   : Changes paint colour         F3   : Paint"
PRINT " g   : Copy                         F4   : Clear screen"
PRINT " p   : Paste                        F5   : Circle"
PRINT " [   : Paste special                F6   : Save"
PRINT " f   : Finishing                    F7   : Load"
PRINT " l   : Draws a line (Default)       F8   : View files"
PRINT " b   : Draws a box                  F9   : Delete files"
PRINT " o   : Finishing colour"
PRINT " h   : Flip horizontally"
PRINT " v   : Flip vertically"
PRINT " t   : Select point of reflection"
PRINT " s   : Clears the flip function"
PRINT
PRINT " 1   : AND"
PRINT " 2   : OR"
PRINT " 3   : PRESET"
PRINT " 4   : PSET"
PRINT " 5   : XOR (Default)"
LOCATE 28, 1: PRINT "Press any key to return to the Drawing Screen"
Delay
CLS 0
Setup
PUT (10, 30), Store1, PSET
END SUB

SUB HorizontalFlip
'***** FLIP SHAPE HORIZONTALLY *****
IF d8 = 1 THEN d5 = d6: GOSUB Flipping
IF d7 = 1 THEN GOSUB Flipping
IF d7 = 0 OR d8 = 0 THEN d5 = d5 + 1: x(d5) = lr: y(d5) = ud
IF x(d5) = x(1) AND y(d5) = y(1) THEN GOSUB Flipping
EXIT SUB


Flipping:
ditto = d5 - 1

FOR co = 1 TO ditto
coo = co + 1

hdist = x(co) - o
x1(co) = o - hdist

hdist1 = x(coo) - o
x1(coo) = o - hdist1
LINE (x1(co), y(co))-(x1(coo), y(coo)), 15
NEXT co

d7 = 1
RETURN
END SUB

SUB Limits
'***** CHECKS THAT THE PASTED IMAGE WITHIN LIMITS *****
IF lr > maxright THEN PRESET (lr, ud): lr = maxright: a(1) = lr: a(2) = ud: a(3) = POINT(lr, ud)
IF lr < maxleft THEN PRESET (lr, ud): lr = maxleft: a(1) = lr: a(2) = ud: a(3) = POINT(lr, ud)
IF ud > maxdepth THEN PRESET (lr, ud): ud = maxdepth: a(1) = lr: a(2) = ud: a(3) = POINT(lr, ud)
IF ud < maxheight THEN PRESET (lr, ud): ud = maxheight: a(1) = lr: a(2) = ud: a(3) = POINT(lr, ud)
END SUB

SUB LineColour
'***** CHANGES LINE COLOUR *****
StoreImage
LOCATE 3, 2: INPUT "Line color  (1-15) "; linco$
LOCATE 3, 2: PRINT "                         "
linco = VAL(linco$)
PUT (10, 30), Store, PSET
END SUB

SUB ListFiles
'***** VIEW IMAGE FILES IN DRIVE *****
StoreScreen
CLS 0
LOCATE 1, 1: PRINT "Using View     "
LOCATE 3, 1: INPUT "Input drive name "; dr$
SHELL dr$
SHELL "dir/s/a/p *.gra"
LOCATE 28, 1: PRINT "Press any key to return to the Drawing Screen"
Delay
CLS
Setup
PUT (10, 30), Store1, PSET
END SUB

SUB Paints
'***** PAINTS AN AREA *****
PRESET (lr, ud)
PAINT (lr, ud), colo, linco
a(1) = lr: a(2) = ud: a(3) = colo
END SUB

SUB Paste
'***** PASTE THE IMAGE ONTO THE SCREEN *****
ON feature GOSUB Paste, Paste1, Paste2, Paste3, Paste4
EXIT SUB

Paste:
PRESET (lr, ud)
PSET (a(1), a(2)), a(3)
PUT (lr, ud), box, AND
a(1) = lr: a(2) = ud: a(3) = POINT(lr, ud)
EXIT SUB

Paste1:
PRESET (lr, ud)
PSET (a(1), a(2)), a(3)
PUT (lr, ud), box, OR
a(1) = lr: a(2) = ud: a(3) = POINT(lr, ud)
EXIT SUB

Paste2:
PRESET (lr, ud)
PSET (a(1), a(2)), a(3)
PUT (lr, ud), box, PRESET
a(1) = lr: a(2) = ud: a(3) = POINT(lr, ud)
EXIT SUB

Paste3:
PRESET (lr, ud)
PSET (a(1), a(2)), a(3)
PUT (lr, ud), box, PSET
a(1) = lr: a(2) = ud: a(3) = POINT(lr, ud)
EXIT SUB

Paste4:
IF d10 = 1 THEN PRESET (lr, ud)
PSET (a(1), a(2)), a(3)
PUT (lr, ud), box, XOR
a(1) = lr: a(2) = ud: a(3) = POINT(lr, ud)
d10 = 1
END SUB

SUB Position
'***** SELECT POSITION OF THE IMAGE TO BE PASTED *****
a(1) = 0: a(2) = 0: a(3) = 0
PRESET (lr, ud)
PUT (lr, ud), box, XOR

St:
ob$ = LCASE$(INKEY$)
SELECT CASE ob$
CASE "": GOTO St
CASE CHR$(0) + "h": PUT (lr, ud), box, XOR: ud = ud - dist: GOSUB PosiPaste
CASE CHR$(0) + "p": PUT (lr, ud), box, XOR: ud = ud + dist: GOSUB PosiPaste
CASE CHR$(0) + "k": PUT (lr, ud), box, XOR: lr = lr - dist: GOSUB PosiPaste
CASE CHR$(0) + "m": PUT (lr, ud), box, XOR: lr = lr + dist: GOSUB PosiPaste
CASE CHR$(0) + ";": ChangeLength
CASE "1": feature = 1: feature$ = "AND   "
CASE "2": feature = 2: feature$ = "OR    "
CASE "3": feature = 3: feature$ = "PRESET"
CASE "4": feature = 4: feature$ = "PSET  "
CASE "5": feature = 5: feature$ = "XOR   "
CASE " ": PUT (lr, ud), box, XOR: d10 = 0: Paste: EXIT SUB
END SELECT
LOCATE 1, 55: PRINT feature$
GOTO St

PosiPaste:
Limits
PUT (lr, ud), box, XOR
RETURN
END SUB

SUB PutPoint
'***** PUT POINT OF PREVIOUS POSITION ON SCREEN *****
b(1) = lr: b(2) = ud: b(3) = POINT(lr, ud):
PSET (a(1), a(2)), a(3)

FOR i = 1 TO 3
SWAP a(i), b(i)
NEXT
END SUB

SUB ResetFlip
'***** RSET THE FLIP FUNCTION *****
FOR i = 1 TO 100
x(i) = 0: y(i) = 0
x1(i) = 0: y1(i) = 0
NEXT
d5 = 0: d6 = 0: d7 = 0: d8 = 0
StoreImage
LOCATE 3, 2: PRINT "Flip function reinitialized"
Delay
LOCATE 3, 2: PRINT "                            "
PUT (10, 30), Store, PSET
END SUB

SUB SelectPoint
o = lr: p = ud
LOCATE 3, 2: PRINT "                               "
PUT (10, 30), Store, PSET
END SUB

SUB Setup
'***** DRAWS SCREEN SET-UP *****
LOCATE 28, 1

FOR row = 0 TO 15
COLOR 15
PRINT row;
COLOR row
PRINT "Û";
NEXT

VIEW SCREEN (1, 20)-(638, 420), , 15
END SUB

SUB StoreImage
GET (10, 30)-(630, 80), Store
END SUB

SUB StoreScreen
GET (10, 30)-(630, 410), Store1
END SUB

SUB VerticalFlip
'***** FLIPS SHAPE VERTICALLY *****
IF d7 = 1 THEN d6 = d5: GOSUB Flippingv
IF d8 = 1 THEN GOSUB Flippingv
IF d7 = 0 OR d8 = 0 THEN d6 = d6 + 1: x(d6) = lr: y(d6) = ud
IF x(d6) = x(1) AND y(d6) = y(1) THEN GOSUB Flippingv
EXIT SUB


Flippingv:
ditto1 = d6 - 1

FOR co1 = 1 TO ditto1
coo1 = co1 + 1

vdist = y(co1) - p
y1(co1) = p - vdist

vdist1 = y(coo1) - p
y1(coo1) = p - vdist1
LINE (x(co1), y1(co1))-(x(coo1), y1(coo1)), 15
NEXT co1

d8 = 1
RETURN
END SUB


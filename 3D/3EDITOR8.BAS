DECLARE SUB intro (a$)
ON ERROR GOTO eras
CLS
d$ = "Welcome, Welcome to the maze of eternity. I hope you will stay for quite a while. I wish you good luck (you need it) "
intro (d$)
10
siz = 135
CLS
SCREEN 1
DIM e(siz)
DIM v$(4, 3)
DIM f(3)
w$ = ""
w$ = w$ + "000000000000000"
w$ = w$ + "001111111111110"
w$ = w$ + "000000010001010"
w$ = w$ + "011111110001010"
w$ = w$ + "000000011111010"
w$ = w$ + "001111110000010"
w$ = w$ + "001000000111110"
w$ = w$ + "001111011100090"
w$ = w$ + "000000000000000"
FOR i = 1 TO siz
e(i) = VAL(MID$(w$, i, 1))
NEXT i
s = -1
g = 0
RANDOMIZE TIMER
170

x = INT(RND * siz - 20) + 10
IF e(x) <> 1 THEN GOTO 170
d = INT(RND * 4) + 1
210

IF x = g + 10 OR x = g - 10 THEN GOTO 170
IF x = g + 1 OR x = g - 1 THEN GOTO 170
h = h + 1
GOSUB 390
260

a$ = INKEY$
SELECT CASE a$
CASE "": GOTO 260
CASE CHR$(0) + "M": d = d + 1: GOTO start
CASE CHR$(0) + "K": d = d - 1: GOTO start
CASE CHR$(0) + "H": GOTO start
CASE "q", "Q": END
CASE ELSE: GOTO 260
END SELECT

start:
IF d = 5 THEN d = 1
IF d = 0 THEN d = 4
IF a$ <> CHR$(0) + "H" THEN GOTO 210
IF d = 1 AND e(x - 10) <> 0 THEN x = x - 10
IF d = 3 AND e(x + 10) <> 0 THEN x = x + 10
IF d = 2 AND e(x + 1) <> 0 THEN x = x + 1
IF d = 4 AND e(x - 1) <> 0 THEN x = x - 1
IF e(x) = 9 THEN GOTO 930   'check if you reach exit
GOTO 210
390

FOR i = 1 TO 4
t = i - 1
ON d GOTO 420, 460, 500, 540
420

f(1) = x - 10 * t + 1
f(2) = x - 10 * t
f(3) = x - 10 * t - 1
GOTO 570
460

f(1) = x + 10 + t
f(2) = x + t
f(3) = x - 10 + t
GOTO 570
500

f(1) = x + 10 * t - 1
f(2) = x + 10 * t
f(3) = x + 10 * t + 1
GOTO 570
540

f(1) = x - t - 10
f(2) = x - t
f(3) = x - t + 10
570

FOR j = 1 TO 3
IF f(j) < 1 OR f(j) > siz - 1 THEN GOTO 840
IF e(f(j)) = 0 THEN v$(i, j) = CHR$(219)
IF e(f(j)) = 1 THEN v$(i, j) = " "
IF e(f(j)) = 9 THEN v$(i, j) = "+"
IF e(f(j)) = 2 THEN v$(i, j) = "G"

630 NEXT j
NEXT i
v$(1, 2) = CHR$(234)  'your character
CLS
DIM xc(4): DIM yc(4)
xc(1) = 130
yc(1) = 80
xc(2) = 180
yc(2) = 80
xc(3) = 130
yc(3) = 110
xc(4) = 180
yc(4) = 110
LINE (0, 0)-(xc(1), yc(1))
LINE (0, 190)-(xc(3), yc(3))
LINE (315, 0)-(xc(2), yc(2))
LINE (315, 190)-(xc(4), yc(4))
LINE (xc(1), yc(1))-(xc(3), yc(3))
LINE (xc(1), yc(1))-(xc(2), yc(2))
LINE -(xc(4), yc(4))
LINE -(xc(3), yc(3))
LINE (50, 159)-(50, 31) 'l1
LINE (100, 128)-(100, 62)   'l2
LINE (210, 128)-(210, 62)'r1
LINE (263, 159)-(263, 31)'r2
FOR i = 1 TO 5
NEXT i
FOR i = 4 TO 1 STEP -1
p$ = ""
FOR j = 3 TO 1 STEP -1
p$ = p$ + v$(i, j)
NEXT j
PRINT TAB(8); p$
NEXT i
IF SCREEN(4, 7) = 219 THEN GOSUB cl2
GOSUB bug
LINE (55, 0)-(79, 30), 0, BF
RETURN
840

v$(i, j) = CHR$(219)
GOTO 630
930

PRINT "YOU HAVED ESCAPED"
PRINT "IN "; s * 5 + h; " MOVES"
PRINT "Do you wish to play again (y/n)"
946

ag$ = INKEY$
IF ag$ = "" THEN GOTO 946
IF ag$ = "y" THEN GOTO eras ELSE END

rm:
LINE (211, 31)-(262, 159), 0, BF
LINE (210, 62)-(263, 62)
LINE (210, 128)-(263, 128)
RETURN

r1:
LINE (181, 60)-(210 - 1, 159), 0, BF
RETURN

r1e:
LINE (181, 60)-(210 - 1, 159), 0, BF
LINE (xc(2), 80)-(210, 80)
LINE (xc(4), 110)-(210, 110)
RETURN

cb1:
LINE (101, 60)-(209, 128), 0, BF
LINE (100, 62)-(210, 62)
LINE (100, 128)-(210, 128)
RETURN

cb2:
LINE (51, 31)-(262, 159), 0, BF
LINE (50, 31)-(263, 31)
LINE (50, 159)-(263, 159)
RETURN

r2:
LINE (264, 0)-(315, 190), 0, BF
LINE (263, 31)-(315, 31)
LINE (263, 159)-(315, 159)
RETURN

l1:
LINE (101, 62)-(xc(3) - 1, yc(3) + 20), 0, BF
LINE (xc(1), yc(1))-(101, yc(1))
LINE (xc(3), yc(3))-(101, yc(3))
RETURN

lm:
LINE (51, 31)-(100 - 1, 159), 0, BF
LINE (100, 128)-(51, 128)
LINE (100, 62)-(51, 62)
RETURN

l2:
LINE (0, 0)-(50 - 1, 190), 0, BF
LINE (50, 31)-(0, 31)
LINE (50, 159)-(0, 159)
RETURN

cr1:
LINE (181, 60)-(210 - 1, 159), 0, BF
LINE (xc(2), yc(2))-(210, 62)
LINE (xc(4), yc(4))-(210, 128)
RETURN

crm:
LINE (211, 31)-(262, 159), 0, BF
LINE (210, 62)-(263, 31)
LINE (210, 128)-(263, 159)
RETURN

cr2:
LINE (264, 0)-(315, 190), 0, BF
LINE (263, 31)-(315, 0)
LINE (263, 159)-(315, 190)
RETURN

cl1:
LINE (101, 62)-(xc(3) - 1, yc(3) + 20), 0, BF
LINE (xc(1), yc(1))-(100, 62)
LINE (xc(3), yc(3))-(100, 128)
RETURN

clm:
LINE (51, 31)-(100 - 1, 159), 0, BF
LINE (100, 62)-(50, 31)
LINE (100, 128)-(50, 159)
RETURN

cl2:
LINE (0, 0)-(50 - 1, 190), 0, BF
LINE (50, 31)-(0, 0)
LINE (50, 159)-(0, 190)
RETURN

bug:
IF SCREEN(4, 8) = 219 THEN GOSUB cl2
IF SCREEN(2, 8) = 32 THEN GOSUB l1
IF SCREEN(3, 8) = 32 THEN GOSUB lm
IF SCREEN(4, 8) = 32 THEN GOSUB l2
IF SCREEN(2, 10) = 32 THEN GOSUB r1e
IF SCREEN(3, 10) = 32 THEN GOSUB rm
IF SCREEN(4, 10) = 32 THEN GOSUB r2
IF SCREEN(2, 10) = 219 THEN GOSUB cr1
IF SCREEN(3, 10) = 219 THEN GOSUB crm
IF SCREEN(4, 10) = 219 THEN GOSUB cr2
IF SCREEN(2, 8) = 219 THEN GOSUB cl1
IF SCREEN(3, 8) = 219 THEN GOSUB clm
IF SCREEN(2, 8) = 43 THEN GOSUB l1
IF SCREEN(3, 8) = 43 THEN GOSUB lm
IF SCREEN(4, 8) = 43 THEN GOSUB l2
IF SCREEN(2, 10) = 43 THEN GOSUB r1e
IF SCREEN(3, 10) = 43 THEN GOSUB rm
IF SCREEN(4, 10) = 43 THEN GOSUB r2
IF SCREEN(2, 9) = 219 THEN GOSUB cb1
IF SCREEN(3, 9) = 219 THEN GOSUB cb2
IF SCREEN(3, 9) = 43 THEN GOSUB xit
RETURN

xit:
LOCATE 10, 15: PRINT "Exit"
RETURN

eras:
ERASE e
ERASE v$
ERASE f
ERASE xc
ERASE yc
GOTO 10

REM   To change the size of the maze to the following

REM 10 : replace 70 with your number,n
REM 50-110 : add extra lines of 1s and 0s, so their that their total
REM  number is n
REM 120: replace 70 with n
REM 170 and 870: replace 50 with n-20
REM 580: replace 69 with n-1

SUB intro (a$)
j = 1
l = 50
FOR i = 1 TO LEN(a$)
LOCATE 15, l: PRINT MID$(a$, j, i)
LOCATE 15, 28: PRINT "Û": LOCATE 15, 52: PRINT "Û"
FOR k = 1 TO 350
IF INKEY$ = "m" THEN GOTO 1
NEXT k
l = l - 1
IF j > LEN(a$) THEN GOTO 1
IF l = 30 THEN kk = 1
IF kk = 1 THEN j = j + 1: i = 20: l = 30
NEXT i
1
END SUB


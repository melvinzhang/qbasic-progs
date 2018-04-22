LET g = 1
LET h = 1
LET y = 88
LET c = 79


start:
CLS
DIM b(9)
GOSUB empty
GOSUB draws
4 RANDOMIZE TIMER
LET star = INT(RND * 2) + 1
LOCATE 3, 1: INPUT "Which symbol do you want (x/o)"; sym$
IF sym$ = "x" THEN LET y = 88: c = 79
IF sym$ = "o" THEN LET y = 79: c = 88
IF star = 1 THEN LOCATE 2, 1: PRINT "                                     ": LOCATE 3, 1: PRINT "                                        ": GOTO 2
IF star = 2 THEN CLS : GOSUB mir ELSE GOTO 4
2 DO
1
LET i$ = INKEY$
SELECT CASE i$
CASE CHR$(0) + "H": LOCATE g, h: PRINT " ": g = g - 2: GOSUB draws
CASE CHR$(0) + "P": LOCATE g, h: PRINT " ": g = g + 2: GOSUB draws
CASE CHR$(0) + "K": LOCATE g, h: PRINT " ": h = h - 4: GOSUB draws
CASE CHR$(0) + "M": LOCATE g, h: PRINT " ": h = h + 4: GOSUB draws
CASE " ": GOSUB help
CASE "q": END
CASE "r": GOTO start
END SELECT
IF g < 11 THEN LET g = 11
IF h < 35 THEN LET h = 35
IF g > 15 THEN LET g = 15
IF h > 43 THEN LET h = 43

LOCATE g, h: PRINT CHR$(y)
LOOP

empty:
FOR i = 1 TO 9: b(i) = 32: NEXT i
RETURN

draws:
LOCATE 11, 35: PRINT ; CHR$(b(1)); " ³ "; CHR$(b(2)); " ³ "; CHR$(b(3))
LOCATE 12, 34: PRINT "ÄÄÄÅÄÄÄÅÄÄÄ"
LOCATE 13, 35: PRINT ; CHR$(b(4)); " ³ "; CHR$(b(5)); " ³ "; CHR$(b(6))
LOCATE 14, 34: PRINT "ÄÄÄÅÄÄÄÅÄÄÄ"
LOCATE 15, 35: PRINT ; CHR$(b(7)); " ³ "; CHR$(b(8)); " ³ "; CHR$(b(9))
GOSUB win
GOSUB check
RETURN

think:
IF b(1) = c AND b(2) = c AND b(3) = 32 THEN LET b(3) = c: GOSUB draws: RETURN
IF b(2) = c AND b(3) = c AND b(1) = 32 THEN LET b(1) = c: GOSUB draws: RETURN
IF b(1) = c AND b(3) = c AND b(2) = 32 THEN LET b(2) = c: GOSUB draws: RETURN

IF b(1) = c AND b(4) = c AND b(7) = 32 THEN LET b(7) = c: GOSUB draws: RETURN
IF b(1) = c AND b(7) = c AND b(4) = 32 THEN LET b(4) = c: GOSUB draws: RETURN
IF b(4) = c AND b(7) = c AND b(1) = 32 THEN LET b(1) = c: GOSUB draws: RETURN

IF b(2) = c AND b(5) = c AND b(8) = 32 THEN LET b(8) = c: GOSUB draws: RETURN
IF b(2) = c AND b(8) = c AND b(5) = 32 THEN LET b(5) = c: GOSUB draws: RETURN
IF b(5) = c AND b(8) = c AND b(2) = 32 THEN LET b(2) = c: GOSUB draws: RETURN

IF b(3) = c AND b(6) = c AND b(9) = 32 THEN LET b(9) = c: GOSUB draws: RETURN
IF b(3) = c AND b(9) = c AND b(6) = 32 THEN LET b(6) = c: GOSUB draws: RETURN
IF b(6) = c AND b(9) = c AND b(3) = 32 THEN LET b(3) = c: GOSUB draws: RETURN

IF b(4) = c AND b(5) = c AND b(6) = 32 THEN LET b(6) = c: GOSUB draws: RETURN
IF b(5) = c AND b(6) = c AND b(4) = 32 THEN LET b(4) = c: GOSUB draws: RETURN
IF b(4) = c AND b(6) = c AND b(5) = 32 THEN LET b(5) = c: GOSUB draws: RETURN

IF b(7) = c AND b(8) = c AND b(9) = 32 THEN LET b(9) = c: GOSUB draws: RETURN
IF b(8) = c AND b(9) = c AND b(7) = 32 THEN LET b(7) = c: GOSUB draws: RETURN
IF b(9) = c AND b(7) = c AND b(8) = 32 THEN LET b(8) = c: GOSUB draws: RETURN

IF b(1) = c AND b(5) = c AND b(9) = 32 THEN LET b(9) = c: GOSUB draws: RETURN
IF b(1) = c AND b(9) = c AND b(5) = 32 THEN LET b(5) = c: GOSUB draws: RETURN
IF b(9) = c AND b(5) = c AND b(1) = 32 THEN LET b(1) = c: GOSUB draws: RETURN

IF b(3) = c AND b(5) = c AND b(7) = 32 THEN LET b(7) = c: GOSUB draws: RETURN
IF b(3) = c AND b(7) = c AND b(5) = 32 THEN LET b(5) = c: GOSUB draws: RETURN
IF b(5) = c AND b(7) = c AND b(3) = 32 THEN LET b(1) = c: GOSUB draws: RETURN


IF b(1) = y AND b(2) = y AND b(3) = 32 THEN LET b(3) = c: GOSUB draws: RETURN
IF b(2) = y AND b(3) = y AND b(1) = 32 THEN LET b(1) = c: GOSUB draws: RETURN
IF b(1) = y AND b(3) = y AND b(2) = 32 THEN LET b(2) = c: GOSUB draws: RETURN

IF b(1) = y AND b(4) = y AND b(7) = 32 THEN LET b(7) = c: GOSUB draws: RETURN
IF b(1) = y AND b(7) = y AND b(4) = 32 THEN LET b(4) = c: GOSUB draws: RETURN
IF b(4) = y AND b(7) = y AND b(1) = 32 THEN LET b(1) = c: GOSUB draws: RETURN

IF b(2) = y AND b(5) = y AND b(8) = 32 THEN LET b(8) = c: GOSUB draws: RETURN
IF b(2) = y AND b(8) = y AND b(5) = 32 THEN LET b(5) = c: GOSUB draws: RETURN
IF b(5) = y AND b(8) = y AND b(2) = 32 THEN LET b(2) = c: GOSUB draws: RETURN

IF b(3) = y AND b(6) = y AND b(9) = 32 THEN LET b(9) = c: GOSUB draws: RETURN
IF b(3) = y AND b(9) = y AND b(6) = 32 THEN LET b(6) = c: GOSUB draws: RETURN
IF b(6) = y AND b(9) = y AND b(3) = 32 THEN LET b(3) = c: GOSUB draws: RETURN

IF b(4) = y AND b(5) = y AND b(6) = 32 THEN LET b(6) = c: GOSUB draws: RETURN
IF b(5) = y AND b(6) = y AND b(4) = 32 THEN LET b(4) = c: GOSUB draws: RETURN
IF b(4) = y AND b(6) = y AND b(5) = 32 THEN LET b(5) = c: GOSUB draws: RETURN

IF b(7) = y AND b(8) = y AND b(9) = 32 THEN LET b(9) = c: GOSUB draws: RETURN
IF b(8) = y AND b(9) = y AND b(7) = 32 THEN LET b(7) = c: GOSUB draws: RETURN
IF b(9) = y AND b(7) = y AND b(8) = 32 THEN LET b(8) = c: GOSUB draws: RETURN

IF b(1) = y AND b(5) = y AND b(9) = 32 THEN LET b(9) = c: GOSUB draws: RETURN
IF b(1) = y AND b(9) = y AND b(5) = 32 THEN LET b(5) = c: GOSUB draws: RETURN
IF b(9) = y AND b(5) = y AND b(1) = 32 THEN LET b(1) = c: GOSUB draws: RETURN

IF b(3) = y AND b(5) = y AND b(7) = 32 THEN LET b(7) = c: GOSUB draws: RETURN
IF b(3) = y AND b(7) = y AND b(5) = 32 THEN LET b(5) = c: GOSUB draws: RETURN
IF b(5) = y AND b(7) = y AND b(3) = 32 THEN LET b(3) = c: GOSUB draws: RETURN

'magic break
IF b(1) = y AND b(5) = 32 AND b(4) = 32 AND b(6) = 32 THEN LET b(5) = c: GOSUB draws: RETURN
IF b(1) = y AND b(5) = c AND b(4) = 32 AND b(6) = 32 THEN LET b(4) = c: GOSUB draws: RETURN
IF b(3) = y AND b(5) = 32 AND b(4) = 32 AND b(6) = 32 THEN LET b(5) = c: GOSUB draws: RETURN
IF b(3) = y AND b(5) = c AND b(4) = 32 AND b(6) = 32 THEN LET b(6) = c: GOSUB draws: RETURN
IF b(7) = y AND b(5) = 32 AND b(4) = 32 AND b(6) = 32 THEN LET b(5) = c: GOSUB draws: RETURN
IF b(7) = y AND b(5) = c AND b(4) = 32 AND b(6) = 32 THEN LET b(4) = c: GOSUB draws: RETURN



'win trick
IF b(1) = 32 AND b(3) = 32 AND b(7) = 32 AND b(9) = 32 THEN LET b(1) = c: GOSUB draws: RETURN
IF b(1) = y AND b(3) = 32 AND b(7) = 32 AND b(9) = 32 THEN LET b(3) = c: GOSUB draws: RETURN

IF b(9) = 32 AND b(4) = 32 THEN LET b(9) = c: GOSUB draws: RETURN
IF b(1) = c AND b(9) = 32 AND b(7) = 32 THEN LET b(9) = c: GOSUB draws: RETURN
IF b(1) = c AND b(9) = y AND b(3) = 32 THEN LET b(3) = c: GOSUB draws: RETURN
IF b(1) = c AND b(3) = c AND b(7) = 32 AND b(4) = 32 THEN LET b(7) = c: GOSUB draws: RETURN
IF b(1) = c AND b(9) = c AND b(7) = 32 AND b(4) = 32 AND b(8) = 32 THEN LET b(7) = c: GOSUB draws: RETURN

IF b(5) = 32 THEN LET b(5) = c: GOSUB draws: RETURN
IF b(1) = 32 THEN LET b(1) = c: GOSUB draws: RETURN
IF b(3) = 32 THEN LET b(3) = c: GOSUB draws: RETURN
IF b(9) = 32 THEN LET b(9) = c: GOSUB draws: RETURN
IF b(7) = 32 THEN LET b(7) = c: GOSUB draws: RETURN
IF b(2) = 32 THEN LET b(2) = c: GOSUB draws: RETURN
IF b(4) = 32 THEN LET b(4) = c: GOSUB draws: RETURN
IF b(6) = 32 THEN LET b(6) = c: GOSUB draws: RETURN
IF b(8) = 32 THEN LET b(8) = c: GOSUB draws: RETURN
RETURN

mir:
GOSUB draws
GOSUB think
RETURN

youwin:
LOCATE 19, 32: PRINT "*** YOU WIN ***"
END

iwin:
LOCATE 19, 32: PRINT "**** I WIN ****"
END

nowin:
LOCATE 19, 31: PRINT "*** ITS A TIE ***"
END

win:
IF b(1) = y AND b(2) = y AND b(3) = y THEN GOTO youwin
IF b(4) = y AND b(5) = y AND b(6) = y THEN GOTO youwin
IF b(7) = y AND b(8) = y AND b(9) = y THEN GOTO youwin

IF b(1) = y AND b(4) = y AND b(7) = y THEN GOTO youwin
IF b(2) = y AND b(5) = y AND b(8) = y THEN GOTO youwin
IF b(3) = y AND b(6) = y AND b(9) = y THEN GOTO youwin

IF b(1) = y AND b(5) = y AND b(9) = y THEN GOTO youwin
IF b(3) = y AND b(5) = y AND b(7) = y THEN GOTO youwin

IF b(1) = c AND b(2) = c AND b(3) = c THEN GOTO iwin
IF b(4) = c AND b(5) = c AND b(6) = c THEN GOTO iwin
IF b(7) = c AND b(8) = c AND b(9) = c THEN GOTO iwin

IF b(1) = c AND b(4) = c AND b(7) = c THEN GOTO iwin
IF b(2) = c AND b(5) = c AND b(8) = c THEN GOTO iwin
IF b(3) = c AND b(6) = c AND b(9) = c THEN GOTO iwin

IF b(1) = c AND b(5) = c AND b(9) = c THEN GOTO iwin
IF b(3) = c AND b(5) = c AND b(7) = c THEN GOTO iwin
RETURN

check:
FOR i = 1 TO 9: IF b(i) = y OR b(i) = c THEN GOTO 5 ELSE RETURN
5 NEXT i
GOTO nowin

help:
IF g = 11 AND h = 35 THEN IF b(1) = c THEN GOTO 1 ELSE LET b(1) = y: GOSUB mir
IF g = 11 AND h = 39 THEN IF b(2) = c THEN GOTO 1 ELSE LET b(2) = y: GOSUB mir
IF g = 11 AND h = 43 THEN IF b(3) = c THEN GOTO 1 ELSE LET b(3) = y: GOSUB mir

IF g = 13 AND h = 35 THEN IF b(4) = c THEN GOTO 1 ELSE LET b(4) = y: GOSUB mir
IF g = 13 AND h = 39 THEN IF b(5) = c THEN GOTO 1 ELSE LET b(5) = y: GOSUB mir
IF g = 13 AND h = 43 THEN IF b(6) = c THEN GOTO 1 ELSE LET b(6) = y: GOSUB mir

IF g = 15 AND h = 35 THEN IF b(7) = c THEN GOTO 1 ELSE LET b(7) = y: GOSUB mir
IF g = 15 AND h = 39 THEN IF b(8) = c THEN GOTO 1 ELSE LET b(8) = y: GOSUB mir
IF g = 15 AND h = 43 THEN IF b(9) = c THEN GOTO 1 ELSE LET b(9) = y: GOSUB mir
RETURN



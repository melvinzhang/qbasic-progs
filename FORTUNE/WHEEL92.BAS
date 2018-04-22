DECLARE SUB PrintMenu ()
DECLARE SUB Sparkle ()
DECLARE SUB SpinWheel ()
DECLARE SUB BuyVowel ()
DECLARE SUB NoSpace ()
DECLARE SUB GotSpace ()
DECLARE SUB SolveFinal ()
DECLARE SUB LoadPuzzle ()
DECLARE SUB LastSpin ()
COMMON SHARED letter$, turn, length, position, v, num, endpos, consonants$
COMMON SHARED nump, alpha$, alpha1$, counter, finalround, Duration, Cata$
COMMON SHARED begintime


CLS
INPUT "Number of players "; nump
INPUT "Duration of play (min)"; du
Duration = INT(du * 60)


DIM SHARED money(nump)
DIM SHARED realmoney(nump)
DIM SHARED playername$(nump)
DIM SHARED thing$(1000)
DIM SHARED wheel(20)


CLS
RANDOMIZE TIMER
FOR pl = 1 TO nump
PRINT "Enter player"; pl; "'s name"
INPUT playername$(pl)
NEXT
CLS


wheel(1) = 100
wheel(2) = 200
wheel(3) = 300
wheel(4) = 400
wheel(5) = 500
wheel(8) = 600
wheel(9) = 700
wheel(10) = 800
wheel(11) = 900
wheel(12) = 1000
wheel(13) = 1500

turn = 1
counter = 0
begintime = TIMER
finalround = 0
v = 0
Cata = 0
Cata$ = ""
alpha$ = ""
alpha1$ = ""
consonants$ = "BCDFGHJKLMNPQRSTVWXYZ"




RESTART:
LoadPuzzle
PrintMenu



'***** ACCEPT INPUT FROM KEYBOARD *****
Begin:
DO
LOCATE 2, 1: PRINT playername$(turn); "                                      "
LOCATE 3, 1: PRINT "This puzzle  $"; money(turn); "                          "
LOCATE 4, 1: PRINT "The game     $"; realmoney(turn); "                      "
kl$ = INKEY$
SELECT CASE LCASE$(kl$)
CASE "1": SpinWheel
CASE "2": IF money(turn) >= 250 THEN BuyVowel
CASE "3": GOSUB SolvePuzzle
CASE "4": GOTO RevealAns
CASE "5": Sparkle
END SELECT

Times = INT(TIMER - begintime)
IF Times >= Duration THEN LastSpin
LOOP




'***** SOLVE THE PUZZLE *****
SolvePuzzle:
LOCATE 5, 1: LINE INPUT "Enter your answer : ", ans$
IF LCASE$(ans$) = LCASE$(thing$(num)) THEN
realmoney(turn) = realmoney(turn) + money(turn)
FOR mn = 1 TO nump: money(mn) = 0: NEXT mn
alpha$ = ""
alpha1$ = ""
GOTO RESTART
ELSE
IF turn = nump THEN turn = 1 ELSE turn = turn + 1
BEEP
END IF
LOCATE 5, 1: PRINT "                                                         "
RETURN


  

'***** REVEAL ANSWER *****
RevealAns:
LOCATE 13, position: PRINT thing$(num)
FOR mn = 1 TO nump: money(mn) = 0: NEXT mn
alpha$ = "": alpha1$ = ""
SLEEP
GOTO RESTART

SUB BuyVowel
Start1:
DO
i$ = INKEY$
IF UCASE$(i$) = "Q" THEN EXIT SUB
IF i$ <> "" THEN letter$ = UCASE$(i$): GOSUB Testvowel: EXIT SUB
LOOP

Testvowel:
IF INSTR("AEIOU", letter$) = 0 THEN GOTO Start1
IF INSTR(alpha1$, letter$) >= 1 THEN GOTO Start1

IF INSTR(thing$(num), letter$) = 0 THEN
LOCATE 1, 1: PRINT "No "; letter$
IF turn = nump THEN turn = 1 ELSE turn = turn + 1
BEEP
EXIT SUB
END IF

alpha1$ = alpha1$ + letter$

FOR c1 = 1 TO length
IF MID$(thing$(num), c1, 1) = letter$ THEN
posletter = (position + c1) - 1
LOCATE 11, posletter: PRINT letter$
END IF
NEXT c1

money(turn) = money(turn) - 250

END SUB

SUB GotSpace
FOR i = position TO endpos
counter = counter + 1
IF ASC(MID$(thing$(num), counter, 1)) <> 32 THEN LOCATE 11, i: PRINT "_"
IF ASC(MID$(thing$(num), counter, 1)) = 39 THEN LOCATE 11, i: PRINT "'"
IF ASC(MID$(thing$(num), counter, 1)) = 44 THEN LOCATE 11, i: PRINT ","
NEXT
counter = 0
END SUB

SUB LastSpin
'***** SPINS THE WHEEL ONE LAST TIME *****
LOCATE 1, 30: PRINT "As time is running short, I will give the "
LOCATE 2, 30: PRINT "wheel a final spin. Vowels worth nothing,"
LOCATE 3, 30: PRINT "consonants worth  $"
finalround = 1
consonants$ = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
SpinWheel
END SUB

SUB LoadPuzzle
'***** RANDOMLY SELECT A CATAGEORY *****
RANDOMIZE TIMER
Cata = INT(RND * 18) + 1
SELECT CASE Cata
CASE 18:       FILENAME$ = "B:\fortune\txt\thing.txt":   Cata$ = "Thing"
CASE 17:       FILENAME$ = "country.txt":  Cata$ = "Country"
CASE 1, 11:    FILENAME$ = "B:\fortune\txt\jobs.txt":    Cata$ = "Jobs"
CASE 13, 10:   FILENAME$ = "B:\fortune\txt\megaword.txt": Cata$ = "Megaword"
CASE 7, 4, 14: FILENAME$ = "B:\fortune\txt\places.txt":  Cata$ = "Places"
CASE 5, 6, 15: FILENAME$ = "B:\fortune\txt\phrase.txt":   Cata$ = "Phrase"
CASE 12, 9, 8: FILENAME$ = "B:\fortune\txt\people.txt":    Cata$ = "Famous People"
CASE 16, 2, 3: FILENAME$ = "B:\fortune\txt\fiction.txt":    Cata$ = "Fictitous Characters"
END SELECT


'***** LOAD THE PUZZLES *****
OPEN FILENAME$ FOR INPUT AS #1
CLS
v = 0
DO WHILE NOT EOF(1)
v = v + 1
LINE INPUT #1, thing$(v)
LOOP
CLOSE #1


'***** INITIALLIZE VARIABLES *****
num = INT(RND * v) + 1
length = LEN(thing$(num))
position = INT((55 - length) / 2)
endpos = position + length - 1


'***** PRINT DASHES *****
IF INSTR(thing$(num), " ") > 0 THEN GotSpace ELSE NoSpace
END SUB

SUB NoSpace
FOR i = position TO endpos
counter = counter + 1
LOCATE 11, i: PRINT "_"
IF ASC(MID$(thing$(num), counter, 1)) = 39 THEN LOCATE 11, i: PRINT "'"
IF ASC(MID$(thing$(num), counter, 1)) = 44 THEN LOCATE 11, i: PRINT ","
NEXT
counter = 0
END SUB

SUB PrintMenu
'***** PRINTS MENU ON SCREEN *****
LOCATE 7, (55 - LEN(Cata$)) / 2: PRINT Cata$
LOCATE 17, 1: PRINT "1. Spin the Wheel"
LOCATE 18, 1: PRINT "2. Buy a vowel"
LOCATE 19, 1: PRINT "3. Solve the puzzle"
LOCATE 20, 1: PRINT "4. Reveal answer"
LOCATE 21, 1: PRINT "5. Quit"
END SUB

SUB SolveFinal
LOCATE 5, 1: LINE INPUT "Enter your answer : ", ans$
IF LCASE$(ans$) = LCASE$(thing$(num)) THEN
realmoney(turn) = realmoney(turn) + money(turn)
FOR mn = 1 TO nump: money(mn) = 0: NEXT mn
alpha$ = ""
alpha1$ = ""
Sparkle
ELSE
IF turn = nump THEN turn = 1 ELSE turn = turn + 1
BEEP
END IF
LOCATE 5, 1: PRINT "                                                         "
END SUB

SUB Sparkle
CLS
row = INT((20 - nump) / 2)
FOR i = 1 TO nump
LOCATE i + row, 30: PRINT playername$(i)
LOCATE i + row, 45: PRINT " : $"; realmoney(i)
NEXT

 
  COLOR 4, 0
  A$ = "*    *    *    *    *    *    *    *    *    *    *    *    *    *    *    *    *    "
  WHILE INKEY$ <> "": WEND 'Clear keyboard buffer

  WHILE INKEY$ = ""
    FOR A = 1 TO 5
      LOCATE 1, 1                             'print horizontal sparkles
      PRINT MID$(A$, A, 80);
      LOCATE 22, 1
      PRINT MID$(A$, 6 - A, 80);

      FOR b = 2 TO 21                         'Print Vertical sparkles
        c = (A + b) MOD 5
        IF c = 1 THEN
          LOCATE b, 80
          PRINT "*";
          LOCATE 23 - b, 1
          PRINT "*";
        ELSE
          LOCATE b, 80
          PRINT " ";
          LOCATE 23 - b, 1
          PRINT " ";
        END IF
      NEXT b
    NEXT A
  WEND

COLOR 7
CLS
END
END SUB

SUB SpinWheel
Redo:
RANDOMIZE TIMER

LOCATE 5, 60:  PRINT "$100"
LOCATE 6, 60:  PRINT "$200"
LOCATE 7, 60:  PRINT "$300"
LOCATE 8, 60:  PRINT "$400"
LOCATE 9, 60:  PRINT "$500"
LOCATE 10, 60: PRINT "Lose a turn"
LOCATE 11, 60: PRINT "Bankrupt"
LOCATE 12, 60: PRINT "$600"
LOCATE 13, 60: PRINT "$700"
LOCATE 14, 60: PRINT "$800"
LOCATE 15, 60: PRINT "$900"
LOCATE 16, 60: PRINT "$1000"
LOCATE 17, 60: PRINT "$1500"
LOCATE 18, 60: PRINT "Lose a turn"
LOCATE 19, 60: PRINT "Bankrupt"


FOR ver = 5 TO 19: LOCATE ver, 56: PRINT " ": NEXT
FOR co = 1 TO 20
mon = INT((19 - 5 + 1) * RND + 5)
LOCATE mon, 56: PRINT ""
FOR co1 = 1 TO (INT(RND * 900) + 100): NEXT
IF co < 20 THEN LOCATE mon, 56: PRINT " "
NEXT

'***** ALTERNATIVE WAY TO SPIN WHEEL *****
'speed = 1
'DO
'mon = mon + 1
'IF mon >= 20 THEN mon = 5
'LOCATE mon, 56: PRINT ""
'FOR delay = 1 TO speed: NEXT
'speed = speed + INT((RND * 300) + 200)
'IF speed < 2500 THEN LOCATE mon, 56: PRINT " "
'LOOP UNTIL speed >= 2500



IF finalround = 1 THEN
IF mon = 10 OR mon = 18 OR mon = 11 OR mon = 19 THEN GOTO Redo
LOCATE 3, 49: PRINT wheel(mon - 4)
SLEEP
LOCATE 1, 30: PRINT "                                                   "
LOCATE 2, 30: PRINT "                                                   "
LOCATE 3, 30: PRINT "                                                   "
END IF


IF mon = 10 OR mon = 18 THEN
IF turn = nump THEN turn = 1 ELSE turn = turn + 1
BEEP
EXIT SUB
END IF

IF mon = 11 OR mon = 19 THEN
money(turn) = 0
IF turn = nump THEN turn = 1 ELSE turn = turn + 1
BEEP
EXIT SUB
END IF


start:
DO
i$ = INKEY$
IF UCASE$(i$) = "Q" THEN IF finalround <> 1 THEN EXIT SUB
IF UCASE$(i$) = "3" THEN IF finalround = 1 THEN SolveFinal

IF i$ <> "" THEN letter$ = UCASE$(i$): GOSUB Test

LOCATE 2, 1: PRINT playername$(turn); "                                      "
LOCATE 3, 1: PRINT "This puzzle  $"; money(turn); "                          "
LOCATE 4, 1: PRINT "The game     $"; realmoney(turn); "                      "
LOOP

Test:
IF INSTR(consonants$, letter$) = 0 THEN GOTO start
IF INSTR(alpha$, letter$) >= 1 THEN GOTO start

IF INSTR(thing$(num), letter$) = 0 THEN
LOCATE 1, 1: PRINT "No "; letter$
IF turn = nump THEN turn = 1: BEEP ELSE turn = turn + 1: BEEP

IF finalround = 1 THEN
LOCATE 2, 1: PRINT playername$(turn); "                                      "
LOCATE 3, 1: PRINT "This puzzle  $"; money(turn); "                          "
LOCATE 4, 1: PRINT "The game     $"; realmoney(turn); "                      "
GOTO start
END IF

EXIT SUB
END IF

alpha$ = alpha$ + letter$

FOR c = 1 TO length
IF MID$(thing$(num), c, 1) = letter$ THEN
posletter = (position + c) - 1
LOCATE 11, posletter: PRINT letter$

IF INSTR("BCDFGHJKLMNPQRSTVWXYZ", letter$) >= 1 THEN
money(turn) = money(turn) + wheel(mon - 4)
END IF

END IF
NEXT c

IF finalround = 1 THEN
btime = TIMER
DO
i$ = INKEY$
IF UCASE$(i$) = "3" THEN IF finalround = 1 THEN SolveFinal
LOCATE 1, 40: PRINT INT(6 - (TIMER - btime)); "(S)"
LOOP UNTIL INT(6 - (TIMER - btime)) = 0

BEEP

IF turn = nump THEN turn = 1 ELSE turn = turn + 1
GOTO start
END IF

END SUB


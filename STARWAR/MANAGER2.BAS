main:
CLS
PRINT
PRINT "WELCOME TO THE STARWAR(S) PRODUCTION SPECIAL"
PRINT
PRINT
PRINT "1.  Introduction to the Starwars series"
PRINT "2.  Production of Star (The first in this amazing series)"
PRINT "3.  New improvements (Star1)"
PRINT "4.  Adding of bright colours (Star1C)"
PRINT "5.  Introducing two players (Starwar)"
PRINT "6.  A better scoring system (Starwar C)"
PRINT "7.  Adding new colours and a better way of"
PRINT "    presenting the scores (Starwar D)"
PRINT "8.  Makings it easier to change the structure"
PRINT "    of the program and adding tracer missiles (Starwar E)"
PRINT "9.  Makings digonal shooting possible (Starwar F)"
PRINT "10. Adding a way to make one of the player disappear (Starwar Y)"
PRINT "11. Now, both players can disappear (Starwar X)"
PRINT "12. Introducing artifical intelligence (Champion)"
PRINT "13. Adding of digonal shots, sound and better program structure"
PRINT "    (Beep, ChampioD, ChampioH, ChampioZ, ChampioN)"
PRINT "14. The making of MANAGER (This program)"
PRINT "15. End Program !!"
PRINT

Choose:
INPUT "Pick the number of your choice "; c
ON c GOTO 10, 20', 30, 40, 50, 60, 70, 80, 90, 100, 110, 120, 130, 140, 150
GOTO Choose

10 CLS
PRINT
PRINT
PRINT "A very warm welcome to whoever you are. Now, I (Melvin) will guide"
PRINT "you through the production of the Starwar(s) series. "
PRINT
PRINT "It was a boring June holiday, so I decided to use my knowledge"
PRINT "of basic programming to program a game on my micro-computer"
PRINT "(personal computer)"
PRINT
PRINT "Some time ago, I had already had plans on making a computer game"
PRINT "but whenever I'm play testing the program I would encounter"
PRINT "numerous bugs, which made me very fed up"
PRINT
PRINT "This time I made up my mind to create a complete program, no matter"
PRINT "what it takes. I finally decided to make an arcade shooting game"
PRINT "During the production of the game, I encountered a lot of bugs"
PRINT "but I managed to 'solve' them all."
PRINT
PRINT "To find out more about the Starwar(s) series read the rest of this"
PRINT "program"
SLEEP
GOTO main

20 CLS
PRINT
PRINT
PRINT "The program Star was the very first in the series, it has no colours,"
PRINT "sound and limited directions of shooting, inaddition to all the above,"
PRINT "Star also had a major problem. In the program, to determine if a shot"
PRINT "had hit its targert, I used the method shown below."
PRINT "                    IF X + Y = X1 + Y1                           "
PRINT "X and Y are equal to the X and Y cordinate of the shot, while"
PRINT "X1 and Y1 represents the X and Y cordinate of the target."
PRINT "Therefore in the example above, when X + Y = X1 + Y1 then the target"
PRINT "is hit. In some cases the sum of the X and Y cordinates of the shot"
PRINT "may be equal to the sum of the X and Y cordinates of the target, but"
PRINT "the shot did not hit the target at all"
PRINT
PRINT "In Star, a '*' was used to represent the player, while an 'A' was used"
PRINT "to represent the target"
PRINT
SLEEP
GOTO main











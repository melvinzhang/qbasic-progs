1 CLS
COLOR 10
LOCATE 3, 23: PRINT "     Qbasic Program Manager"
LOCATE 4, 23: PRINT "and a one stop Information Counter"
LOCATE 5, 23: PRINT "        for Quick Games"
COLOR 14
 
  LOCATE 7, 23: PRINT "1. Asteroid              2. 3D Maze"
  LOCATE 8, 23: PRINT "3. Ball                  4. Block"
  LOCATE 9, 23: PRINT "5. Q Fighters            6. Tic-Tac-Toe"
 LOCATE 10, 23: PRINT "7. Bomb                  8. Morph"
 LOCATE 11, 23: PRINT "9. Patern               10. Starwars"
LOCATE 12, 22: PRINT "11. Pipe Dream           12. Candle Sticks"
LOCATE 13, 22: PRINT "13. Coins                14. Miners"
LOCATE 14, 22: PRINT "15. Turtle               16. Death Valley"
LOCATE 15, 22: PRINT "17. Escape !             18. Wheel of Fortune"
LOCATE 16, 22: PRINT "19. Quit"

COLOR 7
LOCATE 18, 1: PRINT "For more infomation on each of the programes,"
LOCATE 19, 1: PRINT "please type in the number representing the program."
LOCATE 20, 1: PRINT "To run the program, enter the number of the program plus"
LOCATE 21, 1: PRINT "the letter 'r'. For example '1r'."
LOCATE 22, 1: INPUT ; num$
IF num$ = "1" THEN GOTO aster
IF num$ = "2" THEN GOTO maze
IF num$ = "3" THEN GOTO ball
IF num$ = "4" THEN GOTO block
IF num$ = "5" THEN GOTO fight
IF num$ = "6" THEN GOTO tic
IF num$ = "7" THEN GOTO bomb
IF num$ = "8" THEN GOTO morph
IF num$ = "9" THEN GOTO pat
IF num$ = "10" THEN GOTO star
IF num$ = "11" THEN GOTO pipe
IF num$ = "12" THEN GOTO sticks
IF num$ = "13" THEN GOTO coins
IF num$ = "14" THEN GOTO mine
IF num$ = "15" THEN GOTO turtle
IF num$ = "16" THEN GOTO death
IF num$ = "17" THEN GOTO escape
IF num$ = "18" THEN GOTO wheel

 IF num$ = "1r" THEN LOCATE 22, 1: COLOR 28: PRINT "Please wait while loading ...": COLOR 7: RUN "b:\project\aster1.bas"
 IF num$ = "2r" THEN LOCATE 22, 1: COLOR 28: PRINT "Please wait while loading ...": COLOR 7: RUN "b:\project\3dmaze1.bas"
 IF num$ = "3r" THEN LOCATE 22, 1: COLOR 28: PRINT "Please wait while loading ...": COLOR 7: RUN "b:\project\block1.bas"
 IF num$ = "4r" THEN LOCATE 22, 1: COLOR 28: PRINT "Please wait while loading ...": COLOR 7: RUN "b:\project\ball1.bas"
 IF num$ = "5r" THEN LOCATE 22, 1: COLOR 28: PRINT "Please wait while loading ...": COLOR 7: RUN "b:\project\street1.bas"
 IF num$ = "6r" THEN LOCATE 22, 1: COLOR 28: PRINT "Please wait while loading ...": COLOR 7: RUN "b:\project\tictac.bas"
 IF num$ = "7r" THEN LOCATE 22, 1: COLOR 28: PRINT "Please wait while loading ...": COLOR 7: RUN "b:\project\bomb1.bas"
 IF num$ = "8r" THEN LOCATE 22, 1: COLOR 28: PRINT "Please wait while loading ...": COLOR 7: RUN "b:\project\morph1.bas"
 IF num$ = "9r" THEN LOCATE 22, 1: COLOR 28: PRINT "Please wait while loading ...": COLOR 7: RUN "b:\project\patern8.bas"
IF num$ = "10r" THEN LOCATE 22, 1: COLOR 28: PRINT "Please wait while loading ...": COLOR 7: RUN "b:\project\starwa.bas"
IF num$ = "11r" THEN LOCATE 22, 1: COLOR 28: PRINT "Please wait while loading ...": COLOR 7: RUN "b:\project\pipe1.bas"
IF num$ = "12r" THEN LOCATE 22, 1: COLOR 28: PRINT "Please wait while loading ...": COLOR 7: RUN "b:\project\token1.bas"
IF num$ = "13r" THEN LOCATE 22, 1: COLOR 28: PRINT "Please wait while loading ...": COLOR 7: RUN "b:\project\token.bas"
IF num$ = "14r" THEN LOCATE 22, 1: COLOR 28: PRINT "Please wait while loading ...": COLOR 7: RUN "b:\project\miner1.bas"
IF num$ = "15r" THEN LOCATE 22, 1: COLOR 28: PRINT "Please wait while loading ...": COLOR 7: RUN "b:\project\turtle1.bas"
IF num$ = "16r" THEN LOCATE 22, 1: COLOR 28: PRINT "Please wait while loading ...": COLOR 7: RUN "b:\project\death2.bas"
IF num$ = "17r" THEN LOCATE 22, 1: COLOR 28: PRINT "Please wait while loading ...": COLOR 7: RUN "b:\project\escape96.bas"
IF num$ = "18r" THEN LOCATE 22, 1: COLOR 28: PRINT "Please wait while loading ...": COLOR 7: RUN "b:\project\wheel.bas"
IF num$ = "19" THEN END ELSE GOTO 1

END
                                           
aster:
CLS
PRINT "Asteroid"
PRINT "This program is based in space. You will control a space ship equipped"
PRINT "with the particle proton beam which can vaporise asteroids with a"
PRINT "single hit. Your mission is to hit as many asteroids as possible."
PRINT "Every asteroids is worth 100 points."
PRINT "The controls for the games are:"
PRINT "1. Cursor up    - move up"
PRINT "2. Cursor down  - move down"
PRINT "3. Cursor right - move right"
PRINT "4. Cursor left  - move left"
PRINT "5. Space bar    - fire particle proton beam"
LOCATE 22, 1: PRINT "Press space to return to the main menu."
DO: LOOP UNTIL INKEY$ = " "
GOTO 1

maze:
CLS
PRINT "3D Maze"
PRINT "This game was actually converted from a two dimensional version. In"
PRINT "this game, you are a budding adventurer trapped by an evil wizard in"
PRINT "a maze. You only method of survival is to escape the maze. The object"
PRINT "of the game is to escape the maze in the least number of moves"
PRINT "The controls are:"
PRINT "1. Cursor up    - move forward"
PRINT "2. Cursor right - turn right"
PRINT "3. Cursor left  - turn left"
LOCATE 22, 1: PRINT "Press space to return to the main menu."
DO: LOOP UNTIL INKEY$ = " "
GOTO 1

ball:
CLS
PRINT "Bouncing Ball"
PRINT "This game is so simply, it does not even need an introduction. In the"
PRINT "game, you control a platform in which to deflect the bouncing ball."
PRINT "The object of the game is to bounce the ball for as long as possible"
PRINT "The controls are:"
PRINT "Player 1                        Player 2"
PRINT "1. Cursor right - move right    1. D - move right "
PRINT "2. Cursor left  - move left     2. A - move left"
LOCATE 22, 1: PRINT "Press space to return to the main menu."
DO: LOOP UNTIL INKEY$ = " "
GOTO 1

block:
CLS
PRINT "Ball Block"
PRINT "This game is similiar to the game of Bouncing ball. But in this game"
PRINT "the platform is stationary, you control where to put the blocks."
PRINT "The object of the game is to get the ball to hit the platform in the"
PRINT "shortest amount of time by placing the blocks in key places."
PRINT "The controls are:"
PRINT "1. Cursor up    - move up"
PRINT "2. Cursor down  - move down"
PRINT "3. Cursor right - move right"
PRINT "4. Cursor left  - move left"
PRINT "5. Space bar    - place the block"
LOCATE 22, 1: PRINT "Press space to return to the main menu."
DO: LOOP UNTIL INKEY$ = " "
GOTO 1

fight:
CLS
PRINT "Q Fighter"
PRINT "This is actually a simplified version of the widely known game of"
PRINT "'Street Fighter'. The game consists of 3 players."
PRINT "The object of the game is to defeat your opponent."
PRINT "The control are:"
PRINT "Zyrex"
PRINT "1. Cursor up    - jumps up"
PRINT "2. Cursor right - move forward"
PRINT "3. Cursor left  - move backward"
PRINT "4. Q            - punch"
PRINT "5. E            - kick"
PRINT "6. S            - fires the 'Electro Bolt' (Special move)"
PRINT "7. X            - executes the 'Sliding Kick' (Special move)"

LOCATE 22, 1: PRINT "Press space to see the next player's keys."

DO: LOOP UNTIL INKEY$ = " "
LOCATE 6, 1: PRINT "Wheels (Numeric keyboard)"
PRINT "1. Cursor up    - jumps up            "
PRINT "2. Cursor right - move forward        "
PRINT "3. Cursor left  - move backward       "
PRINT "4. Cursor down  - fires the 'Death Wheel' (Special move)      "
PRINT "5. 7            - punch"
PRINT "6. 1            - teleports in front of your opponent (Special move)   "
PRINT "7. 3            - teleports away form your opponent (Special move)  "
LOCATE 22, 1: PRINT "Press space to see the next player's keys."
DO: LOOP UNTIL INKEY$ = " "
LOCATE 6, 1: PRINT "Brain (Numeric keyboard) "
PRINT "1. Cursor up    - jumps up            "
PRINT "2. Cursor right - move forward        "
PRINT "3. Cursor left  - move backward       "
PRINT "4. Cursor down  - fires the 'Brain Wave' (Special move)             "
PRINT "5. 7            - executes the 'Illusion Punch' (Special move)      "
PRINT "6. 1            - executes the 'Power Roll' (Special move)          "
PRINT "                                                                    "
LOCATE 22, 1: PRINT "Press space to return to the main menu.     "
DO: LOOP UNTIL INKEY$ = " "
GOTO 1

tic:
CLS
PRINT "Tic-Tac-Toe"
PRINT "This is probably the most well known game in the world."
PRINT "So I'll just tel you the controls"
PRINT "The controls are:"
PRINT "1. Cursor up    - move up"
PRINT "2. Cursor down  - move down"
PRINT "3. Cursor right - move right"
PRINT "4. Cursor left  - move left"
PRINT "5. Space bar    - place your symbol"
LOCATE 22, 1: PRINT "Press space to return to the main menu."
DO: LOOP UNTIL INKEY$ = " "
GOTO 1

bomb:
CLS
PRINT "Dunk the Bomb"
PRINT "In this game, you're a police officer on a hijacked train. The"
PRINT "hijackers has just thrown a bomb at you. You has 30 seconds to dunk"
PRINT "the bomb into the bucket of water and because of the movement of the"
PRINT "train, the bucket moves left and right."
PRINT "The controls are:"
PRINT "1. Cursor up    - move up"
PRINT "2. Cursor down  - move down"
PRINT "3. Cursor right - move right"
PRINT "4. Cursor left  - move left"
LOCATE 22, 1: PRINT "Press space to return to the main menu."
DO: LOOP UNTIL INKEY$ = " "
GOTO 1

morph:
CLS
PRINT "Morph"
PRINT "This program is not a game. This program actually shows you the basics"
PRINT "of morphing. To morph, first you need to draw two shapes. You also need"
PRINT "to specify the number of points you need to draw your shapes."
PRINT "The controls are:"
PRINT "1. Cursor up    - move up"
PRINT "2. Cursor down  - move down"
PRINT "3. Cursor right - move right"
PRINT "4. Cursor left  - move left"
PRINT "5. Space bar    - place a point"
LOCATE 22, 1: PRINT "Press space to return to the main menu."
DO: LOOP UNTIL INKEY$ = " "
GOTO 1

pat:
CLS
PRINT "Pattern"
PRINT "In this program, you just need to answer a few questions. Then the"
PRINT "computer will compute your answers and give you a moving pattern"
PRINT "This program can also be used as a screen saver."
LOCATE 22, 1: PRINT "Press space to return to the main menu."
DO: LOOP UNTIL INKEY$ = " "
GOTO 1

star:
CLS
PRINT "Starwars"
PRINT "I'm sure all of you have heard of the show 'Starwars', well this game"
PRINT "has nothing to do with the show at all. You are a Star captain, piloting"
PRINT "a Galatic Space Craft, armed with a multi angle photon cannon. You are"
PRINT "going to pit your skills against the greatest pilot alive, the"
PRINT "'Black Star'. In the game, you are suppose to score as many hits as"
PRINT "possible on your opponent."
PRINT "the controls are:"
PRINT " Player 1"
PRINT " 1. Cursor up    - move up"
PRINT " 2. Cursor down  - move down"
PRINT " 3. Cursor right - move right"
PRINT " 4. Cursor left  - move left"
PRINT " 5. W            - shoot up"
PRINT " 6. S,X          - shoot down"
PRINT " 7. D            - shoot right"
PRINT " 8. A            - shoot left"
PRINT " 9. Q            - place wall on upper left"
PRINT "10. E            - place wall on upper right"
PRINT "11. C            - place wall on lower right"
PRINT "12. Z            - place wall on lower left"
LOCATE 22, 1: PRINT "Press space to see the player 2's keys."
DO: LOOP UNTIL INKEY$ = " "
LOCATE 9, 1: PRINT " Player 2 (Numeric Keyboard)"
PRINT " 1. Cursor up    - move up"
PRINT " 2. Cursor down  - move down"
PRINT " 3. Cursor right - move right"
PRINT " 4. Cursor left  - move left"
PRINT " 5. O            - shoot up"
PRINT " 6. L,.          - shoot down"
PRINT " 7. ;            - shoot right"
PRINT " 8. K            - shoot left"
PRINT " 9. I            - place wall on upper left"
PRINT "10. P            - place wall on upper right"
PRINT "11. /            - place wall on lower right"
PRINT "12. ,            - place wall on lower left"
LOCATE 22, 1: PRINT "Press space to return to the main menu."
DO: LOOP UNTIL INKEY$ = " "
GOTO 1

pipe:
CLS
PRINT "Pipe Dream"
PRINT "In this game, you are a plumber. You are suppose to connect pipes from"
PRINT "the staring point back to the starting point. If you can do this in"
PRINT "time, then you win"
PRINT "The controls are:"
PRINT "1. Cursor up    - move up"
PRINT "2. Cursor down  - move down"
PRINT "3. Cursor right - move right"
PRINT "4. Cursor left  - move left"
PRINT "5. Space bar    - place pipe"
LOCATE 22, 1: PRINT "Press space to return to the main menu."
DO: LOOP UNTIL INKEY$ = " "
GOTO 1

sticks:
CLS
PRINT "Candle Sticks"
PRINT "In this program, sticks are arranged in a pyramid like fashion. The"
PRINT "rules of the game are very simple. You can take any number of sticks,"
PRINT "but they must be from the same row. The object of the game is to force"
PRINT "your opponent to be the one to pick the last stick from the playing area"
LOCATE 22, 1: PRINT "Press space to return to the main menu."
DO: LOOP UNTIL INKEY$ = " "
GOTO 1

coins:
CLS
PRINT "Coins"
PRINT "This program is another version of the game 'Candle Sticks'. In this game"
PRINT "You can remove any number of coins from one column. The loser is the one"
PRINT "who removes the last coin from the board."
PRINT "Tip - there is a foolproof way to win the game."
LOCATE 22, 1: PRINT "Press space to return to the main menu."
DO: LOOP UNTIL INKEY$ = " "
GOTO 1

mine:
CLS
PRINT "Miners"
PRINT "In this game, you are the chief engineer on the planet of Syrius, in"
PRINT "the star system of Nebula One. Planet Syrius is full of pioneers like"
PRINT "you. The precious mineral Zenium can only be found here, therefore you"
PRINT "have to mine the area and control your own colony. You must compete"
PRINT "against all the other people here. Good Luck !"
LOCATE 22, 1: PRINT "Press space to return to the main menu."
DO: LOOP UNTIL INKEY$ = " "
GOTO 1

turtle:
CLS
PRINT "Turtle"
PRINT "This is a drawing program which helps you to create interesting patterns"
PRINT "To use this program, just follow the on screen instructions. You are"
PRINT "actually controlling the movement of a small triangular shape called"
PRINT "a 'turtle'. Then with the shape you have made with the turtle you can"
PRINT "create some designs."
LOCATE 22, 1: PRINT "Press space to return to the main menu."
DO: LOOP UNTIL INKEY$ = " "
GOTO 1

death:
CLS
PRINT "Death Valley"
PRINT "In the game, you are star pilot 'Xenox'. You've been spotted by an"
PRINT "enemy ship. The only method of escape is to fly through the notorious"
PRINT "'Death Valley'. Because of the delicate instruments on the ship, you"
PRINT "must not hit the side of the valley even once or you will perish."
PRINT "The controls are:"
PRINT "3. Cursor right - move right"
PRINT "4. Cursor left  - move left"
LOCATE 22, 1: PRINT "Press space to return to the main menu."
DO: LOOP UNTIL INKEY$ = " "
GOTO 1

escape:
CLS
PRINT "Escape !"
PRINT "In this game, you are a prisoner of the Nazis during the World War III."
PRINT "You've been left to die in the labrith of death.  The robot in the maze"
PRINT "will seek you out and annilihate you.  To escape you must reach the"
PRINT "symbol 'E' at the top right corner of the maze.  You have a total of"
PRINT "five bombs which you can use to destroy some of the walls in the maze."
PRINT "The controls are:"
PRINT "1. Cursor up    - move up"
PRINT "2. Cursor down  - move down"
PRINT "3. Cursor right - move right"
PRINT "4. Cursor left  - move left"
PRINT "5. W            - place bomb to the North"
PRINT "6. S, X         - place bomb to the South"
PRINT "7. A            - place bomb to the West"
PRINT "8. D            - place bomb to the East"
LOCATE 22, 1: PRINT "Press space to return to the main menu."
DO: LOOP UNTIL INKEY$ = " "
GOTO 1

wheel:
CLS
PRINT "Wheel of Fortune"
PRINT "This game is an exact replica of the famous televison game show"
PRINT "I am sure all you people out there knows how to play the game."
PRINT "Just follow the on-screen instruction in the program to play."
PRINT "Have a good time."
LOCATE 22, 1: PRINT "Press space to return to the main menu."
DO: LOOP UNTIL INKEY$ = " "
GOTO 1


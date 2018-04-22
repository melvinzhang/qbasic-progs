Restart:
RANDOMIZE TIMER
mines = INT(RND * 3 + 4)                  'Min 4            Max 6
people = INT(RND * 60 + 40)               'Min 40           Max 99
money = INT(RND * 20 + 10) * people       'Min 10 * people  Max 29 * people
produce = INT(RND * 50 + 50)              'Min 50           Max 99

ore = 0
factor = 1
year = 1


Begin:
mineprice = INT(RND * 2000 + 2000)
oreprice = INT(RND * 13 + 6)
ore = ore + produce * mines

CLS
PRINT "Year "; year
PRINT
PRINT "There are "; people; " people in the colony"
PRINT "You have "; mines; " mines and $"; money
PRINT "Satisfaction factor "; factor
PRINT "Your mines produced "; produce; " ton each"
PRINT "Ore in store = "; ore; " tons"
PRINT
PRINT "SELLING"
PRINT "Ore selling price = "; oreprice
PRINT "Mine selling price = "; mineprice; "/mine"
LOCATE 10, 40: PRINT "Min 6      Max 18"
LOCATE 11, 40: PRINT "Min 2000   Max 3999"


SellOre:
PRINT "How much ore to sell ?"
INPUT cs
IF cs = 0 THEN cs = ore
IF cs < 0 OR cs > ore THEN GOTO SellOre
ore = ore - cs
money = money + cs * oreprice


SellMine:
PRINT "How many mines to sell ?"
INPUT ls
IF ls < 0 OR ls > mines THEN GOTO SellMine
mines = mines - ls
money = money + ls * mineprice
PRINT


BuyFood:
PRINT "You have $"; money
PRINT
PRINT "BUYING"
PRINT "How much to spend on food ? ( Min. $"; people * 80; ")"
INPUT fb
IF fb = 0 AND money > people * 80 THEN fb = people * 80
IF fb < 0 OR fb > money THEN GOTO BuyFood
money = money - fb
IF fb / people >= 120 THEN factor = factor + .1
IF fb / people < 80 THEN factor = factor - .2


BuyMine:
PRINT "How many more mines to buy ?"
INPUT lb
IF lb < 0 OR (lb * mineprice) > money THEN GOTO BuyMine
mines = mines + lb
money = money - lb * mineprice

score = (people * 10) + ore + (factor * 100)
score = score + money + (mines * 100) + (produce * 10)

IF factor < .6 THEN GOTO Revolt
IF people / mines < 10 THEN GOTO Overwork
IF people < 30 THEN GOTO NoOne

IF factor > 1.1 THEN produce = produce + INT(RND * 20 + 1)
IF factor > 1.1 THEN people = people + INT(RND * 10 + 1)
IF factor < .9 THEN produce = produce - INT(RND * 20 + 1)
IF factor < .9 THEN people = people - INT(RND * 10 + 1)

IF RND > .01 THEN GOTO PriceDrop:
PRINT "RADIOACTIVE LEAK.....MANY DIE !"
SLEEP
people = INT(people / 2)



PriceDrop:
IF produce <= 150 THEN GOTO NextYear
PRINT "MARKET GLUT - PRICE DROPS !"
SLEEP
produce = INT(produce / 2)


NextYear:
year = year + 1
IF year < 20 THEN GOTO Begin
COLOR 15
PRINT "You survived your term of office"
GOTO again


Revolt:
PRINT "The people revolted !"
GOTO again


Overwork:
PRINT "You've over worked everyone !"
GOTO again


NoOne:
PRINT "Not enough people left !"
GOTO again

again:
SLEEP
i$ = INKEY$
FOR i = 1 TO 20
i$ = ""
NEXT

CLS
COLOR 15
LOCATE 12, 26: PRINT "Your Score for the Game  = "; score; "/ 30000"
LOCATE 13, 26: INPUT "Do you want to play again (y/n) "; aga$
COLOR 7
IF LCASE$(aga$) = "y" THEN GOTO Restart ELSE RUN "b:\project\manager1.bas"
END

'ษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
'บ Hon Wai (1E4) & Vincent (1E5), 1996 -- first pair to complete game บ
'ศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ


'IMPORTANT NOTES AND INSTRUCTIONS

'If each person received less then $80 each year
'the satisfaction factor would decrease by .2

'If each person received $120 or more each year
'the satisfaction factor would increase by .1

'If the satisfaction factor is less then .6 then
'the people would revolt

'If less than 10 person is working on a mine
'the people would be over worked

'If there are less then 30 people the would
'be too little people to run the city

'If the satisfaction factor is higher than 1.1 then
'the amount of ores each mine produce and the population
'would increase

'If the satisfaction factor is less then .9 then
'the amount of ores each mine produce and the population
'would decrease

'If each mine produce greater or equal to 150 ores then it would
'cause the ore market to crash and the amount of ore a mine
'produce would decrease by half


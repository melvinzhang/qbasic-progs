RANDOMIZE TIMER
l = INT(RND * 3 + 5)
p = INT(RND * 60 + 40)
m = INT(RND * 50 + 10) * p
fp = INT(RND * 40 + 80)
ce = INT(RND * 40 + 80)
c = 0
s = 1
y = 1
90 lp = INT(RND * 2000 + 2000)
cp = INT(RND * 12 + 7)
CLS
PRINT "Year "; y
PRINT
PRINT "There are "; p; " people in the colony"
PRINT "You have "; l; " mines and $"; m
PRINT "Satisfaction factor "; s
PRINT
PRINT "Your mines produced "; ce; " ton each"
c = c + ce * l
PRINT "Ore in store = "; c; " tons"
PRINT "SELLING"
PRINT "Ore selling price = "; cp
PRINT "Mine selling price = "; lp; "/mine"
1 PRINT "How much ore to sell ?"
INPUT cs
IF cs < 0 OR cs > c THEN GOTO 1
c = c - cs
m = m + cs * cp
2 PRINT "How many mines to sell ?"
INPUT ls
IF ls < 0 OR ls > l THEN GOTO 2
l = l - ls
m = m + ls * lp
PRINT
PRINT "You have $"; m
PRINT
PRINT "BUYING"
3 PRINT "Hoe much to spend on food ? (appr. $100 ea.)'"
INPUT fb
IF fb < 0 OR fb > m THEN GOTO 3
m = m - fb
IF fb / p > 120 THEN s = s + .1
IF fb / p < 80 THEN s = s - .2
4 PRINT "How many more mines to buy ?"
INPUT lb
IF lb < 0 OR lb > m THEN GOTO 4
l = l + lb
m = m - lb * lp
IF s < .6 THEN GOTO 660
IF s > 1.1 THEN ce = ce + INT(RND * 20 + 1)
IF s < .9 THEN ce = ce - INT(RND * 20 + 1)
IF p / l < 10 THEN GOTO 680
IF s > 1.1 THEN p = p + INT(RND * 10 + 1)
IF s < .9 THEN p = p - INT(RND * 10 + 1)
IF p < 30 THEN GOTO 700
IF RND > .01 THEN GOTO 590
PRINT "RADIOACTIVE LEAK.....MANY DIE !"
p = INT(p / 2)
590 IF ce < 150 THEN GOTO 620
PRINT "MARKET GLUT - PRICE DROPS !"
ce = INT(ce / 2)
620 y = y + 1
IF y < 20 THEN GOTO 90
PRINT "You survived your term of office"
END
660 PRINT "The people revolted !"
END
680 PRINT "You've over worked everyone !"
END
700 PRINT "Not enough people left !"
END






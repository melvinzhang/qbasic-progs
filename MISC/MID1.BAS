CLS
n = 12
INPUT "String you wish to search"; f$
DIM a$(n)
a$(1) = "The largest ocean in the world is the Pacific Ocean"
a$(2) = "There a 7 oceans in the world"
a$(3) = "There are five continents in the world"
a$(4) = "Singapore's National Day - 9th of August"
a$(5) = "Cleopatra was the queen of Egypt at the time of Julius Caesar"
a$(6) = "The Piltdown Man was thought to be the missing link, but it was a fake"
a$(7) = "An eclipse of the sun happens when the moon and the earth are in direct alignment"
a$(8) = "Men wear beards as a sign of manhood, wisdom and strength"
a$(9) = "Robert Edwin Peary was the first person to reach the North Pole"
a$(10) = "Valhalla is an old Norse word which mean 'the hall of the slain'"
a$(11) = "Valhalla was a place where the spirits of the dead Norse heros went"
a$(12) = "Colour blindness is a condition of the eyes where certain colours are           indistinguishable"





DO
i = i + 1
g = LEN(f$)
k = LEN(a$(i))
FOR j = 1 TO k
IF MID$(a$(i), j, g) = f$ THEN PRINT "a$("; i; ")": LOCATE 10, 10: PRINT a$(i): GOSUB 10
NEXT j
2 LOOP WHILE i < 12
END


10 g$ = INKEY$
SELECT CASE g$
CASE " ": CLS : GOTO 2
CASE "q": END
CASE ELSE
END SELECT
GOTO 10




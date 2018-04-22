'PRODUCE A BAR GRAPH ON THE SCREEN WITH A SET OF GIVEN DATA

ON ERROR GOTO help

DIM dataa(1 TO 20)
DIM num$(0 TO 9)
num$(1) = "A"
num$(2) = "BB"
num$(3) = "CCC"
num$(4) = "DDDD"
num$(5) = "EEEEE"
num$(6) = "FFFFFF"
num$(7) = "GGGGGGG"
num$(8) = "HHHHHHHH"
num$(9) = "IIIIIIIII"
num$(0) = " "


FOR i = 1 TO 20
READ dataa(i)
NEXT

10
CLS
FOR c = 1 TO i
IF SGN(dataa(c)) < 0 THEN END
LOCATE c, 1: PRINT dataa(c); " "; num$(dataa(c))
NEXT




DATA 1,2,3,2,1,0,8,9,8,7,6,5,4,3,2,1,0,-1

help:
IF ERR = 4 THEN i = i - 1: GOTO 10
END



ON ERROR GOTO HAN:

DIM c$(10000)
strin = 0

MAIN:
CLS
 LOCATE 3, 1: PRINT "  Quick Basic Facts Manager"
 LOCATE 8, 1: PRINT "      1. Enter record"
LOCATE 10, 1: PRINT "      2. Search record"
LOCATE 12, 1: PRINT "      3. Load record"
LOCATE 14, 1: PRINT "      4. View files"
LOCATE 16, 1: PRINT "      5. View records"
LOCATE 18, 1: PRINT "      6. Exit program"

CHECK:

q$ = INKEY$
IF q$ < "1" OR q$ > "6" THEN GOTO CHECK
IF q$ = "1" THEN GOTO RECORD
IF q$ = "2" THEN GOTO SEARCH
IF q$ = "3" THEN GOTO LOAD
IF q$ = "4" THEN GOTO DIR
IF q$ = "5" THEN GOTO REC
IF q$ = "6" THEN GOTO ARE
GOTO CHECK


'**** INPUT RECORDS ****

RECORD:

CLS
INPUT "Input number of records"; s
DIM a$(s)
REDIM a$(s)
FOR t = 1 TO s
LINE INPUT "Enter your record-"; a$(t)
NEXT t
INPUT "Do you wish to save your records"; b$

SELECT CASE b$
CASE "N", "n": GOTO MAIN
CASE "Y", "y": GOTO SAVE
CASE ELSE
END SELECT


'**** SEARCH ****

SEARCH:

CLS
INPUT "String you wish to search"; f$
FOR i = 1 TO v

IF INSTR(1, UCASE$(c$(i)), UCASE$(f$)) > 0 THEN
PRINT : PRINT : PRINT c$(i)
SLEEP: strin = 1
END IF

NEXT i
IF strin = 0 THEN LOCATE 13, 32: PRINT "STRING NOT FOUND"
SLEEP
strin = 0
GOTO MAIN


'**** SAVES RECORD TO FILE ****

SAVE:

nme$ = "b:\record.rec"
OPEN nme$ FOR OUTPUT AS #1

FOR x = 1 TO s
WRITE #1, a$(x)
NEXT x
CLOSE #1
GOTO MAIN


'**** LOADS RECORDS FROM FILE ****

LOAD:

name1$ = "b:\record.rec"
OPEN name1$ FOR INPUT AS #1
CLS
v = 0
DO WHILE NOT EOF(1)
v = v + 1
INPUT #1, c$(v)   'Read entries from file.
'PRINT c$(v)       'Print the entries on the screen.
LOOP
LOCATE 5, 32: PRINT "FINISH LOADING"
SLEEP
CLOSE #1
GOTO MAIN


'**** ERROR HANDLER ****

HAN:

REDIM a$(s)
RESUME NEXT


'**** VIEW FILES ****

DIR:

CLS
INPUT "Input Drive"; dr$
SHELL dr$
SHELL "dir/s/a/p *.rec"
SLEEP
GOTO MAIN


'**** ARE YOU SURE ****

ARE:

PRINT
INPUT "Are you sure "; sure$
SELECT CASE sure$
CASE "y", "Y": END
CASE "n", "N": GOTO MAIN
CASE ELSE
END SELECT

'**** VIEW RECORDS ****

REC:

CLS
FOR ik = 1 TO v
LOCATE 10, 1: PRINT c$(ik)
SLEEP 1
LOCATE 10, 1: PRINT "                                                                              "
LOCATE 11, 1: PRINT "                                                                              "
LOCATE 12, 1: PRINT "                                                                              "
LOCATE 13, 1: PRINT "                                                                              "
LOCATE 14, 1: PRINT "                                                                              "
LOCATE 15, 1: PRINT "                                                                              "
NEXT ik
GOTO MAIN


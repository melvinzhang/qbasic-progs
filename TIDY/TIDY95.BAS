DECLARE SUB Save ()
DECLARE SUB Load ()
DECLARE SUB ViewRecord ()
DECLARE SUB Search ()
DECLARE SUB HoldIt ()
COMMON SHARED v

ON ERROR GOTO HAN:

DIM SHARED c$(10000)

CLS
Load

Main:
CLS
 LOCATE 3, 1: PRINT "      Quick Basic Facts Manager"
 LOCATE 8, 1: PRINT "      1. Enter record"
LOCATE 10, 1: PRINT "      2. Search record"
LOCATE 12, 1: PRINT "      3. View records"
LOCATE 14, 1: PRINT "      4. Exit program"

CHECK:
q$ = INKEY$
SELECT CASE q$
CASE "1": GOTO Record
CASE "2": Search:   GOTO Main
CASE "3": ViewRecord: GOTO Main
CASE "4": GOTO ARE
END SELECT
GOTO CHECK




'***** INPUT RECORDS *****
Record:
CLS
INPUT "Input number of records"; s
DIM SHARED a$(s)
REDIM SHARED a$(s)
FOR t = 1 TO s
LINE INPUT "Enter your record-"; a$(t)
NEXT t
INPUT "Do you wish to save your records"; b$
SELECT CASE b$
CASE "N", "n": GOTO Main
CASE "Y", "y": Save: GOTO Main
CASE ELSE
END SELECT




'**** ERROR HANDLER ****
HAN:
REDIM SHARED a$(s)
RESUME NEXT



'**** ARE YOU SURE ****
ARE:
PRINT
INPUT "Are you sure "; sure$
SELECT CASE sure$
CASE "y", "Y": END
CASE "n", "N": GOTO Main
CASE ELSE
END SELECT

SUB HoldIt
DO
LOOP UNTIL INKEY$ <> ""
j$ = INKEY$
FOR i = 1 TO 16
j$ = ""
NEXT
END SUB

SUB Load
name1$ = "b:\record.rec"
OPEN name1$ FOR INPUT AS #1
CLS
v = 0
DO WHILE NOT EOF(1)
v = v + 1
INPUT #1, c$(v)   'Read entries from file.
LOOP
CLOSE #1
END SUB

SUB Save
nme$ = "b:\record.rec"
OPEN nme$ FOR OUTPUT AS #1

FOR x = 1 TO s
WRITE #1, a$(x)
NEXT x
CLOSE #1
END SUB

SUB Search
CLS
INPUT "String you wish to search"; f$
FOR i = 1 TO v

IF INSTR(1, UCASE$(c$(i)), UCASE$(f$)) > 0 THEN
PRINT : PRINT : PRINT c$(i)
HoldIt
strin = 1
END IF

NEXT i
IF strin = 0 THEN LOCATE 13, 32: PRINT "STRING NOT FOUND": HoldIt
strin = 0
END SUB

SUB ViewRecord
CLS
FOR ik = 1 TO v
LOCATE 10, 1: PRINT c$(ik)

DO
j$ = INKEY$: j$ = ""
LOOP UNTIL j$ <> ""

LOCATE 10, 1: PRINT "                                                                              "
LOCATE 11, 1: PRINT "                                                                              "
LOCATE 12, 1: PRINT "                                                                              "
LOCATE 13, 1: PRINT "                                                                              "
LOCATE 14, 1: PRINT "                                                                              "
LOCATE 15, 1: PRINT "                                                                              "
NEXT ik
END SUB


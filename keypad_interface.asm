Org 00h 
MOV DPTR,#SEVENSEGDATA 
MOV A,#0FFH 
BEGAIN: MOV P1,#0FFH 
CLR P1.0 
JB P1.4,KEY1 
MOV A,#00H 
KEY1: JB P1.5,KEY2 
MOV A,#01H 
ACALL DISPLAY 
KEY2: JB P1.6,KEY3 
MOV A,#02H 
ACALL DISPLAY 
KEY3: JB P1.7,KEY4 
MOV A,#03H 
ACALL DISPLAY 
KEY4: SETB P1.0 
CLR P1.1 
JB P1.4,KEY5 
MOV A,#04H 
ACALL DISPLAY 
KEY5: JB P1.5,KEY6 
MOV A,#05H 
ACALL DISPLAY 
KEY6: JB P1.6,KEY7 
MOV A,#06H 
ACALL DISPLAY 
KEY7: JB P1.7,KEY8 
MOV A,#07H 
ACALL DISPLAY 
KEY8: SETB P1.1 
CLR P1.2 
JB P1.4,KEY9 
MOV A,#08H 
ACALL DISPLAY 
KEY9: JB P1.5,KEYA 
MOV A,#09H 
ACALL DISPLAY KEYA: JB P1.6,KEYB 
MOV A,#0AH 
ACALL DISPLAY 
KEYB: JB P1.7,KEYC 
MOV A,#0BH 
ACALL DISPLAY 
KEYC: SETB P1.2 
 CLR P1.3 
JB P1.4,KEYD MOV A,#0CH 
ACALL DISPLAY 
KEYD: JB P1.5,KEYE 
MOV A,#0DH 
ACALL DISPLAY 
KEYE: JB P1.6,KEYF 
MOV A,#0EH 
ACALL DISPLAY 
KEYF: JB P1.7,BEGAIN 
MOV A,#0FH 
ACALL DISPLAY 
LJMP BEGAIN 
DISPLAY: MOVC A,@A+DPTR 
MOV P0,A 
RET 
SEVENSEGDATA: DB 
3FH,06H,5BH,4FH,66H,6DH,7DH,07H,7FH,6FH,77H,7CH,39H,5EH,79H,71H 
END
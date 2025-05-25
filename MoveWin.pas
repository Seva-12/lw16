UNIT MoveWin;

INTERFACE

PROCEDURE Movement(VAR Looking, Land, Sea: BOOLEAN);

IMPLEMENTATION

PROCEDURE Movement(VAR Looking, Land, Sea: BOOLEAN);
VAR
  W1, W2, W3, W4: CHAR;
BEGIN{ReadMonth}
  W1 := ' ';
  W2 := ' ';
  W3 := ' ';
  W4 := ' ';
  WHILE NOT EOLN(INPUT)
  DO
    BEGIN      
      W1 := W2;
      W2 := W3;
      W3 := W4;
      READ(INPUT, W4);         
      IF (W1 = 'l') AND (W2 = 'a') AND (W3 = 'n') AND (W4 = 'd') 
      THEN        
        Land := TRUE        
      ELSE
        IF (W2 = 's') AND (W3 = 'e') AND (W4 = 'a') 
        THEN 
          Sea := TRUE
        
    END;
  
END;

BEGIN
END.

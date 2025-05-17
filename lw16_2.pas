PROGRAM SarahRevere(INPUT, OUTPUT); 

USES
 MoveWin;
 
VAR
  
  Looking, Land, Sea: BOOLEAN; 
 
BEGIN {SarahRevere}   
  {Инициализация}
  Looking := TRUE;
  Land := FALSE;
  Sea := FALSE;
  WHILE Looking AND NOT (Land OR Sea)   
  DO
    BEGIN
      Movement(Looking, Land, Sea);
    END;
  IF Land = TRUE {создание сообщения Sarah}
  THEN
    WRITELN('The British are coming by land.')
  ELSE
    IF Sea = TRUE
    THEN
      WRITELN('The British coming by sea.')
    ELSE
        WRITELN('Sarah didn''t say')  
END.  {SarahRevere}

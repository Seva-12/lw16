PROGRAM CompMonth(INPUT, OUTPUT);

USES
  DateIO;
VAR
  Ch1, Ch2, Ch3: CHAR;
  FOut1, FOut2, FIn1, FIn2: TEXT;
  Mo1, Mo2: Month;
BEGIN
  RESET(FOut1);
  IF NOT EOF(INPUT)
  THEN
    BEGIN
      READ(INPUT, Ch1);
      IF NOT EOLN(INPUT)
      THEN
        BEGIN
          READ(INPUT, Ch2);
          IF NOT EOLN(INPUT)
          THEN
            BEGIN
              READ(INPUT, Ch3);
              WRITELN(FIn1, Ch1, Ch2, Ch3)
            END
        END
    END;
  RESET(FOut2);
  IF NOT EOF(INPUT)
  THEN
    BEGIN
      READ(INPUT, Ch1);
      IF NOT EOLN(INPUT)
      THEN
        BEGIN
          READ(INPUT, Ch2);
          IF NOT EOLN(INPUT)
          THEN
            BEGIN
              READ(INPUT, Ch3);
              WRITELN(FIn2, Ch1, Ch2, Ch3)
            END
        END                                                                     
    END;
  ReadMonth(FIn1, Mo1);
  WriteMonth(FOut1, Mo1);
  ReadMonth(FIn2, Mo2);
  WriteMonth(FOut2, Mo2);
  IF (Mo1 > Mo2)
  THEN
    BEGIN
      WRITE(FOut2);
      WRITE('предшествует');
      WRITELN(FOut2)
    END
  ELSE
    IF (Mo1 = Mo2)
    THEN
      BEGIN
        WRITE('оба мес€ца');
        WRITELN(FOut1)
      END  
    ELSE
      BEGIN  
        WRITE(FOut2);
        WRITE('следует');
        WRITELN(FOut1)
      END
END. 

qifStatement : IF register ifStat elseStat? END;
 
ifStat : DO block;

elseStat : ELSE DO block;

forstatement : FOR IDENTIFIER IN range DO block END;

range : start=INTEGER '..' end=INTEGER
      | RANGE '(' length=expression ')';
grammar simple_exp;

expression : INTEGER op=OPERATOR expression
           | INTEGER;

OPERATOR   : '+'
           | '-';
INTEGER    : [1-9] [0-9]* | '0' ;
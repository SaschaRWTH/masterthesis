INTEGER    : [1-9] [0-9]* | '0' ;

IDENTIFIER : [a-zA-Z_] [a-zA-Z_0-9]*;

COMMENT    : '//' ~[\r\n]*   -> skip;

SPACE      : [ \t\r\n\u000C] -> skip;
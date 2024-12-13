
CONSTANTGATE : XGATE | CXGATE | CCXGATE
             | ZGATE | YGATE  | HGATE;
PARAMETERIZEDGATE    : PHASEGATE;
fragment XGATE     : 'x';
fragment CXGATE    : 'cx';
fragment CCXGATE   : 'ccx';
fragment ZGATE     : 'z';
fragment YGATE     : 'y';
fragment HGATE     : 'h';
fragment PHASEGATE : 'p';

FUNCTION : SIZEOF | POWER | MIN | MAX;
fragment SIZEOF : 'sizeof';
fragment POWER  : 'power';
fragment MIN    : 'min';
fragment MAX    : 'max';

SKIPSTAT        : 'skip';

TYPE : 'int'| 'uint' | 'double';

GATEKEYWORD     : 'gate';
REGISTERKEYWORD : 'qubit';
CONSTANTKEYWORD : 'const';
RANGE           : 'range';
IF              : 'qif';
ELSE            : 'else';
DO              : 'do';
END             : 'end';
FOR             : 'for';
IN              : 'in';

INTEGER    : [1-9] [0-9]* | '0';
IDENTIFIER : [a-zA-Z_] [a-zA-Z_0-9]*;
COMMENT    : ( '//' ~[\r\n]* | '/*' .*? '*/' ) -> skip;
SPACE      : [ \t\r\n\u000C] -> skip;
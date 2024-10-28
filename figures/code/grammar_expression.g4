expression : left=expression op='+' right=term
           | left=expression op='-' right=term | term;

term       : left=term op='*' right=factor
           | left=term op='/' right=factor     | factor;

factor     :'(' exp=expression ')' | func=function
           | identifier=IDENTIFIER | value=INTEGER 
           | op='-' factor;

function   : func=FUNCTION '(' param=funcParam ')';
funcParam  : IDENTIFIER (',' IDENTIFIER)* 
           | expression (',' expression)*;
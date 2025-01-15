declaration         : registerDeclaration | constDeclaration;

registerDeclaration : REGISTERKEYWORD 
                      ('[' size=expression ']')? 
                      id=IDENTIFIER ';';
                      
constDeclaration    : CONSTANTKEYWORD id=IDENTIFIER 
                      ':' type=TYPE '=' 
                      exp=expression';';

gateDeclaration     : GATEKEYWORD id=IDENTIFIER 
                      '(' param=gateArgument ')' 
                      DO block END;

gateArgument        : IDENTIFIER (',' IDENTIFIER)*;
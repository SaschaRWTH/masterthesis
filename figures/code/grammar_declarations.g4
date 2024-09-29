declaration         : registerDeclaration | constDeclaration;

registerDeclaration : REGISTERKEYWORD 
                      ('[' size=expression ']')? 
                      IDENTIFIER ';';
                      
constDeclaration    : CONSTANTKEYWORD identifier=IDENTIFIER 
                      ':' type=TYPE '=' 
                      exp=expression';';

gateDeclaration     : GATEKEYWORD id=IDENTIFIER 
                      '(' param=gateParameter? ')' 
                      DO block END;

gateParameter       : IDENTIFIER (',' IDENTIFIER)*;
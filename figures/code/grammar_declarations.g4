declaration         : registerDeclaration;

registerDeclaration : REGISTERKEYWORD 
                      ('[' size=expression ']')? 
                      IDENTIFIER ';';

gateDeclaration     : GATEKEYWORD id=IDENTIFIER 
                      '(' param=gateParameter? ')' 
                      DO block END;

gateParameter       : IDENTIFIER (',' IDENTIFIER)*;
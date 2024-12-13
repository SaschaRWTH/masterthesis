statement : gateApp      | qifStatement 
          | forstatement | SKIPSTAT ';';
 
gateApp  : gate register (',' register)* ';';

gate     : type=CONSTGATE | id=IDENTIFIER
         | paramGate=PARAMGATE 
           '(' param=expression ')';

register : IDENTIFIER
         | IDENTIFIER '[' index=expression ']';
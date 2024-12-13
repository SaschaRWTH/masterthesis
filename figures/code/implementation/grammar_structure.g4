parse     : mainblock EOF;

mainblock : gateDeclaration* (declaration | statement)*;

block     : (declaration | statement)*;
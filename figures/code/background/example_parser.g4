exp    : exp '+' term    | term;

term   : term '*' factor | factor;

factor : '(' exp ')'     | INTEGER;
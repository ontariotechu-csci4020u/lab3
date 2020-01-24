lexer grammar JavaLexer;

WHITESPACE 
    : (' ' 
    | '\t' 
    | '\r' 
    | '\n')+ -> skip
    ;

/* Complete the rest */


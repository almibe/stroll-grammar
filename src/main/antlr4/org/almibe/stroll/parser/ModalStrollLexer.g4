lexer grammar ModalStrollLexer;

VARIABLE
  : '$' NAME
;

USER_VARIABLE
  : '?' NAME
;

EQUAL_SIGN
 : '='
;

INT
  : ('0' .. '9')+
;

LONG
  : INT 'L'
;

DOUBLE
  : INT '.' INT
;

START_BRACKET
  : '['
;

END_BRACKET
  : ']'
;

START_BRACE
  : '{'
;

END_BRACE
  : '}'
;

OPEN_PARENTHESIS
  : '('
;

CLOSE_PARENTHESIS
  : ')'
;

BOOLEAN
  : 'true' | 'false'
;

IDENTITY
  : INT+ '-' INT+
;

DOT
  : '.'
;

COMMA
  : ','
;

COLON
  : ':'
;

ARROW
  : '->'
;

FAT_ARROW
  : '=>'
;

UNDERSCORE
  : '_'
;

STRING
  : '"' ('a' .. 'z' | 'A' .. 'Z' | '0' .. '9' | ' ')+ '"'
;

NAME
  : ('a' .. 'z' | 'A' .. 'Z' | '0' .. '9' | '.')+
;

WS
  : (' ' | '\t' | '\n' | '\r')+ -> skip
;

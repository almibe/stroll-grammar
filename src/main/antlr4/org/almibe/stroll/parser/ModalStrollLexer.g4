lexer grammar ModalStrollLexer;

VARIABLE
  : '$' NAME
;

EQUAL_SIGN
 : '='
;

NEW_KEYWORD
  : 'new'
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

BOOLEAN
  : 'true' | 'false'
;

UPDATE_KEYWORD
  : 'update'
;

IDENTITY
  : INT+ '-' INT+
;

SET_KEYWORD
  : 'set'
;

DELETE_KEYWORD
  : 'delete'
;

COMMA
  : ','
;

FIND_KEYWORD
  : 'find'
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

STARTS_WITH
  : 'startsWith'
;

TO
  : 'to'
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

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

ENTITY_NAME
  : 
;

START_BRACE
  : '{'
;

END_BRACE
  : '}'
;

INT
  : [0..9]+
;

LONG
  : [0..9]+ 'L'
;

DOUBLE
  : [0..9]+ '.' [0..9]+
;

BOOLEAN
  : 'true' | 'false'
;

UPDATE_KEYWORD
  : 'update'
;

IDENTITY
  : 
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

NAME
  :
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

STRING
  :
;

TO
  : 'to'
;

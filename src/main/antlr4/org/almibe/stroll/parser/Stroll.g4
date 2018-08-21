parser grammar Stroll;

options { tokenVocab = ModalStrollLexer; }

script
  : (line)*
;

line
  : (VARIABLE EQUAL_SIGN)? methodCall
;

methodCall
  : VARIABLE DOT NAME START_BRACE methodContents END_BRACE
;

methodContents
  :  ( contentPuncutation | contentValue | methodCall )*
;

contentPuncutation
  : COLON | COMMA | START_BRACKET | END_BRACKET | ARROW | FAT_ARROW
;

contentValue
  : STRING | INT | LONG | DOUBLE | BOOLEAN | UNDERSCORE | IDENTITY | NAME | VARIABLE
;

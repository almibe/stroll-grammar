parser grammar Stroll;

options { tokenVocab = ModalStrollLexer; }

script
  : (line)*
;

line
  : (VARIABLE EQUAL_SIGN)? call
;

call
  : ( VARIABLE | NAME ) DOT NAME START_BRACE callContents END_BRACE
;

callContents
  : ( callContentPunctuation | callContentValue | call )*
;

callContentPunctuation
  : COLON | COMMA | START_BRACKET | END_BRACKET | ARROW | FAT_ARROW
;

callContentValue
  : STRING | INT | LONG | DOUBLE | BOOLEAN | UNDERSCORE | IDENTITY | NAME | VARIABLE | USER_VARIABLE
;

parser grammar Stroll;

options { tokenVocab = ModalStrollLexer; }

script
  : (line)*
;

line
  : (VARIABLE EQUAL_SIGN)? methodCall
;

methodCall
  : VARIABLE DOT NAME methodArguements
;

methodArguements
  : START_BRACE ( argumentPuncutation | argumentValue | methodCall )* END_BRACE
;

argumentPuncutation
  : COLON | COMMA | START_BRACKET | END_BRACKET | ARROW | FAT_ARROW
;

argumentValue
  : STRING | INT | LONG | DOUBLE | BOOLEAN | UNDERSCORE | IDENTITY | NAME | VARIABLE
;

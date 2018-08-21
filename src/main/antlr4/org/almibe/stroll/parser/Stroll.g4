parser grammar Stroll;

options { tokenVocab = ModalStrollLexer; }

script
  : (assignedExpression)*
;

assignedExpression
  : (VARIABLE EQUAL_SIGN)? methodCall
;

methodCall
  : VARIABLE DOT NAME expressionArguements
;

expressionArguements
  : START_BRACE
    ( VARIABLE | argumentPuncutation | NAME | propertyValue | IDENTITY | methodCall )*
    END_BRACE
;

argumentPuncutation
  : COLON | COMMA | START_BRACKET | END_BRACKET | ARROW | FAT_ARROW | UNDERSCORE
;

propertyValue
  : STRING | INT | LONG | DOUBLE | BOOLEAN | UNDERSCORE
;

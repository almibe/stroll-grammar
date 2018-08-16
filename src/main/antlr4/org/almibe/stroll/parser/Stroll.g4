parser grammar Stroll;

options { tokenVocab = ModalStrollLexer; }

script
  : (assignedExpression | methodCall | expression)*
;

assignedExpression
  : (VARIABLE EQUAL_SIGN)? (methodCall | expression)
;

methodCall
  : VARIABLE DOT expression
;

expression
  : NAME expressionArguements (DOT DOT expression)*
;

expressionArguements
  : START_BRACE (entityPattern | NAME | propertyValue | IDENTITY )* END_BRACE
;

entityPattern
  : OPEN_PARENTHESIS propertyOrLinkAssignment (COMMA propertyOrLinkAssignment)* CLOSE_PARENTHESIS
;

propertyOrLinkAssignment
  : propertyAssignment | linkAssignment | linksListAssigment
;

propertyAssignment
  : NAME COLON propertyValue
;

propertyValue
  : STRING | INT | LONG | DOUBLE | BOOLEAN
;

linkAssignment
  : NAME (ARROW | FAT_ARROW) IDENTITY
;

linksListAssigment
  : NAME FAT_ARROW START_BRACKET IDENTITY (',' IDENTITY)* END_BRACKET
;

parser grammar Stroll;

expression
  : (VARIABLE EQUAL_SIGN)? command
;

command
  : newCommand | updateCommand | setCommand | deleteCommand | findCommand | simpleCommand
;

newCommand
  : NEW_KEYWORD ENTITY_NAME START_BRACE propertyOrLinkAssignment* END_BRACE
;

updateCommand
  : UPDATE_KEYWORD IDENTITY START_BRACE propertyOrLinkAssignment* END_BRACE
;

setCommand
  : SET_KEYWORD IDENTITY START_BRACE propertyOrLinkAssignment* END_BRACE
;

deleteCommand
  : DELETE_KEYWORD (IDENTITY) | (START_BRACKET IDENTITY (COMMA IDENTITY)* END_BRACKET)
;

findCommand
  : FIND_KEYWORD ENTITY_NAME START_BRACE findParameter* END_BRACE
;

propertyOrLinkAssignment
  : propertyAssignment | linkAssignment
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

findParameter
  : propertyAssignment | linkAssignment | propertyExists | linkExists | propertyStartsWith | propertyRange
;

propertyExists
  : NAME COLON UNDERSCORE
;

linkExists
  : NAME (ARROW | FAT_ARROW) UNDERSCORE
;

propertyStartsWith
  : NAME COLON STARTS_WITH STRING
;

propertyRange
  : NAME COLON propertyValue TO propertyValue
;

simpleCommand
  : NAME
;

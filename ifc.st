Object subclass: #IfC
   instanceVariableNames: 'if then else'
   classVariableNames: ''
   poolDictionaries: ''
   category: nil !
   
!IfC methodsFor: 'if then else getting and setting'!
setIfC: i t e
   if := i
   then := t
   else := e
!
getIf
   ^if
getThen
   ^then
!
getElse
   ^else
!
!!
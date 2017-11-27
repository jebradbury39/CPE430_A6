Object subclass: #NumC
   instanceVariableNames: 'num'
   classVariableNames: ''
   poolDictionaries: ''
   category: nil !

!NumC methodsFor: 'num getting and setting'!
setNum: n
   num := n
!
getNum
   ^num
!!

!NumC methodsFor: 'printing'!
   printOn: stream
      super printOn: stream.
         ' with num: ' printOn: stream.
         num printOn: stream
!!

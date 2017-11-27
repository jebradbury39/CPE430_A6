
<----------Template from tutorial-------->

<Test fixtures with SUnit:
-> subclass TestCase
-> add instance variable
-> override setUp to init variables.>

<Test adding 5 to empty set>
SetTestCase>>#testAdd
	empty add: 5.
	self should: [empty includes: 5]

<Create instance of TestCase Subclass and send run to the object.
(SetTestCase selector: #testAdd) run

<Create a test suite>
(TestSuite named: 'Money')
	add: (MoneyTestCase selector: #testAdd);
	add: (MoneyTestCase selector: #testSubtract);
	run

<https://www.gnu.org/software/smalltalk/manual/html_node/SUnit.html>

<-------------------IdC Tests-------------------->
SetTestCase>>#makeIdCWithValue
	ex := idC new initWith: #a.
	self should: [ex getSym: #a]

SetTestCase>>#makeIdC
	ex := idC new.
	[ex setSym: #b]
	self should: [ex getSym: #b]

(TestSuite named: 'IdC')
	make: (IdCTestCase selector: #makeIdCWithValue);
	make: (IdCTestCase selector: #makeIdC);
	run
	
<-----------------IdC Class------------------->

Object subclass: #IdC.
IdC instanceVariableNames: 's'.
		
IdC class extend [
	new [
	| instance |
	<category: 'instance creation'>	
	instance := super new.
	instance init.
	^instance
	]
]

IdC extend [
	init [
		<category: 'initialization'>
		s := #''
	]
]

IdC extend [
	initWith: value [
		<category: 'initialization with value'>
		s := value
	]
]

IdC extend [
	setSym: value [
		<category: 'setter'>
		s := value
	]
]

IdC extend [
	getSym [
		<category: 'getter'>
		^s
	]
]

IdC extend [
	printOn: stream [
		<category: 'printing'>
		super printOn: stream.
		stream nextPutAll: ' with symbol: '.
		s printOn: stream
	]
]

ex := IdC s:#a.
idC setSym:#b

	




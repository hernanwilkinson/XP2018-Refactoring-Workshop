!classDefinition: #RenameInstanceVariableRewriter category: #'XPWorkshop-Implementation'!
ParseNodeVisitor subclass: #RenameInstanceVariableRewriter
	instanceVariableNames: 'refactoring'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'XPWorkshop-Implementation'!

!RenameInstanceVariableRewriter methodsFor: 'visiting' stamp: 'HAW 5/17/2018 15:27:54'!
visitInstanceVariableNode: anInstanceVariableNode

	(refactoring shouldRename: anInstanceVariableNode name) ifTrue: [ anInstanceVariableNode name: refactoring newVariable]! !


!RenameInstanceVariableRewriter methodsFor: 'initialization' stamp: 'HAW 5/17/2018 15:27:38'!
initializeFor: aRenameInstanceVariable 
	
	refactoring := aRenameInstanceVariable ! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'RenameInstanceVariableRewriter class' category: #'XPWorkshop-Implementation'!
RenameInstanceVariableRewriter class
	instanceVariableNames: ''!

!RenameInstanceVariableRewriter class methodsFor: 'instance creation' stamp: 'HAW 5/17/2018 15:27:21'!
for: aRenameInstanceVariable 
	
	^self new initializeFor: aRenameInstanceVariable ! !


!classDefinition: #RenameInstanceVariableTest category: #'XPWorkshop-Implementation'!
TestCase subclass: #RenameInstanceVariableTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'XPWorkshop-Implementation'!

!RenameInstanceVariableTest methodsFor: 'tests' stamp: 'HAW 5/18/2018 10:43:50'!
test01NewVariableMustBeAddedAsInstanceVariable

	| refactor classToRefactor |
	
	"Here you must code all the necessary test set up. 
	Don't forget to set the variable classToRefactor with the class you want to refactor"
	classToRefactor := nil. "<--- change that"
	
	"Now let's create the refactoring and apply it"
	refactor := RenameInstanceVariable from: 'oldVar' to: 'newVar' in: classToRefactor.
	refactor apply.
	
	"Here you must write the assertions"
	"self assert:  ..."
	
	"Finally, we remove the created class from the system"
	classToRefactor removeFromSystem.
	! !


!classDefinition: #RenameInstanceVariable category: #'XPWorkshop-Implementation'!
Object subclass: #RenameInstanceVariable
	instanceVariableNames: 'oldVariable newVariable classToRefactor rewriter'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'XPWorkshop-Implementation'!

!RenameInstanceVariable methodsFor: 'accessing' stamp: 'HAW 5/17/2018 15:28:59'!
newVariable

	^ newVariable! !


!RenameInstanceVariable methodsFor: 'testing' stamp: 'HAW 5/17/2018 15:26:30'!
initializeFrom: anOldvariable to: aNewVariable in: aClassToRefactor 
	
	oldVariable := anOldvariable.
	newVariable := aNewVariable.
	classToRefactor := aClassToRefactor.
	rewriter := RenameInstanceVariableRewriter for: self! !

!RenameInstanceVariable methodsFor: 'testing' stamp: 'HAW 5/17/2018 15:28:21'!
shouldRename: aName

	^ oldVariable = aName.! !


!RenameInstanceVariable methodsFor: 'applying - private' stamp: 'HAW 5/18/2018 10:48:23'!
renameReferencesIn: anAST

	anAST accept: (RenameInstanceVariableRewriter for: self)! !


!RenameInstanceVariable methodsFor: 'applying' stamp: 'HAW 5/17/2018 15:29:43'!
apply

	self shouldBeImplemented ! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'RenameInstanceVariable class' category: #'XPWorkshop-Implementation'!
RenameInstanceVariable class
	instanceVariableNames: ''!

!RenameInstanceVariable class methodsFor: 'instance creation' stamp: 'HAW 5/17/2018 15:25:32'!
from: anOldvariable to: aNewVariable in: aClassToRefactor 
	
	^self new initializeFrom: anOldvariable to: aNewVariable in: aClassToRefactor ! !

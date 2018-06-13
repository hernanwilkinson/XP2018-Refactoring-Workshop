'From Cuis 5.0 of 7 November 2016 [latest update: #3297] on 20 May 2018 at 4:46:56 pm'!
'Description Please enter a description for this package'!
!provides: 'XPWorkshop' 1 2!
SystemOrganization addCategory: #'XPWorkshop-Example'!
SystemOrganization addCategory: #'XPWorkshop-Tutorial'!
SystemOrganization addCategory: #'XPWorkshop-UI'!
SystemOrganization addCategory: #'XPWorkshop-Implementation'!


!classDefinition: #RefactoringWorkshopTutorial category: #'XPWorkshop-Tutorial'!
Workspace subclass: #RefactoringWorkshopTutorial
	instanceVariableNames: 'topics topicListIndex selectedTopic topicList window textPane'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'XPWorkshop-Tutorial'!
!classDefinition: 'RefactoringWorkshopTutorial class' category: #'XPWorkshop-Tutorial'!
RefactoringWorkshopTutorial class
	instanceVariableNames: 'topics'!

!classDefinition: #RefactoringWorkshopTutorialWindow category: #'XPWorkshop-Tutorial'!
WorkspaceWindow subclass: #RefactoringWorkshopTutorialWindow
	instanceVariableNames: 'textModel topicList'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'XPWorkshop-Tutorial'!
!classDefinition: 'RefactoringWorkshopTutorialWindow class' category: #'XPWorkshop-Tutorial'!
RefactoringWorkshopTutorialWindow class
	instanceVariableNames: ''!

!classDefinition: #ExampleTest category: #'XPWorkshop-Example'!
TestCase subclass: #ExampleTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'XPWorkshop-Example'!
!classDefinition: 'ExampleTest class' category: #'XPWorkshop-Example'!
ExampleTest class
	instanceVariableNames: ''!

!classDefinition: #RenameInstanceVariableTest category: #'XPWorkshop-Implementation'!
TestCase subclass: #RenameInstanceVariableTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'XPWorkshop-Implementation'!
!classDefinition: 'RenameInstanceVariableTest class' category: #'XPWorkshop-Implementation'!
RenameInstanceVariableTest class
	instanceVariableNames: ''!

!classDefinition: #ThisContextExample category: #'XPWorkshop-Example'!
Object subclass: #ThisContextExample
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'XPWorkshop-Example'!
!classDefinition: 'ThisContextExample class' category: #'XPWorkshop-Example'!
ThisContextExample class
	instanceVariableNames: ''!

!classDefinition: #RefactoringApplier category: #'XPWorkshop-UI'!
Object subclass: #RefactoringApplier
	instanceVariableNames: 'requestExitBlock refactoring changes'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'XPWorkshop-UI'!
!classDefinition: 'RefactoringApplier class' category: #'XPWorkshop-UI'!
RefactoringApplier class
	instanceVariableNames: ''!

!classDefinition: #RenameInstanceVariableApplier category: #'XPWorkshop-UI'!
RefactoringApplier subclass: #RenameInstanceVariableApplier
	instanceVariableNames: 'classToRefactor oldInstanceVariable newInstanceVariable browser'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'XPWorkshop-UI'!
!classDefinition: 'RenameInstanceVariableApplier class' category: #'XPWorkshop-UI'!
RenameInstanceVariableApplier class
	instanceVariableNames: ''!

!classDefinition: #RenameInstanceVariable category: #'XPWorkshop-Implementation'!
Object subclass: #RenameInstanceVariable
	instanceVariableNames: 'oldVariable newVariable classToRefactor rewriter'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'XPWorkshop-Implementation'!
!classDefinition: 'RenameInstanceVariable class' category: #'XPWorkshop-Implementation'!
RenameInstanceVariable class
	instanceVariableNames: ''!

!classDefinition: #RenameInstanceVariableRewriter category: #'XPWorkshop-Implementation'!
Object subclass: #RenameInstanceVariableRewriter
	instanceVariableNames: 'refactoring'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'XPWorkshop-Implementation'!
!classDefinition: 'RenameInstanceVariableRewriter class' category: #'XPWorkshop-Implementation'!
RenameInstanceVariableRewriter class
	instanceVariableNames: ''!


!RefactoringWorkshopTutorial methodsFor: 'initialization' stamp: 'HAW 5/20/2018 02:08:11'!
chapters

	^ { 'Welcome!!' -> #welcome.
		'Introducction to Smalltalk' -> #introduction.
		'Unary Messages' -> #unaryMessages.
		'Binary Messages' -> #binaryMessages.
		'Keyword Messages' -> #keywordMessages.
		'Message sending precedence' -> #messageSendingPrecedence.
		'Assigment and Special Objects' -> #assigment.
		'Closures' -> #closures.
		'Closure Parameters' -> #closureParameters.
		'Control Flow Syntax with Closures' -> #controlFlow.
"		'Exception Handling' -> #exceptionHandling."
		'Collections' -> #collections.
		'Collections protocol' -> #collectionProtocol.
		'Tools-ClassBrowser' -> #toolsClassBrowser.
		'Tools-Creating a class' -> #toolsCreatingClass.
		'Tools-Creating a method' -> #toolsCreatingMethod.
		'Tools-Adding instance variable' -> #toolsAddingInstanceVariables.
		'Tools-Instanciation and Initialization' -> #toolsInstanciationAndInitialization.
		'Tools-TDD' -> #toolsTDD.
"		'Tools-Inspector' -> #toolsInspector."
		'Tools-Debugger' -> #toolsDebugger.
		'Tools-Evaluating Collaborations' -> #toolsEvaluatingCollaborations.
		'Tools-Browsing' -> #toolsBrowsing.
		'Meta-Programming' -> #metaProgramming.
		'Structural-Read' -> #structuralRead.
		'Structural-Write' -> #structuralWrite.
		'Behavioral-Read' -> #behavioralRead.
		'Behavioral-Write' -> #behavioralWrite.
		'Exercise' -> #exercise.
		'Solution' -> #solution }! !

!RefactoringWorkshopTutorial methodsFor: 'initialization' stamp: 'HAW 5/16/2018 17:12:21'!
initialize

	super initialize.
	self initializeTopics.
	self initializeTopicList! !

!RefactoringWorkshopTutorial methodsFor: 'initialization' stamp: 'HAW 5/16/2018 17:14:16'!
initializeTopicList
	
	topicList := self chapters collect: [:anAssoc | anAssoc key ] ! !

!RefactoringWorkshopTutorial methodsFor: 'initialization' stamp: 'HAW 5/16/2018 17:13:22'!
initializeTopics
	
	topics := Dictionary new.
	self chapters do: [:anAssoc | topics add: anAssoc ].
	
	! !

!RefactoringWorkshopTutorial methodsFor: 'user interface support' stamp: 'HAW 5/16/2018 16:58:36'!
selectedTopic: aTopic
	
	selectedTopic := aTopic.
	textPane model actualContents: self updateTopicText.
	self triggerEvent: #topicListIndex! !

!RefactoringWorkshopTutorial methodsFor: 'user interface support' stamp: 'HAW 5/16/2018 16:58:40'!
topicList

	^ topicList! !

!RefactoringWorkshopTutorial methodsFor: 'user interface support' stamp: 'HAW 5/16/2018 16:58:55'!
topicListIndex

	topicList ifNil: [ ^ topicListIndex := 0 ].
	^ topicList indexOf: selectedTopic! !

!RefactoringWorkshopTutorial methodsFor: 'user interface support' stamp: 'HAW 5/16/2018 16:59:08'!
topicListIndex: index
	
	topicListIndex := index.
	self selectedTopic: (topicList at: index ifAbsent: nil)! !

!RefactoringWorkshopTutorial methodsFor: 'user interface support' stamp: 'HAW 5/16/2018 17:02:57'!
updateTopicText

	^ topicListIndex = 0 
		ifTrue: [ '' ]
		ifFalse: [ | topic |
			topic := topics at: selectedTopic.
			self class perform: topic ]! !

!RefactoringWorkshopTutorial methodsFor: 'accessing' stamp: 'HAW 5/16/2018 17:03:09'!
textPane: anObject
	
	textPane := anObject! !

!RefactoringWorkshopTutorial methodsFor: 'accessing' stamp: 'HAW 5/16/2018 17:03:18'!
window: anObject

	window := anObject! !

!RefactoringWorkshopTutorial class methodsFor: 'chapters' stamp: 'HAW 5/20/2018 02:32:17'!
assigment

^'"
1) Assigment is done with :=
2) self is used instead of this.
3) true is the object for true, false is the object that represents false :-)
4) nil is the object that represents nothing, null in other languages but with a big difference, nil is an object not a reserved word like in C++, Java, C#, etc.

Do not worry if aVariable appears in red, that is because it is not defined yet. After evaluating the next line it will be defined"
aVariable := 10.
aVariable + 20.

true & true.
true & false.

nil isNil.
'




! !

!RefactoringWorkshopTutorial class methodsFor: 'chapters' stamp: 'HAW 5/17/2018 15:18:30'!
behavioralRead

^'"This kind of meta-programming is not important for the exercise we will do, but if you want to see how it works, see the implementation of #m1 in the class ThisContenxtExample"
ThisContextExample new m1.'! !

!RefactoringWorkshopTutorial class methodsFor: 'chapters' stamp: 'HAW 5/17/2018 15:18:53'!
behavioralWrite

^'"This kind of meta-programming is not important for the exercise we will do, but if you want to see how it works, see the implementation of #m3 in the class ThisContenxtExample"
ThisContextExample new m3.'! !

!RefactoringWorkshopTutorial class methodsFor: 'chapters' stamp: 'HAW 5/20/2018 02:23:19'!
binaryMessages

^'"What it is called ''operators'' in other programming languages (for example the ones we use for arithmethic operations) are also messages. 
In Smalltalk those messages are called Binary Messages.

C-like syntax --> Smalltalk syntax:
1 + 2;           --> 1 + 2.

1) + is a binary message. 
2) Binary messages are symbols (+,-,*, &, |, etc) that have one parameter.
Let''s try some examples:"

1 + 2.
10 * 20.

true & false.
true | false.
'

"Because there is no precedence between binary messages, the following collaborations provide an unexpected result
1 + 2 * 5.

To get the expected result, parenthesis have to be used
1 + (2 * 5).

NOTE: The reason there is no precedence is because not only numbers could respond to + or *. Other type of objects could have a different precedence for those messages"! !

!RefactoringWorkshopTutorial class methodsFor: 'chapters' stamp: 'HAW 5/16/2018 20:11:39'!
closureParameters

^'"As in messages, you can send parameters to a Closure.
The syntax to define the parameters a Closure receives is the same as with messages, but as Closures are anonymous, we ommit the keywords.  
The parameters are separeted from the collaborations with a pipe (|):"

(1 to: 10) select: [ :aNumber | aNumber even ].

"The closure passed as parameter to the message #select: has one parameter named aNumber. It cames after the colon but there is no keyword for it because it is ''anonymous''. 
More parameters are separated with colon too, for example:"

(1 to: 5) inject: 0 into: [ :aCollector :aNumber | aCollector + aNumber ].'


! !

!RefactoringWorkshopTutorial class methodsFor: 'chapters' stamp: 'HAW 5/20/2018 02:33:23'!
closures

^'"Closures are objects used to represent a set of collaborations without name.
As expected, closures are objetcts and therefore to evaluate them we use the message #value (from now on, I''m going to write the name of the messages with # at the begining because that is how you write them in Smalltalk).
The result of evaluating a closure is the result of the last collaboration evaluated of that closure.
Let''s see some examples"

"It will return factorial of 10"
10 factorial.

"It will return a closure that has the collaboration 10 factorial, but it will not be evalluated"
[ 10 factorial ].

"Now that we send #value to the closure it is evaluated" 
[ 10 factorial ] value.  

"NOTE: Methods are also objects that represent a set of collaborations, but they are related to a class and have a name"'
! !

!RefactoringWorkshopTutorial class methodsFor: 'chapters' stamp: 'HAW 5/20/2018 02:41:23'!
collectionProtocol

^'"All Collections share the same protocol to itereate them. The most importat are:
1) #do: iterates over the collection evaluating the closure for each object. It is equivalent to a forEach in some languages"

#(1 10) do: [ :aNumber | aNumber inspect ].
"The syntax #(...) creates an Array with the elements inside de parenthesis. The message #inspect opens an Inspector on the receiver. An Inspector is a window that allows to see how an object is composed, it allows to change it and play with it"

"2) #select: Returns a collection with the objects that returned true when evaluating the closure. It is equivalent to filter in some languages"
#(2 3 4 5 6) select: [ :aNumber | aNumber isPrime ].

"3) #collect: Returns a new collection with the result of evaluating the closure on each object. Equivalent to map in some languages"
#(2 3 4 5 6) collect: [ :aNumber | aNumber * 2 ].'

"4) #injec:into: Difficult to explain... similar to map/reduce... see the example 
#() inject: 0 into: [ :sum :aNumber | sum + aNumber ].
#(1) inject: 0 into: [ :sum :aNumber | sum + aNumber ].
#(1 2) inject: 0 into: [ :sum :aNumber | sum + aNumber ].
#(1 2 3) inject: 0 into: [ :sum :aNumber | sum + aNumber ]."! !

!RefactoringWorkshopTutorial class methodsFor: 'chapters' stamp: 'HAW 5/17/2018 14:49:45'!
collections

^'"Collection is a very important and useful hierarchy of Smalltalk. Using collections is very simple and there are many different implementations like Array (fixed size collection), OrderedCollection (variable size collection), Dictionary (key-value collection), Set (collection without repeated objects), etc.
Indexed collections (Array, OrderedCollection) start at index 1"

anOrderedCollection := OrderedCollection with: 1 with: 10 with: 20.
anOrderedCollection add: 30.
anOrderedCollection includes: 30.
anOrderedCollection at: 4.
anOrderedCollection at: 4 put: 300.
anOrderedCollection at: 4.'

"anArray := Array with: 1 with: 10 with: 20.
anArray size.
anArray at: 1.
anArray at: 1 put: 100.
anArray at: 1."! !

!RefactoringWorkshopTutorial class methodsFor: 'chapters' stamp: 'HAW 5/20/2018 02:37:05'!
controlFlow

^'"Closures are used to ''paremeterize code''. That is, they allow us to have ''high order functions'' (using functional terms).
In Smalltalk closures are really full closures, that is closures where the return binds with the current execution context, that allows us to use messages even for what in other languages is called ''control flow syntax''.
Therefore an if is not a reserved word in Smalltalk but a message. The same for while and so on.

C-like syntax                --> Smalltalk syntax:
if (a>3) { ... }                --> a>3 ifTrue: [ ... ].
if (a>3) { ... } else { ... } --> a>3 ifTrue: [ ... ] ifFalse: [ ... ].
while (a>3) { ... }           --> [ a>3 ] whileTrue: [ ... ]
"

2<3 ifTrue: [ ''Yeah!!'' ].
2>3 ifTrue: [ ''Yeah!!'' ].
2<3 ifTrue: [ ''Yeah!!'' ] ifFalse: [ ''Nop'' ].
2>3 ifTrue: [ ''Yeah!!'' ] ifFalse: [ ''Nop'' ].'

"Do not worry if counter appears in red, that is because the variable is not defined. After evaluating the next line it will be defined
counter := 0.
[ counter < 3 ] whileTrue: [ counter := counter + 1 ].
counter.
"


! !

!RefactoringWorkshopTutorial class methodsFor: 'chapters' stamp: 'HAW 5/16/2018 17:27:01'!
exceptionHandling

^'"Closures are use to implement all control flow syntax known in othre languages, like exeception handling.
Let''s see an example:

In C-like syntax:
 try { 1/0;} catch (Exception e) { return 10;}
"
[ 1/0 ] on: Exception do: [ :e | e return: 10 ].

"
In C-like syntax:
 try { 1+1; } finally { 2+2; }
"
[1+1] ensure: [ 2+2 ].'


! !

!RefactoringWorkshopTutorial class methodsFor: 'chapters' stamp: 'HAW 5/20/2018 16:46:28'!
exercise

^'"It is time to start the real exercise!!
We are going to implement an automatic refactoring using TDD and meta-programming.

The refactoring is the ''Rename Instance Variable''.
This refactoring changes the name of an instance variable in its definition and all references to it in methods with the new name.
Additionally, because we are in a live coding environment, all objects that already exist have to copy the value of the old variable to the new variable!!. This is very important in a live coding environment. If we do not do it then we could not rename instance variable of classes with instances.

So, basically the refactoring has to:
1) Add the new variable name to the instance variables of the class to refactor
2) Copy the value of the old variable to the new variable for all the instances of the class to refactor
3) Change all methods referencing the old variable to reference the new variable
4) Remove the old variable from the class

We are providing some classes to help you do the exercise. They are located in the ''XPWorkshop-Implementation'' category. The classes are:
1) RenameInstanceVariableTest: That is where we have to write all the tests. It cames with the skeleton of the first test we could write, #test01NewVariableMustBeAddedAsInstanceVariable. Take a look at it.
2) RenameInstanceVariable: This is the class that represents the refactoring. To instanciate it we have to send it the message #from: anOldvariable to: aNewVariable in: aClassToRefactor as you can see in the test. The message #apply is the one that executes the refactoring. That is where you will have to code the functionality.
3) RenameInstanceVariableRewriter: This is the AST visitor that changes references from the old variable to the new variable of a method. The class RenameInstanceVariable provides the message #renameReferencesIn: anAST that renames the reference of the given an AST using this visitor so you do not have to code that, just send the message #renameReferencesIn: when necessary.

Now let''s start coding!! 
Remember that we have to do it using TDD, so write the test first and then make it pass and then refactor your code if necessary. 
Do not try to code the solution all at once, it is going to be dificult if you try to do that. I will provide checkpoint and solutions step by step if you have problems solving the problem.
As you will deduce, the test data are classes and methods!! That makes complete sense because we are meta-programming, so we have to test how our code works with code!!. But you already know how to create classes on the fly, compile methods, add/remove instance variables, etc. :-)

Good luck!!"
'




! !

!RefactoringWorkshopTutorial class methodsFor: 'chapters' stamp: 'HAW 5/20/2018 02:20:36'!
introduction

^'"In Smalltalk, everything is an object. Numbers, characters, strings, windows, even the debugger is an object.
In Smalltalk, all computation is done sending messages. When a message is sent to an object we say that they are collaborating.
Smalltalk''s simplicity lies in the fact that everything is solved finding the right object and sending it the right message.

At the end of this workshop you will have implemented a refactoring, that is going to be an object, and that refactoring will be executed sending a message to it.

Let''s start learning Smalltalk''s syntax.

C-like syntax               -->  Smalltalk syntax:
''Hello world''.size();   --> ''Hello world'' size.     

1) The dot (.) is not needed to separate receiver from message. 
2) No parenthesis is needed when sending a message
3) To separate collaborations, the dot (.) is used instead of semi-colon (;)

Now we will try some examples. To try them out just put the cursor in a the line you want to execute and press cmd+p (or alt+p). When you are done with the result, you can delete it pressing backspace.
Let''s try the examples:"

''Hello world'' size.
100 factorial.'! !

!RefactoringWorkshopTutorial class methodsFor: 'chapters' stamp: 'HAW 5/17/2018 14:47:22'!
keywordMessages

^'"Finally, the third type of messages are ''Keyword Messages''. 
They are used for messages that are not symbols and have one or more parameters

C-like syntax              --> Smalltalk syntax:
anArray.at(1);             --> anArray at: 1.                  <-- The message is at:
anArray.put(1,''Hello''); --> anArray at: 1 put: ''Hello''.  <-- The message is at:put:

1) Keywords that are part of the message end with colon
2) After the colon goes the parameter
3) Keywords and parameters are mixed in the message to read it as similar as natural language as possible
Let''s try some examples:"

1 to: 10.
1 to: 10 by: 2.
''Hello world!!'' copyFrom: 7 to: 11.

"NOTE: Keywords help providing the role of the parameter when reading the message as opposed in C-like syntax where the parameter''s role can only be known reading the method definition"'
! !

!RefactoringWorkshopTutorial class methodsFor: 'chapters' stamp: 'HAW 5/20/2018 02:29:35'!
messageSendingPrecedence

^'"Messages are sent from left to write, first unuary messages then binary message and finally keyword messages.
Parenthesis change the precedence as expected.
Let''s see how this work:"

5 factorial to: 2 factorial * 7 factorial by: 2 factorial.

"That set of collaborations is evaluated this way:
1) 5 factorial  --> 120
2) 2 factorial  -->  2
3) 7 factorial --> 5040
4) 2 * 5040 -->  10080
5) 2 factorial --> 2
6) 120 to: 10080 by: 2

The equivalent in C-like syntax would be:
5.factorial().toBy(2.factorial() * 7.factorial(), 2.factorial());"'
! !

!RefactoringWorkshopTutorial class methodsFor: 'chapters' stamp: 'HAW 5/20/2018 16:09:28'!
metaProgramming

^'"Meta-programming is when you program about programs :-)
The word ''meta'' means ''it defines, or talks about'' what it is meta.
For example, a class defines the behavior of it instances, therefore we could say that a class is a meta-instance because it defines it. We use the word class for historical reasons (that is how Simula-67 called them in fist place and it sticked).
Another example is when we use a natural language to talk about the same natural language. For example we can say ''the word house has five characters''. We used English to talk about an English word. We just meta-talked.

We meta-program when the problem domain is a program it self. We can meta-program using the same language or not, that will depend on the meta-programming capabilities of the language that are usually really bad (they usually support strutrual-read. We difine it below)
Programming languages that allow to reason about the same programming language are called meta-circular; they are writeen in itself. The first meta-circular language was Lisp. Smalltalk is another example of the few of that kind, that is why we are using it for this workshop.
Natural languages are meta-circular by default, that is why we say a human being is a ''reflective system''.

In programming terms, we can do four different types of meta-programming:
1) Structural: it is when we meta-program about the structure of the system (its classes, methods, hierarchy, etc).
2) Behavioral: it is when we meta-program about the execution of the program (its execution context, execution stack, etc).
3) Read: it is when we only read the structure or behavior of a program
4) Write: it is when we modify the structure or behavior of a program

Therefore, there are four types of meta-programming. Let''s see examples of each."'
! !

!RefactoringWorkshopTutorial class methodsFor: 'chapters' stamp: 'HAW 5/18/2018 13:35:42'!
solution

^'"You can load each soluction step, but for that you will need the zip password that will be provided after each step review
Loads initial code:"
ChangeSet fileIn: ''XPWorkshop-Implementation1.st'' asFileEntry.

"Loads first test implementation"
ChangeSet fileIn: ''XPWorkshop-Implementation2.st'' asFileEntry.

"Loads solution to make pass first test"
ChangeSet fileIn: ''XPWorkshop-Implementation3.st'' asFileEntry.

"Loads second test implementation"
ChangeSet fileIn: ''XPWorkshop-Implementation4.st'' asFileEntry.

"Loads solution to make pass second test"
ChangeSet fileIn: ''XPWorkshop-Implementation5.st'' asFileEntry.

"Loads thrid test implementation"
ChangeSet fileIn: ''XPWorkshop-Implementation6.st'' asFileEntry.

"Loads solution to make pass third test"
ChangeSet fileIn: ''XPWorkshop-Implementation7.st'' asFileEntry.

"Loads fourth test implementation"
ChangeSet fileIn: ''XPWorkshop-Implementation8.st'' asFileEntry.

"Loads solution to make pass fourth test"
ChangeSet fileIn: ''XPWorkshop-Implementation9.st'' asFileEntry.

"Loads final solution"
ChangeSet fileIn: ''XPWorkshop-Implementation10.st'' asFileEntry.



'! !

!RefactoringWorkshopTutorial class methodsFor: 'chapters' stamp: 'HAW 5/18/2018 13:15:54'!
structuralRead

^'"Class and hierarchy:
Getting an object class:"
1 class.   

"Getting a class superclass"
Integer superclass. 

"Getting a class subclasses"
Integer subclasses. 

"Instances:
Getting all instances of a class"
Date allInstances.   

"Instance variables:
To get the instance variables of a class send the message #instVarNames"
OrderedCollection instVarNames.  

"You can read the value of an instance variable sending the message #instVarNamed:"
anOrderedCollection := OrderedCollection new.
anOrderedCollection instVarNamed: ''firstIndex''. 
anOrderedCollection instVarNamed: ''lastIndex''.

anOrderedCollection add: ''some object''.
anOrderedCollection instVarNamed: ''firstIndex''.
anOrderedCollection instVarNamed: ''lastIndex''.

"Methods:
Gettinng the messages a class implements"
Integer selectors.    

"Getting the method of a message"
isPrimeMethod := Integer compiledMethodAt: #isPrime.   

"Getting a method''s source code"
isPrimeMethod sourceCode.

"Getting a method''s lines of code"
isPrimeMethod linesOfCode.

"Checking if a method reads an instance variable"
(OrderedCollection compiledMethodAt: #collect:) readsInstVarNamed: ''array''.

"Checking if a method writes an instance variable"
(OrderedCollection compiledMethodAt: #collect:) writesInstVarNamed: ''array''.

"Getting the messages that access (for reading or writting) an instance variable"
OrderedCollection whichSelectorsAccess: ''array''.
OrderedCollection whichSelectorsAccess: ''firstIndex''.
OrderedCollection whichSelectorsAccess: ''lastIndex''.

"Getting a method''s AST"
isPrimeMethodAST := isPrimeMethod methodNode.

"You can inspect the AST sending the message #inspect to it"
isPrimeMethodAST inspect.

"To get an AST source code, just send the message #printString to it"
isPrimeMethodAST generateSource.

"You can traverse an AST with a visitor"
isPrimeMethodAST accept: ParseNodeVisitor new.'! !

!RefactoringWorkshopTutorial class methodsFor: 'chapters' stamp: 'HAW 5/17/2018 15:41:29'!
structuralWrite

^'"To create a class, you can use the message #subclass:instanceVariableNames:category:
The following example create the class ExampleClass with no intance variables and in the XPWorkshop-Example category"
Object subclass: #ExampleClass instanceVariableNames: '''' category: ''XPWorkshop-Example''.

"To remove a class send the message #removeFromSystem to it"
Object subclass: #ClassToRemove instanceVariableNames: '''' category: ''XPWorkshop-Example''.
ClassToRemove removeFromSystem.

"Instance variables"
ExampleClass instVarNames.

"Adding instance variables"
ExampleClass addInstVarName: ''variable1''.  
ExampleClass addInstVarName: ''variable2''.
ExampleClass instVarNames.

"Removing instance variables"
ExampleClass removeInstVarName: ''variable2''.
ExampleClass instVarNames.

"Changing an instance variable value"
anExampleClass := ExampleClass new.
anExampleClass instVarNamed: ''variable1''.
anExampleClass instVarNamed: ''variable1'' put: 10. 
anExampleClass instVarNamed: ''variable1''.

"Methods
You can create new methods sending the message #compile: to a class with the source code you want for that method:"
ExampleClass selectors.
ExampleClass compile: ''m1 ^10''.
ExampleClass selectors.
(ExampleClass compiledMethodAt: #m1) sourceCode.
ExampleClass new m1.'! !

!RefactoringWorkshopTutorial class methodsFor: 'chapters' stamp: 'HAW 5/20/2018 02:52:18'!
toolsAddingInstanceVariables

^'"Instance variable are also know as attributes or fields in other programming languages.
Instance variables in Smalltalk have what is called a protected scope in C++ like languages.

To add an instance variable to a class, select the class and modify its definition. 
Let''s add the instance variable iv1 to NewClass. Select that class in a class browser and add iv1 in the string of the keyword #instanceVariableNames:
You should see this in the browser:"

Object subclass: #NewClass
	instanceVariableNames: ''iv1''
	classVariableNames: ''''
	poolDictionaries: ''''
	category: ''XPWorkshop--Example''

"Press cmd+s to save the new class definition. Doing so will add iv1 as intance variable to NewClass.
If you want to remove an instance variable just remove it from the definition and save it"
'! !

!RefactoringWorkshopTutorial class methodsFor: 'chapters' stamp: 'HAW 5/20/2018 15:36:51'!
toolsBrowsing

^'"Smalltalk is a meta-circular environment, therefore you use Smalltalk to learn about Smalltalk. 
The three most useful searching techniques are:
1) Look for implementors of a message. It shows all the methods implementing a message. The hot-key for it is cmd+m (or alt+m). It is very useful to see how the same message is implemented in different classes.
2) Look for senders of a message. It shows all the methods that send the message you are researching. The hot-key for it is cmd+n (or alt+n). It is very useful to see how to use the message because you have all the examples in the system to look at them
3) Look for the implementation of a class. Pressing cmd+b (or alt+b) opens the class browser selecting the class whose name matches the string where cmd+b was pressed
4) Look for references to a class. Pressing cmd+B (or alt+B) (uppercase B) shows all the methods referening the class"'
! !

!RefactoringWorkshopTutorial class methodsFor: 'chapters' stamp: 'HAW 5/20/2018 02:45:59'!
toolsClassBrowser

^'"The Class Browser is the tool used to browse the classes in the system, create new classes, add methods, etc., that is to program :-)
To open a class browser click on the Smalltalk desktop and select ''Open Class Browser''.
Remember, everything is an object, even a browser. To open one you can send a message to an object... any clue what object and what message?. See next line!!"

BrowserWindow openBrowser.

"The Class Browser has two main panes. The top one with 4 lists and the one at the bottom where code is shown.
The lists of the top pane are:
1) The system category list: It shows categories where classes are grouped following certain criteria. For example:
     i) ''Kernel-Objects'' is where the basic classes are like Object, Boolean, etc. 
    ii) ''Kernel-Classes'' is where the meta-model is implemented. It has classes like Behavior, Class, Metaclass, etc.
2) Once you select a system category it shows the classes of that category on the second list. You can see the instance protocol or class protocol of a class. 
    Instance protocol are the messages instances of that class know how to answer. 
    Class protocol is the messages that the class itself know how to answer. (Yes!! Classes are also objects!! and therefore respond messages... more to came)
    You can switch between protocols pressing the ''instance'' or ''class'' buttons below the class list
3) Once you select a class, it shows you the ''method categories'' in the third list. The method categories are the way methods are organized. It is very usefull and helps to organize the messages a class implements.
4) Once you select a method category, you can see the methods that belong to that category in the fourth list.
    Selecting a method you will see the collaborations it defines in the botton pane, that is, the method''s source code
"'! !

!RefactoringWorkshopTutorial class methodsFor: 'chapters' stamp: 'HAW 5/20/2018 02:49:51'!
toolsCreatingClass

^'"Copy the following line. In a Class Browser select a Class Category (anyone is ok). Then paste the line in the bottom pane of the class browser, then press cmd+s (or alt+s) to ''Save'' what you just pasted"

Object subclass: #NewClass instanceVariableNames: '''' category: ''XPWorkshop-Example''

"As you will see, a new class will be created called NewClass. Congratulations!! you just created your first class with Smalltalk!!
Conclusion: Creating a class is the result of sending the message #subclass:instanceVariableNames:category: to what will be its superclass

NOTE: Look how Smalltalk keeps consistency, even creating a class is done sending a message to an object. This will be very important to implement our refactoring using meta-programming because what we just did was to meta-program"
'! !

!RefactoringWorkshopTutorial class methodsFor: 'chapters' stamp: 'HAW 5/20/2018 02:50:33'!
toolsCreatingMethod

^'"To implement a message, that is to create a method, just select a class and write the method in the bottom pane. When done, press cmd+s to save it.

Let''s implement the message #m1 in NewClass. Copy the next five lines
m1
	| localVar |
	
	localVar := 1.
	^localVar + 2

Now paste them in the bottom pane of a class browser, selecting NewClass first and a method category like -- all --. 
After pasting the code press cmd+s to save the method.
Now evaluate the following line, you should get 3 as result"

NewClass new m1.

"Now implement the message #add:with: that sum both parameters. It should be somethink like this:
add: aLeftNumber with: aRightNumber

	^aLeftNumber + aRightNumber 

Evaluating the following line should return 30"

NewClass new add: 10 with: 20.
'! !

!RefactoringWorkshopTutorial class methodsFor: 'chapters' stamp: 'HAW 5/17/2018 14:37:35'!
toolsDebugger

^'"The Debugger is most important and powerful Smalltalk tool. It does not only allow to evaluate collaborations step by step, but also to modify them, retry a method, inspect self and the execution context, modify it, etc. 
The most important different between the Smalltalk''s debugger and other languages debugger is that it allows to modify the collaborations (code) that you are debugging, helping the programmer in his/her reasearch process.
The main buttons are:
1) Proceed: Closes the debugger and continues with the execution of the current process
2) Restart: Restart the execution of the current execution context. That is, it start to execute the current method again.
3) Into: Steps into the implementation of the message that is next to be sent.
4) Over: Steps over the implementation of the message that is next to be sent.
5) Through: Steps over to the next closure.
6) Create: Allows to create a method of a message the current object does not understand.
"'
! !

!RefactoringWorkshopTutorial class methodsFor: 'chapters' stamp: 'HAW 5/17/2018 14:38:26'!
toolsEvaluatingCollaborations

^'"There are many ways to evaluate a collaboration or set of collaboration. All of them can be use anywhere in Smalltalk, in any tool.
All these ways of evaluating collaborations are basically the same, the only difference between them is how they show the result to the user.
For all of them, you mus select the text that holds the collaborations to evaluate and then press:
1) cmd+d: It means ''Do it''. It just evaluates the selected collaborations. It does not show any result
2) cmd+p: It means ''Print it''. It evaluates the selected collaborations and prints the result of the last collaboration in the text pane you selected the collaborations
3) cmd+i: It means ''Inspect it''. It evaluates the selected collaborations and opens an inspector with the result of the last evaluated collaboration
3) cmd+D: It means ''Debug it''. It opens the debugger and allows to debug the selected collaborations."'
! !

!RefactoringWorkshopTutorial class methodsFor: 'chapters' stamp: 'HAW 5/16/2018 17:31:18'!
toolsInspector

^'"Inspector: It is common  graphical representation of an object. It shows the string representation of the object you are inspecting and its instance variables. It has a workspace like pane at the botton to play with the object. "'! !

!RefactoringWorkshopTutorial class methodsFor: 'chapters' stamp: 'HAW 5/20/2018 02:54:43'!
toolsInstanciationAndInitialization

^'"Creating instances of a class is as simple as sending the message #new to the class:"

NewClass new.

"But sometimes you want to create instances with some parameters. To do that a class method and an initialization method must be implemented.
Let''s do it. Let''s implement a new way to create instances of NewClass. Copy the following 3 lines:
with: aNumber

	^self new initializeWith: aNumber.
	
Now select NewClass in the class browser, then press the button ''class'' (to see the class methods), select a method category, paste the lines you copied and press cmd+s.
When saving you will be asked if you are sure because the message #initializeWith: is not implemented. Select initializeWith: to confirm that it is correct.
Now press the ''instance'' button and copy the next tree lines:
initializeWith: aNumber

	iv1 := aNumber.
	
Press cmd+s to save the method.
So now we have a class message named #with: that creates an instance of the class and send the message #initializeWith: to it that initializes iv1 with the parameter.
Let''s see if it works:"

NewClass with: 10.

"You will not see much, so to see if it works let''s implement an iv1 getter. Copy the next 3 lines:
iv1

	^iv1
	
Paste them as method in NewClass and save it. 
Now evaluate:"

(NewClass with: 10) iv1.

"You should get 10 as result. If so you are ready to go!!"
'! !

!RefactoringWorkshopTutorial class methodsFor: 'chapters' stamp: 'HAW 5/17/2018 15:41:56'!
toolsTDD

^'"Like in any other language, to do TDD you must have a test class and test method. 
In Smalltalk the test framework is called SUnit and it was created by Kent Beck around 1994 (there is an article about it in the Smalltalk Report of that year).

In SUnit, test classes have to subclass TestCase and test methods have to start with test.
Look for the class called ExampleTest in a class browser. It is located in the category XPWorkshop-Example.
Then look at the method testExample and follow what it says."
'! !

!RefactoringWorkshopTutorial class methodsFor: 'chapters' stamp: 'HAW 5/20/2018 02:21:47'!
unaryMessages

^'"There are three type of messages. One of them is the Unary Messages.
Unary Messages are those that have no parameters.
Let''s try some examples:
(Remember to press cmd+p or alt+p to evaluate a line. cmd/alt+p means ''Print it'')
"

''XP Rocks!!'' size.
1 factorial.
100 factorial.
1000 factorial.'

! !

!RefactoringWorkshopTutorial class methodsFor: 'chapters' stamp: 'HAW 5/20/2018 02:17:57'!
welcome

^'"Welcome to this Workshop about Automatic Refactoring Implementation with TDD and Meta-programming
On this workshop you will learn what meta-programming is, how is to program in a meta-circular environment and practice TDD while implementing an Automatic Refactoring.

I hope that when done you will not only be happy but also surprise for all the topics we saw and things we learned in just four hours

To be able to do this in just four hours we need to use a programming language that:
1) is simple 
2) has full support to meta-programming and...
3) it is easy to use and try things out.
That is why we are going to use Smalltalk. Do not worry if you do not know it, the workshop is prepare for people that does not know Smalltalk and in fact, it may be another thing you will learn with this workshop"
'
! !

!RefactoringWorkshopTutorialWindow methodsFor: 'initialization' stamp: 'HAW 5/16/2018 16:40:03'!
buildMorphicWindow

	| row |
	
	topicList := PluggableListMorph
				model: model
				listGetter: #topicList
				indexGetter: #topicListIndex
				indexSetter: #topicListIndex:
				mainView: self
				menuGetter: nil
				keystrokeAction: nil.
	topicList name: 'Chapters'.
	textModel := TextModelMorph withModel: model.
	textModel
		askBeforeDiscardingEdits: false;
		name: 'Work Space'.
	model when: #topicListIndex send: #update: to: topicList withArguments: #(#topicListIndex).
	row := LayoutMorph newRow.
	row
		name: #Row;
		addMorph: topicList proportionalWidth: 0.2;
		addAdjusterAndMorph: textModel proportionalWidth: 0.8.
	self layoutMorph
		addMorph: row.
	"self setLabel: 'Tutorial'"! !

!RefactoringWorkshopTutorialWindow methodsFor: 'accessing' stamp: 'HAW 5/16/2018 16:41:11'!
textModel

	^ textModel! !

!RefactoringWorkshopTutorialWindow class methodsFor: 'icons' stamp: 'HAW 5/18/2018 13:54:04'!
addMiscellaneousIconsTo: aCollectorCollection

	^aCollectorCollection 
		add: #('open class browser') -> #editFindReplaceIcon;
		add: #('open tutorial') -> #helpIcon
! !

!RefactoringWorkshopTutorialWindow class methodsFor: 'instance creation' stamp: 'HAW 5/17/2018 15:42:50'!
openTutorial
"
	 RefactoringWorkshopTutorialWindow  openTutorial.
"
	| window tutorial |

	tutorial := RefactoringWorkshopTutorial new.
	window := self open: tutorial label: 'XP Workshop Tutorial'.
	window setWindowColor: Theme current workspace.
	tutorial textPane: window textModel.
	tutorial 
		contents: '';
		window: window! !

!ExampleTest methodsFor: 'tests' stamp: 'HAW 5/20/2018 02:58:26'!
testExample

	"Test class must subclass TestCase.
	Tests must start with test (lower case).
	
	To execute it, press cmd+t (or alt+t)
	It will execute this test. If it passes, it will also run all the tests in the suite (class). 
	If it fails, it will open the debugger on the failed assertion"
	
	self assert: 1 equals: 1.
	
	"To make the test fail, uncomment the following line and press cmd+t"
	"self assert: 1 equals: 2"
	
	"cmd+t can be pressed when editing the code, when a test case class is selected or when the class category is selected. 
	In the last case, it will run all tests of the category.
	
	You can also press cmd+r to debug the test"! !

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

!ThisContextExample methodsFor: 'behavior-read' stamp: 'HAW 5/16/2018 15:12:47'!
m1

	^self m2! !

!ThisContextExample methodsFor: 'behavior-read' stamp: 'HAW 5/16/2018 15:12:57'!
m2

	^thisContext sender! !

!ThisContextExample methodsFor: 'beharior-write' stamp: 'HAW 5/16/2018 15:13:56'!
m3

	| var1 |
	
	var1 := 1.
	
	self m4.
	
	^var1! !

!ThisContextExample methodsFor: 'beharior-write' stamp: 'HAW 5/16/2018 15:14:56'!
m4

	thisContext sender tempAt: 1 put: 20! !

!RefactoringApplier methodsFor: 'refactoring - applying' stamp: 'HAW 6/5/2017 18:06:39'!
applyRefactoring

	changes := refactoring apply! !

!RefactoringApplier methodsFor: 'refactoring - creation' stamp: 'HAW 6/5/2017 18:05:46'!
createRefactoring

	self subclassResponsibility ! !

!RefactoringApplier methodsFor: 'refactoring - creation' stamp: 'HAW 6/5/2017 18:05:20'!
createRefactoringHandlingRefactoringExceptions

	self valueHandlingRefactoringExceptions: [ refactoring := self createRefactoring ]
	! !

!RefactoringApplier methodsFor: 'refactoring - parameters request' stamp: 'HAW 6/5/2017 14:24:04'!
endRequest

	^requestExitBlock value! !

!RefactoringApplier methodsFor: 'refactoring - parameters request' stamp: 'HAW 6/5/2017 19:04:16'!
requestRefactoringParameters

	self subclassResponsibility ! !

!RefactoringApplier methodsFor: 'refactoring - parameters request' stamp: 'HAW 6/5/2017 19:05:35'!
requestRefactoringParametersHandlingRefactoringExceptions

	self valueHandlingRefactoringExceptions: [ self requestRefactoringParameters ]
	! !

!RefactoringApplier methodsFor: 'exception handling' stamp: 'HAW 6/5/2017 18:47:40'!
handleRefactoringError: aRefactoringError 

	self inform: aRefactoringError messageText.
	self endRequest ! !

!RefactoringApplier methodsFor: 'exception handling' stamp: 'HAW 6/5/2017 18:47:32'!
handleRefactoringWarning: aRefactoringWarning
	
	(self confirm: aRefactoringWarning messageText, ' Continue?')
		ifTrue: [ aRefactoringWarning resume ]
		ifFalse: [ self endRequest]! !

!RefactoringApplier methodsFor: 'exception handling' stamp: 'HAW 5/18/2018 10:52:06'!
valueHandlingRefactoringExceptions: aBlock

	^[aBlock
		on: Warning 
		do: [ :aRefactoringWarning | self handleRefactoringWarning: aRefactoringWarning ]]
		on: Error 
		do: [ :aRefactoringError | self handleRefactoringError: aRefactoringError ]
	! !

!RefactoringApplier methodsFor: 'request information' stamp: 'HAW 6/11/2017 19:22:50'!
request: aLabel
 
	^self request: aLabel initialAnswer: ''
! !

!RefactoringApplier methodsFor: 'request information' stamp: 'HAW 6/5/2017 16:03:04'!
request: aLabel initialAnswer: anAnswer

	^self request: aLabel initialAnswer: anAnswer onCancel: requestExitBlock ! !

!RefactoringApplier methodsFor: 'request information' stamp: 'HAW 6/5/2017 16:03:30'!
request: aLabel initialAnswer: anAnswer onCancel: cancelBlock

	^FillInTheBlankMorph request: aLabel initialAnswer: anAnswer onCancel: cancelBlock ! !

!RefactoringApplier methodsFor: 'refactoring - changes' stamp: 'HAW 6/5/2017 18:06:53'!
showChanges

	self subclassResponsibility 	
	! !

!RefactoringApplier methodsFor: 'evaluating' stamp: 'HAW 6/5/2017 19:05:50'!
value

	requestExitBlock := [ ^self ].
	
	self 
		requestRefactoringParametersHandlingRefactoringExceptions;
		createRefactoringHandlingRefactoringExceptions;
		applyRefactoring;
		showChanges
	
	! !

!RenameInstanceVariableApplier methodsFor: 'refactoring - parameters request' stamp: 'HAW 6/5/2017 16:49:50'!
askNewVariableName
		
	newInstanceVariable := self request: 'Enter new name:' initialAnswer: oldInstanceVariable. 
	newInstanceVariable := newInstanceVariable withBlanksTrimmed ! !

!RenameInstanceVariableApplier methodsFor: 'refactoring - parameters request' stamp: 'HAW 8/30/2017 17:27:08'!
chooseInstanceVariable
		
	classToRefactor 
		chooseDefiningInstanceVariableAlphabeticallyWith: self selectVariableLabel
		thenDo: [ :anOldInstanceVariable | ^oldInstanceVariable := anOldInstanceVariable ].
	self endRequest ! !

!RenameInstanceVariableApplier methodsFor: 'refactoring - parameters request' stamp: 'HAW 6/5/2017 19:05:16'!
requestRefactoringParameters

	self 
		chooseInstanceVariable;
		askNewVariableName! !

!RenameInstanceVariableApplier methodsFor: 'refactoring - parameters request' stamp: 'HAW 8/30/2017 17:27:22'!
selectVariableLabel
	
	^'Select instance variable to rename'! !

!RenameInstanceVariableApplier methodsFor: 'refactoring - creation' stamp: 'HAW 6/5/2017 18:09:13'!
createRefactoring
		
	^RenameInstanceVariable from: oldInstanceVariable to: newInstanceVariable in: classToRefactor.
	! !

!RenameInstanceVariableApplier methodsFor: 'refactoring - changes' stamp: 'HAW 6/5/2017 16:54:45'!
informChangesToBrowser
		
	browser model acceptedContentsChanged! !

!RenameInstanceVariableApplier methodsFor: 'refactoring - changes' stamp: 'HAW 8/30/2017 17:30:22'!
openChangedMethods 

	changes ifNotEmpty: [ self openChangedMethodsWhenChangesNotEmpty ]! !

!RenameInstanceVariableApplier methodsFor: 'refactoring - changes' stamp: 'HAW 8/30/2017 17:30:13'!
openChangedMethodsWhenChangesNotEmpty 

	MessageSetWindow openMessageList: changes label: 'Renamed references' autoSelect: newInstanceVariable ! !

!RenameInstanceVariableApplier methodsFor: 'refactoring - changes' stamp: 'HAW 6/5/2017 18:09:30'!
showChanges

	self 
		informChangesToBrowser;
		openChangedMethods ! !

!RenameInstanceVariableApplier methodsFor: 'initialization' stamp: 'HAW 6/5/2017 16:58:13'!
initializeOn: aBrowserWindow for: aClassToRefactor 
	
	browser := aBrowserWindow.
	classToRefactor := aClassToRefactor ! !

!RenameInstanceVariableApplier class methodsFor: 'instance creation' stamp: 'HAW 6/5/2017 16:57:44'!
on: aBrowserWindow for: aClassToRefactor
	
	^self new initializeOn: aBrowserWindow for: aClassToRefactor 
! !

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

!RenameInstanceVariable class methodsFor: 'instance creation' stamp: 'HAW 5/17/2018 15:25:32'!
from: anOldvariable to: aNewVariable in: aClassToRefactor 
	
	^self new initializeFrom: anOldvariable to: aNewVariable in: aClassToRefactor ! !

!RenameInstanceVariableRewriter methodsFor: 'visiting' stamp: 'HAW 5/17/2018 15:27:54'!
visitInstanceVariableNode: anInstanceVariableNode

	(refactoring shouldRename: anInstanceVariableNode name) ifTrue: [ anInstanceVariableNode name: refactoring newVariable]! !

!RenameInstanceVariableRewriter methodsFor: 'initialization' stamp: 'HAW 5/17/2018 15:27:38'!
initializeFor: aRenameInstanceVariable 
	
	refactoring := aRenameInstanceVariable ! !

!RenameInstanceVariableRewriter class methodsFor: 'instance creation' stamp: 'HAW 5/17/2018 15:27:21'!
for: aRenameInstanceVariable 
	
	^self new initializeFor: aRenameInstanceVariable ! !

!ClassDescription methodsFor: '*XPWorkshop' stamp: 'HAW 9/7/2017 15:41:34'!
chooseDefiningInstanceVariableAlphabeticallyWith: aCaption thenDo: aBlock
	
	^self 
		chooseDefiningInstanceVariableAlphabeticallyWith: aCaption 
		thenDo: aBlock 
		ifNone: [ ^ self inform: 'There are no instance variables defined in ', self name ]! !

!ClassDescription methodsFor: '*XPWorkshop' stamp: 'HAW 9/7/2017 15:40:15'!
chooseDefiningInstanceVariableAlphabeticallyWith: aCaption thenDo: aBlock ifNone: noneBlock
	
	| vars index |
	"Put up a menu of the instance variables in the receiver, presented in alphabetical order, and when the user chooses one, evaluate aBlock with the chosen variable as its parameter."

	vars _ self instVarNames sorted.
	vars isEmpty ifTrue: [^ noneBlock value ].

	index _ (PopUpMenu labelArray: vars lines: #()) startUpWithCaption: aCaption.
	index = 0 ifTrue: [^ self].
	aBlock value: (vars at: index)! !

!Class methodsFor: '*XPWorkshop' stamp: 'HAW 5/15/2018 14:32:30'!
subclass: aSubclassName instanceVariableNames: anInstVars category: aCategory

	^self subclass: aSubclassName instanceVariableNames: anInstVars classVariableNames: '' poolDictionaries: '' category: aCategory ! !

!CompiledMethod methodsFor: '*XPWorkshop' stamp: 'HAW 5/15/2018 14:14:23'!
readsInstVarNamed: anInstVarName

	^self readsField: (self methodClass allInstVarNames indexOf: anInstVarName asString)! !

!CompiledMethod methodsFor: '*XPWorkshop' stamp: 'HAW 5/15/2018 14:10:25'!
sourceCode

	^self getSource! !

!CompiledMethod methodsFor: '*XPWorkshop' stamp: 'HAW 5/15/2018 14:14:49'!
writesInstVarNamed: anInstVarName

	^self writesField: (self methodClass allInstVarNames indexOf: anInstVarName asString)! !

!MethodNode methodsFor: '*XPWorkshop' stamp: 'HAW 5/18/2018 13:15:18'!
generateSource
	
	^String streamContents: [ :stream | self printOn: stream ]! !

!BrowserWindow methodsFor: '*XPWorkshop' stamp: 'HAW 5/18/2018 10:54:40'!
classListMenu
	"Set up the menu to apply to the receiver's class list, honoring the #shifted boolean"

	| aMenu |
	aMenu _ MenuMorph new defaultTarget: self.
	aMenu addList: #(
		('browse full (b)'			browseMethodFull)
		('browse hierarchy (h)'		browseHierarchy)
		('browse protocol (p)'		browseFullProtocol)
		-
		('fileOut'					fileOutClass				''		model)
		-
		('show hierarchy'			hierarchy					''		model)
		('show definition'			editClass					''		model)
		('show comment'			editComment			''		model)
		-
		('rename inst var...'			renameInstVar)
		('inst var refs...'				browseInstVarRefs)
		('inst var defs...'			browseInstVarDefs)
		-
		('class var refs...'			browseClassVarRefs)
		('class vars'					browseClassVariables)
		('class refs (N)'				browseClassRefs)
		-
		('rename class ...'			renameClass				''		model)
		('copy class...'				copyClass				''		model)
		('remove class (x)'			removeClass				''		model)
		-
		('Run tests (t)'		runClassTests 	''	model)
		('more...'					offerShiftedClassListMenu)).
	^ aMenu! !

!BrowserWindow methodsFor: '*XPWorkshop' stamp: 'HAW 6/6/2017 09:47:34'!
renameInstVar
	
	model selectedClassOrMetaClass ifNotNil: [ :aClass |
		(RenameInstanceVariableApplier on: self for: aClass) value ].! !

!TheWorldMenu methodsFor: '*XPWorkshop' stamp: 'HAW 5/17/2018 14:53:43'!
buildWorldMenu
	"Build the menu that is put up when the screen-desktop is clicked on"

	| menu |
	menu _ MenuMorph new defaultTarget: self.
	self colorForDebugging: menu.
	menu addStayUpIcons.
	self fillIn: menu
		from: {
				{ 'Open Tutorial'. { RefactoringWorkshopTutorialWindow . #openTutorial}}.
				{ 'Open Class Browser'. { BrowserWindow. #openBrowser}}.
				nil.
				{ 'Open...'. { self. #openWindow}}.
				{ 'New morph...'. { self. #newMorph}.
					'Offers a variety of ways to create new objects'}.
				{ 'Preferences...'. { self. #preferencesDo}.
					'put up a menu offering many controls over appearance and system preferences.'}.
				{ 'Windows...'. { self. #windowsDo}}.
				{ 'Help...'. { self. #helpDo}.
					'puts up a menu of useful items for updating the system, determining what version you are running, and much else'}.
				nil.
				{ 'Changes...'. { self. #changesDo}}.
				{ 'Debug...'. { self. #debugDo}.
					'a menu of debugging items'}.
				{ 'Restore Display (r)'. { myWorld. #restoreMorphicDisplay}.
					'repaint the screen -- useful for removing unwanted display artifacts, lingering cursors, etc.'}.
				nil.
				{ 'Save'. { Smalltalk . #saveSession}.
					'save the current version of the image on disk'}.
				{ 'Save as...'. { Smalltalk . #saveAs}.
					'save the current version of the image on disk under a new name.'}.
				{ 'Save as New Version'. { Smalltalk . #saveAsNewVersion}.
					'give the current image a new version-stamped name\and save it under that name on disk.\Clear all user preferences and user state (class vars).' withNewLines}.
				{ 'Save and Quit'. { self. #saveAndQuit}.
					'save the image and quit out of Cuis.'}.				
				{ 'Quit'. { self. #quitSession}.
					'quit out of Cuis.'}}.
	^menu! !

!Theme methodsFor: '*XPWorkshop' stamp: 'HAW 5/17/2018 14:58:07'!
debugger

	^(TranslucentColor r: 0.750 g: 0.750 b: 0.750 alpha: 0.930)! !

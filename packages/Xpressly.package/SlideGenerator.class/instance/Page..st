Lexical
Page: paragraphs
	<action: 'Page'>
	^paragraphs isEmpty ifTrue: [ Text new ] ifFalse: [ paragraphs fold: [ :a :b | a , b ] ]
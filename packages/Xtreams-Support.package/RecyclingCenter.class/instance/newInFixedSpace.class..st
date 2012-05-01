recycling
newInFixedSpace: anInteger class: aClass
	| collection |
	(collection := self existing: aClass) == nil ifTrue: [collection := aClass newInFixedSpace: anInteger].
	^collection
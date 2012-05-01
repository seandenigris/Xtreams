instance creation
new

	^self == Cipher
		ifTrue: [ self selectImplementation
				ifNil: [ self error: 'There is no suitable implementation class in current configuration!' ]
				ifNotNil: [ :c | c new ] ]
		ifFalse: [ super new initialize ]
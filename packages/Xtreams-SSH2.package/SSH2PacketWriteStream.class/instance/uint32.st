accessing
uint32

	^uint32 ifNil: [ uint32 := destination interpreting: #long_be ]
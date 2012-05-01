marshaling
uint64

	^uint64 ifNil: [ uint64 := destination interpreting: #longlong_be ]
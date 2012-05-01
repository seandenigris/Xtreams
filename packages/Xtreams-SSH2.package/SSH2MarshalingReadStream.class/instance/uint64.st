marshaling
uint64

	^uint64 ifNil: [ uint64 := source interpreting: #longlong_be ]
marshaling
uint32

	^uint32 ifNil: [ uint32 := source interpreting: #long_be ]
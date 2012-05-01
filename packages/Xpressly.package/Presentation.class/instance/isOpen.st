testing
isOpen
	builder == nil ifTrue: [^false].
	builder window == nil ifTrue: [^false].
	^builder window isOpen
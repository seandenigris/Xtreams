seeking
-- anInteger
	anInteger < 0 ifTrue: [ ^self ++ anInteger negated ].
	[destination -- anInteger * elementSize]
		on: Incomplete do: [:exception | (Incomplete count: exception count / elementSize) raise].
	^anInteger
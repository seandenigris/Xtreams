seeking
++ anInteger

	anInteger < 0 ifTrue: [ ^self -- anInteger negated ].
	[source ++ anInteger * elementSize]
		on: Incomplete do: [:exception | (Incomplete count: exception count / elementSize) raise].
	^anInteger
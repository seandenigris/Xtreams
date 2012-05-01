private-accessing
maybeReceive: expected do: action

	nextMessage := nextMessage ifNil: [ self nextMessage ].
	(expected asSet includes: nextMessage class)
		ifTrue: [ | saved |
			saved := nextMessage.
			nextMessage := nil.
			action value: saved ].
	^nextMessage.
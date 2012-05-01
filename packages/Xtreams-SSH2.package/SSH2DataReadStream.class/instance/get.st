accessing
get

	finished ifTrue: [ Incomplete zero raise ].
	remaining == 0 ifTrue: [
		remaining := channel nextDataIncrement.
		remaining == 0 ifTrue: [ finished := true. Incomplete zero  raise ] ].
	^mutex critical: [ remaining := remaining - 1. source get ]
accessing
read: anInteger into: aSequenceableCollection at: startIndex

	| toRead atIndex |
	finished ifTrue: [ Incomplete zero raise ].
	toRead := anInteger.
	atIndex := startIndex.
	[	remaining == 0 ifTrue: [
			remaining := channel nextDataIncrement.
			remaining == 0 ifTrue: [
				finished := true.
				(Incomplete on: aSequenceableCollection count: anInteger - toRead at: startIndex)  raise ] ].
		mutex critical: [ | accepted |
			accepted := toRead min: remaining.
			source read: accepted into: aSequenceableCollection at: atIndex.
			remaining := remaining - accepted.
			atIndex := atIndex + accepted.
			toRead := toRead - accepted ].
		toRead > 0
	] whileTrue.
	^anInteger
accessing
write: anInteger from: aSequenceableCollection at: startIndex

	| endIndex index |
	endIndex := startIndex + anInteger.
	index := startIndex.
	[	[ index < endIndex ] whileTrue: [
			self put: (aSequenceableCollection at: index) ]
	] on: Incomplete do: [ :ex |
		(Incomplete on: aSequenceableCollection count: index - startIndex at: startIndex) raise ].
	^anInteger
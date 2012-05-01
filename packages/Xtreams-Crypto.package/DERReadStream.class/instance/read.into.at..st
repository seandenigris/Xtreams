accessing
read: anInteger into: aSequenceableCollection at: startIndex

	| endIndex index |
	endIndex := startIndex + anInteger.
	index := startIndex.
	[	[ index < endIndex ] whileTrue: [
			aSequenceableCollection at: index put: self get ]
	] on: Incomplete do: [ :ex |
		(Incomplete on: aSequenceableCollection count: index - startIndex at: startIndex) raise ].
	^anInteger
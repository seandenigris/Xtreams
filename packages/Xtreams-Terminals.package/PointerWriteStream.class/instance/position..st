seeking
position: aPosition
	" Return to a bookmarked position on this stream. "

	aPosition < 0 ifTrue: [Incomplete zero raise].
	aPosition > length ifFalse: [ ^position := aPosition ].
	position := length.
	^(Incomplete count: length) raise
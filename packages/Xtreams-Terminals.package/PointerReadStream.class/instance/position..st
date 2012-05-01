seeking
position: aPosition

	aPosition < 0 ifTrue: [Incomplete zero raise].
	length ifNil: [ ^position := aPosition ].
	aPosition > length ifFalse: [ ^position := aPosition ].
	position := length.
	^(Incomplete count: length) raise
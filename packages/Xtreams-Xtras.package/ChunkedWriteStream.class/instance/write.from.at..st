accessing
write: anInteger from: aSequenceableCollection at: startIndex
	anInteger printOn: meta base: 16.
	meta cr.
	destination write: anInteger from: aSequenceableCollection at: startIndex.
	^anInteger
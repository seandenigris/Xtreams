accessing
insert: anInteger from: aSequenceableCollection at: startIndex
	| shift |
	shift := length - position.
	self resizeTo: length + anInteger.
	OSSystemSupport concreteClass new copyMemoryTo: destination + position + anInteger from: destination + position size: shift.
	self copyFrom: aSequenceableCollection size: anInteger startingAt: startIndex.
	position := position + anInteger.
	^anInteger
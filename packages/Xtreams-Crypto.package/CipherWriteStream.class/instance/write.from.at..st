accessing
write: total from: source at: initialStart

	| requested written start |
	start := initialStart.
	requested := total.
	[	| availableIn availableOut |
		written := requested min: maxInputChunk - unconsumed.
		input replaceFrom: 1 + unconsumed to: written + unconsumed with: source startingAt: start.
		availableIn := written + unconsumed.
		unconsumed := availableIn \\ blockSize.
		availableOut := cipher update: availableIn - unconsumed from: input into: output.
		destination write: availableOut from: output at: 1.
		unconsumed > 0 ifTrue: [ input replaceFrom: 1 to: unconsumed with: input startingAt: availableIn - unconsumed + 1 ].
		start := start + written.
		(requested := requested - written) > 0
	] whileTrue.
	^total
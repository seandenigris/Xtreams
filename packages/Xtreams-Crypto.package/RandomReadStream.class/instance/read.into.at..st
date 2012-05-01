accessing
read: total into: destination at: initialStart

	| start count |
	count := total.
	start := initialStart.
	[	count > 0
	] whileTrue: [ | chunk |
		chunk := source read: (total min: cache size) into: cache.
		destination replaceFrom: start to: start + chunk - 1 with: cache startingAt: 1.
		start := start + chunk.
		count := count - chunk ].
	^total
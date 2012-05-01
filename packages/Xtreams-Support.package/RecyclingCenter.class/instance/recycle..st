recycling
recycle: aCollection
	| queue |
	queue := recycled at: aCollection class ifAbsent: [^self].
	mutex waitIfCurtailedSignal.
	1 to: queue size do: [:index |
		(queue at: index) == nil ifTrue:
			[queue at: index put: aCollection.
			mutex signal.
			^self]].
	mutex signal
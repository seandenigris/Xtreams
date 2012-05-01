recycling
existing: aClass
	| queue collection |
	queue := recycled at: aClass ifAbsent: [^nil].
	mutex waitIfCurtailedSignal.
	1 to: queue size do: [:index |
		collection := queue at: index.
		collection == nil ifFalse:
			[queue at: index put: nil.
			mutex signal.
			^collection]].
	mutex signal.
	^nil
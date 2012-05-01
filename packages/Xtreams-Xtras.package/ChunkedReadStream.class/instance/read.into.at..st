accessing
read: anInteger into: aSequenceableCollection at: startIndex
	| count amount |
	count := 0.

	available isZero ifTrue:
		[sourceAtEnd ifTrue: [Incomplete zero raise].
		available := Number readIntegerFrom: (meta ending: Character cr) rest readStream radix: 16.
		available isZero ifTrue:
			[meta get.
			sourceAtEnd := true.
			Incomplete zero raise]].

	[[amount := (anInteger - count) min: available.
	source read: amount into: aSequenceableCollection at: startIndex.
	count := count + amount.
	available := available - amount.
	count < anInteger] whileTrue:
		[available := Number readIntegerFrom: (meta ending: Character cr) rest readStream radix: 16.
		available isZero ifTrue:
			[meta get.
			sourceAtEnd := true.
			Incomplete zero raise]]]
		on: Incomplete do: [:incomplete |
			available := available - incomplete count.
			(Incomplete on: aSequenceableCollection count: count + incomplete count at: startIndex) raise].
	^anInteger
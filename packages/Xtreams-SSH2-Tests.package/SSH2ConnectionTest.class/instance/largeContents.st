tests
largeContents

	| contents writing i |
	contents := ByteArray new: 200000.
	writing := contents writing.
	i := 0.
	[ writing position < contents size ] whileTrue: [
		i := i + 1 \\ 256.
		10000 timesRepeat: [ writing put: i ] ].
	^contents
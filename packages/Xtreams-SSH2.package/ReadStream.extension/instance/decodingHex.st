transforming
decodingHex

	| hex2Bytes whitespace |
	hex2Bytes := [ :c | ('0123456789abcdef' indexOf: c asLowercase) - 1 ].
	whitespace := '	 \' withCRs.
	^(self transforming: [ :in :out || hi lo |
		[ whitespace includes: (hi := in get) ] whileTrue.
		(hi := hex2Bytes value: hi) < 0 ifTrue: [ Incomplete zero raise ].
		(lo := hex2Bytes value: in get) < 0 ifTrue: [ Incomplete zero raise ].
		out put: (hi bitShift: 4) + lo ]
	)	contentsSpecies: ByteArray;
		yourself
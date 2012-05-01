private - packet processing
incrementPacketNumber

	| next |
	next := (packetNumber longAt: 1 bigEndian: true) + 1.
	next > 16rFFFFFFFF ifTrue: [ next := 0 ].
	packetNumber longAt: 1 put: next bigEndian: true
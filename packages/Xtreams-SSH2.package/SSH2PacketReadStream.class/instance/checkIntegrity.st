private - packet processing
checkIntegrity

	| macReceived macComputed |
	macSize > 0 ifFalse: [^self].
	macReceived := sourcePlain read: macSize.
	macComputed := sourcePackets digest.
	sourcePackets reset.
	macComputed = macReceived ifFalse: [self error: 'Packet integrity check failed']
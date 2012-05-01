private - packet processing
writeMAC

	| mac |
	macSize > 0 ifFalse: [^self].
	mac := destinationPackets digest.
	destinationPlain write: mac
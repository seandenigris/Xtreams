private - packet processing
writeIdentification

	destinationPlain write: Identification; write: #[13 10].
	connection ifNotNil: [ connection announce: (SSH2Identification outgoing: SoftwareVersion) ]
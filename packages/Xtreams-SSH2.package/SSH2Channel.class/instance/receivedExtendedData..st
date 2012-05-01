private-server callbacks
receivedExtendedData: extended

	extended type > extendedDataIn size ifTrue: [ ^self ].
	(extendedDataIn at: extended type) write: extended data
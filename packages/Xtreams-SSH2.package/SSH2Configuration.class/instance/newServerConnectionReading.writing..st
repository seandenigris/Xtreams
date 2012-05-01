services
newServerConnectionReading: reading writing: writing

	^(SSH2ServerConnection in: reading out: writing)
		configuration: self;
		yourself
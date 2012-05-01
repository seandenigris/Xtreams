services
newClientConnectionReading: reading writing: writing

	^(SSH2ClientConnection in: reading out: writing)
		configuration: self;
		yourself
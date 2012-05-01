private - transmitting
transmitProtocolVersion
	self log: ['transmit protocol version: ', ProtocolVersion printString].
	outputMutex critical: [output put: ProtocolVersion; flush]
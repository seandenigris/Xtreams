private - receiving
processProtocolVersion
	"We are sent the clients version, but it's useless to know how much newer they are, so we max out at our own protocol."

	version := input get min: ProtocolVersion.
	self log: ['received protocol version: ', version printString]
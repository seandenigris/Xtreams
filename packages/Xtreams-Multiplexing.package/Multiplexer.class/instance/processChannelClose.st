private - receiving
processChannelClose
	"A channel has been closed."

	| id |
	id := inputUnsignedLong get.
	self log: ['received channel close: #', id printString].
	channelsMutex critical: [
		(channels at: id) closed.
		channels at: id put: nil]
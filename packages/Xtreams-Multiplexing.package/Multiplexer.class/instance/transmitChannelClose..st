private - transmitting
transmitChannelClose: id
	"Tell the remote side we are closing a channel."

	self log: ['transmit channel close: #', id printString].
	outputMutex critical:
		[outputUnsignedLong put: ChannelClose.
		outputUnsignedLong put: id.
		output flush].
	channelsMutex critical: [channels at: id put: nil]
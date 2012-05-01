private - transmitting
transmitChannelMore: id
	"Tell the remote side we want more data for a channel."

	(channelsMutex critical: [channels at: id]) = nil ifTrue: [self error: 'channel already closed'].
	self log: ['transmit channel more: #', id printString].
	outputMutex critical:
		[outputUnsignedLong put: ChannelMore.
		outputUnsignedLong put: id.
		output flush]
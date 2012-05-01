private
openChannelRequest

	^(SSH_MSG_CHANNEL_OPEN id: id)
		windowSize: incomingWindow;
		maxPacketSize: self maxPacketSize
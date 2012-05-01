private
openChannelConfirmationTo: request

	outgoingWindow := request windowSize.
	outgoingPacketMaxSize := request maxPacketSize min: self maxPacketSize.
	otherID := request id.
	^(SSH_MSG_CHANNEL_OPEN_CONFIRMATION id: otherID)
		senderID: id;
		windowSize: incomingWindow;
		maxPacketSize: self maxPacketSize
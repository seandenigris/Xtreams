private
openConfirmed: msg

	otherID := msg senderID.
	outgoingWindow := msg windowSize.
	outgoingPacketMaxSize := msg maxPacketSize min: self maxPacketSize.
private-accessing
sendMessage: message

	self announce: message.
	sendLock critical: [
		message writeOn: outMarshaling.
		out flush ]
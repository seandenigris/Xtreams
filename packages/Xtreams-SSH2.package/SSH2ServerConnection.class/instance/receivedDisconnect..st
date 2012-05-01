private-accessing
receivedDisconnect: msg

	super receivedDisconnect: msg.
	disconnectSync signal
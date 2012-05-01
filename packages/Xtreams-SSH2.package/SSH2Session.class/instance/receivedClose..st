private
receivedClose: msg

	super receivedClose: msg.
	exitStatus hasValue ifFalse: [
		exitStatus exception: (Error new messageText: 'No exit status!') ]
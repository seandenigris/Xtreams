private
closed
	stateLock critical: [
		substreamClosed := true.
		waitingLock signal]
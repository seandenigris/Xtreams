initialize-release
close
	stateLock critical: [
		substreamClosed ifFalse: [
			multiplexer transmitChannelClose: id.
			substreamClosed := true.
			waitingLock signal]]
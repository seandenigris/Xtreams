private
refill: size from: input
	stateLock critical: [
		source writing write: size from: input.
		waitingLock signal]
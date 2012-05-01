accessing
get
	| object |
	stateLock wait.
	[source hasDataToRead] whileFalse:
		[substreamClosed ifTrue:
			[stateLock signal.
			Incomplete zero raise].
		multiplexer transmitChannelMore: id.
		waitingLock excessSignals timesRepeat: [waitingLock wait].
		stateLock signal.
		waitingLock wait.
		stateLock wait].
	object := source get.
	stateLock signal.
	^object
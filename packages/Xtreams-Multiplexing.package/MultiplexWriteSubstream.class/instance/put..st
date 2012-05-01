accessing
put: anObject
	substreamClosed ifTrue: [Incomplete zero raise].
	quota isZero ifTrue: [waitingLock wait].
	substreamClosed ifTrue: [Incomplete zero raise].
	multiplexer transmitChannelData: id put: anObject
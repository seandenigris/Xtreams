initialize-release
on: aDestination multiplexer: aMultiplexer id: anInteger
	self on: aDestination.
	id := anInteger.
	multiplexer := aMultiplexer.
	waitingLock := Semaphore new.
	stateLock := Semaphore forMutualExclusion.
	substreamClosed := false.
	self refill
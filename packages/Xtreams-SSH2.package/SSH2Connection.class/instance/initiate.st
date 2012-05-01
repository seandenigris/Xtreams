initialize-release
initiate

	incoming := SharedQueue new.
	sendLock := Semaphore forMutualExclusion.
	out connection: self; initiate.
	in connection: self; initiate.
	self startReader
Instance Variables
	mutex	<Semaphore> 
	remaining	<SmallInteger> tracks bytes left in the incoming window
	channel	<SSH2Channel> channel that I belong to
	finished	<Boolean> flags channel that has been closed


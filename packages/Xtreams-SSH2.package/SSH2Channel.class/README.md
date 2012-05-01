Instance Variables
	id	<SmallInteger> our channel id
	otherID	<SmallInteger> channel id assigned by the other side
	service	<SSH2CHANNELService> 
	incoming	<SharedQueue of: SSH2ChannelActionMessage> incoming message queue
	closing	<Boolean> 
	outgoingWindow	<SmallInteger> current outgoing window size
	incomingWindow	<SmallInteger> current incoming window size
	outgoingPacketMaxSize	<SmallInteger> negotiated maximum packet size
	dataOut	<ElasticBuffer> buffers outgoing data
	dataIn	<ElasticBuffer> buffers incoming data
	dataInWriting	<BufferWriteStream> write stream on dataIn
	dataInReading	<SSH2DataReadStream> read stream on dataIn
	dataInSync	<Semaphore> 
	dataOutIncrements	<SharedQueue of: SmallInteger> tracks outgoing window adjustments
	nextMessage	<SSH2ChannelActionMessage> caches unconsumed message (see maybeReceive:)
	extendedDataIn	<Array of: WriteStream> maps extended data types (stderr = 1) to streams to write it into

Shared Variables
	WindowIncrementThreshold	<SmallInteger> threshold at which we'll adjust the incoming window to let in more data (in bytes)
	WindowMax	<SmallInteger> maximum window size


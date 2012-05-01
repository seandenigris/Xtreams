Instance Variables
	in	<SSH2PacketReadStream> 
	out	<SSH2PacketWriteStream> 
	socket	<SocketAccessor> the underlying socket (if present)
	sendLock	<Semaphore> mutex protecting the outgoing stream
	outMarshaling	<SSH2MarshalingWriteStream> caches out wrapped in marshaling stream
	incoming	<SharedQueue of: SSH2Message> queue of incoming messages
	session_id	<ByteArray> computed session id
	reader	<Process> provides for the incoming queue
	configuration	<SSH2Configuration> 
	host_key	<SSH2HostKey> selected host key of the server
	kex	<SSH2KeyExchange> 
	service	<SSH2CHANNELService> 
	queues	<Dictionary key: String value: (SharedQueue of: SSH2Tunnel)> tunnel queues allowing the receiving side to rendezvous with interested senders
	nextMessage	<SSH2Message> caches unconsumed message (see maybeReceive:)


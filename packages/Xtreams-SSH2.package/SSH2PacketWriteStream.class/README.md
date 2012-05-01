Implements the writing end of SSH2 Transport protocol. It buffers chunks of written content (optionally compressing it) and outputs each chunk in an encrypted packet transparently or when flushed. Each chunk optionally includes a mac for integrity checking

Instance Variables
	destinationPlain	<ReadStream> the underlying destination
	destinationPackets	<ReadStream> the underlying destination encrypted and hmac-ed
	destinationPayload	<ReadStream> destinationPackets stitched into a continouts payload stream
	buffer	<ElasticBuffer> buffer for the currently active chunk
	random	<ReadStream> stream of cryptographically secure random bytes
	macSize	<SmallInteger> size of the mac if integrity checking, 0 otherwise
	blockSize	<SmallInteger> block size of active cipher, or 8, the minimal block size
	packetNumber	<InterpretedBytes size: 4> number of current packet encoded as uint32
	uint32	<InterpretedReadStream> helps to read uint32 from current source
	connection	<SSH2Connection> 
	payloadSize	<SmallInteger> 

Shared Variables
	Identification	<ByteArray> encoded identification for this implementation
	IdentificationComment	<String> optional identification comment (currently empty)
	SoftwareVersion	<String> name and version of this implementation


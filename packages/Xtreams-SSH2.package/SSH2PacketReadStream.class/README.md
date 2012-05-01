Implements the reading end of SSH2 Transport protocol. It reads the packets, decrypts them, optionally computes a mac for integrity checking, then stitches the payload into a continous stream of content that is optionally compressed.

Instance Variables
	sourcePlain	<ReadStream> the original source
	sourcePackets	<ReadStream> the original source encrypted and hmac-ed
	sourcePayload	<ReadStream> continous source of payload stitched from sourcePackets
	macSize	<SmallInteger> size of the mac if integrity checking, 0 otherwise
	packetNumber	<InterpretedBytes size: 4> number of current packet encoded as uint32
	packetSize	<SmallInteger> size of the current packet
	paddingSize	<SmallInteger> size of the padding of the current packet
	uint32	<InterpretedReadStream> helps to read uint32 from current source
	identification	<ByteArray> the full id string bytes as sent
	peerVersion	<String> the software-version part of identification
	peerComment	<String> the comment part of identification
	connection	<SSH2Connection>


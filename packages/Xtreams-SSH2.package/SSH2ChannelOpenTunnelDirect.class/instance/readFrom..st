accessing
readFrom: stream

	destinationAddress := stream getStringEncoding: #ascii.
	destinationPort := stream getUint32.
	originatorAddress := stream getStringEncoding: #ascii.
	originatorPort := stream getUint32
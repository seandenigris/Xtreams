accessing
readFrom: stream

	connectedAddress := stream getStringEncoding: #ascii.
	connectedPort := stream getUint32.
	originatorAddress := stream getStringEncoding: #ascii.
	originatorPort := stream getUint32
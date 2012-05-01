accessing
readFrom: stream

	term := stream getStringEncoding: #ascii.
	columns := stream getUint32.
	rows := stream getUint32.
	width := stream getUint32.
	height := stream getUint32.
	modes := stream getString
accessing
readFrom: stream

	width := stream getUint32.
	height := stream getUint32.
	pixelWidth := stream getUint32.
	pixelHeight := stream getUint32.
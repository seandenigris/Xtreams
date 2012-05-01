accessing
readFrom: stream

	super readFrom: stream.
	continue := stream getNameList.
	partialSuccess := stream getBoolean.
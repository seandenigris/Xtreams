accessing
readFrom: stream

	super readFrom: stream.
	id := stream getUint32.
	size := stream getUint32.
	(stream channelFor: id ifAbsent: [ stream ++ size. ^self ]) readData: size from: stream.
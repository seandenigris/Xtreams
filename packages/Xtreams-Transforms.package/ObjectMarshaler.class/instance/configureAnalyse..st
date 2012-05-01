configuration
configureAnalyse: reading
	"Negotiate this marshaler on the reading stream and return true if the stream should be big-endian."

	(reading read: version size) = version ifFalse: [self error: 'incompatible marshalers'].
	^reading get = true coerceToCInteger
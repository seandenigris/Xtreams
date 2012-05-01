configuration
configureMarshal: writing
	"Negotiate this marshaler on the writing stream and return true if the stream should be big-endian."

	writing
		write: version;
		put: InterpretedBytes isBigEndian coerceToCInteger;
		flush.
	^InterpretedBytes isBigEndian
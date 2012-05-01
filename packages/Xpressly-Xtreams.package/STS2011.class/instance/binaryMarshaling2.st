10 binary
binaryMarshaling2
	"Notes: space efficiency for network and disk"

	<slide: 2.2 title: 'Marshaling'>
"	= ObjectMarshaler =
		Separate from the Read/Write streams.
		Pluggable marshaling strategy, for different protocols
		Uses Pragmas to allow extensions with
		   a computed hash to detect different
		   versions.

	= Analysis =
		Read without instantiating objects to
		   diagnose a stream.
		
"
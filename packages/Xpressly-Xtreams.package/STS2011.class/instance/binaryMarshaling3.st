10 binary
binaryMarshaling3
	<slide: 2.3 title: 'Marshaling'>
	output := ByteArray new writing marshaling.
	output put: 100 asValue.

	output conclusion = 
	#[83 84 83 84 20 4 21 199 91 7 32 29 82
	   111 111 116 46 83 109 97 108 108 116
	   97 108 107 46 85 73 46 86 97 108 117
	   101 72 111 108 100 101 114 0 1 28 22
	   100]
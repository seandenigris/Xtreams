Unmarshals objects from binary source, previously marshaled using the same ObjectMarshaler. The bytes must start with marshaler version ID.

Instance Variables
	marshaler	<ObjectMarshaler> performs marshaling of object bodies
	objects	<Array> retains unmarshaled objects for resolution of backward references (to preserve identity)
	longs	<InterpretedReadStream> (internal) for reading of longs
	longlongs	<InterpretedReadStream> (internal) for reading of longlongs
	floats	<InterpretedReadStream> (internal) for reading of floats
	doubles	<InterpretedReadStream> (internal) for reading of doubles
	nothing	<Object> (internal) an object used to occupy empty slots in objects (since nil is potentially valid content)

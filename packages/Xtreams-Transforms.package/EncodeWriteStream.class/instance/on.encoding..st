initialize-release
on: aSource encoding: anEncoding

	super on: aSource.
	encoder := Encoder for: anEncoding.
	buffer := RingBuffer new: DefaultBufferSize class: ByteArray.
	bufferReading := buffer reading.
	bufferWriting := buffer writing.
	self setLineEndAuto
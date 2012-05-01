initialize-release
setUp

	buffer := RingBuffer on: (ByteArray new: 8192).
	input := buffer reading.
	output := buffer writing.
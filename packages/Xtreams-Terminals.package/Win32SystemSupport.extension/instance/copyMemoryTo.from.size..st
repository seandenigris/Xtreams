procedures
copyMemoryTo: destination from: source size: length
	self RtlMoveMemory: destination with: source with: length
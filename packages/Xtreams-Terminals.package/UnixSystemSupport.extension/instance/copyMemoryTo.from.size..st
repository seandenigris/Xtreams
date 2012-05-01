procedures
copyMemoryTo: destination from: source size: length
	self memmove: destination with: source with: length
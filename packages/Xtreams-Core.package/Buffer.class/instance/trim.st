compressing
trim
	"Reset the buffer to initial state preserving any unread content."
	cache := cache copyFrom: readPosition + 1 to: writePosition.
	readPosition := 0.
	dataLength := writePosition := cache size
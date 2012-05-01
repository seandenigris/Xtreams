compressing
reset
	"Reset the buffer to initial state leaving the cache at its current size. Usefult when using the buffer as a fixed size buffer."
	readPosition := writePosition := dataLength := 0
initialize-release
setUp

	"Use #phonyPair to make sure we're testing TCP sockets on Unix."
	sockets := SocketAccessor phonyPair.
	input := sockets first reading.
	output := sockets last writing.
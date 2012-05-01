private
bytesForRead

	"Ideally we'd ask for the fileSize and subtract that from our position, but calling #fileSize is a slow primitive"
	^cache size
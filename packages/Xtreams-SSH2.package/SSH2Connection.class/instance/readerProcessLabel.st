private-accessing
readerProcessLabel

	| ws |
	ws := String new writeStream.
	ws nextPutAll: 'SSH2 Reader '.
	in getPeer printBytesOn: ws.
	^ws contents
accessing
dispatch: connection

	connection receivedDisconnect: self. 
	"end the reader loop"
	^false
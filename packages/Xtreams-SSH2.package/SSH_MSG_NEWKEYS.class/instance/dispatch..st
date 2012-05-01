accessing
dispatch: connection

	super dispatch: connection.
	"We need to end the reader loop now so that it doesn't interfere with the cipher changes"
	^false
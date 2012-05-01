accessing
readFrom: stream

	super readFrom: stream.
	name := stream getStringEncoding: #ascii.
	wantReply := stream getBoolean.
	"In theory this part is variable but the only two requests defined have the same structure."
	address := stream getStringEncoding: #ascii.
	port := stream getUint32
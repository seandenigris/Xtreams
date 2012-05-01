accessing
dispatch: connection
"
	^<Boolean> should the read-loop continue? otherwise it exits and the reader process terminates
"
	connection service forward: address port: port type: name respond: wantReply.
	^true
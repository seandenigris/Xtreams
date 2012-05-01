accessing
dispatch: connection
"
	^<Boolean> should the read-loop continue? otherwise it exits and the reader process terminates
"
	request newChannel: self for: connection service.
	^true
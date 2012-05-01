accessing
dispatch: connection
"
	^<Boolean> should the read-loop continue? otherwise it exits and the reader process terminates
"
	request dispatch: (connection service channelFor: self) respond: wantReply.
	^true
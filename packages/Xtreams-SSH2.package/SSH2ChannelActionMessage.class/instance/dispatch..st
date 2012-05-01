private
dispatch: connection
"
	^<Boolean> should the read-loop continue? otherwise it exits and the reader process terminates
"
	(connection service channelFor: self) queueMessage: self.
	^true
initialize-release
close

	closing ifTrue: [^self].
	closing := true.
	service send: (SSH_MSG_CHANNEL_CLOSE id: otherID).
	[ self nextMessage finishClose ] whileFalse.
	self deregister
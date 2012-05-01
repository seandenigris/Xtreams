private
nextDataIncrement

	| msg |
	(closing not and: [ incomingWindow < WindowIncrementThreshold ]) ifTrue: [
		self send: ((SSH_MSG_CHANNEL_WINDOW_ADJUST id: otherID) increment: WindowMax - incomingWindow).
		incomingWindow := WindowMax ].
	[ (msg := self nextMessage) processNonData: self ] whileTrue.
	incomingWindow := incomingWindow - msg size.
	^msg size
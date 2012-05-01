private
send: message

	closing ifTrue: [^self].
	service send: message
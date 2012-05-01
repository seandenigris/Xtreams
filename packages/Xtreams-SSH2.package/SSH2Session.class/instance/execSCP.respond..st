private-server callbacks
execSCP: command respond: shouldRespond

	| input options list letters |
	input := command reading.
	options := Set new.
	(input ending: $-) -= 0. "Skip to first dash"
	"this currently doesn't work: options := ((input ending: '--') selecting: [ :c | c isAlphabetic ]) rest."
	[ (letters := ((input ending: $-) selecting: [ :c | c isAlphabetic ]) rest) isEmpty ] whileFalse: [ options addAll: letters ].
	list := ((input ending: $ ) slicing collect: [ :s | s rest ]) select: [ :e | e notEmpty ].
	"scp [-p] [-r] -t -- <target path>"
	(options includes: $t) ifTrue: [
		service scpFileReceiver
			ifNil: [ shouldRespond ifTrue: [	 self send: (SSH_MSG_CHANNEL_FAILURE id: otherID) ] ]
			ifNotNil: [ :receiver |
				shouldRespond ifTrue: [ self send: (SSH_MSG_CHANNEL_SUCCESS id: otherID) ].
				(SCP session: self) get: list first using: receiver; close ].
		^self ].
	"scp [-p] [-r] -f -- <source path>"
	(options includes: $f) ifTrue: [ | scp |
		service scpFileSender
			ifNil: [ shouldRespond ifTrue: [	 self send: (SSH_MSG_CHANNEL_FAILURE id: otherID) ] ]
			ifNotNil: [ :sender |
				shouldRespond ifTrue: [ self send: (SSH_MSG_CHANNEL_SUCCESS id: otherID) ].
				scp := SCP session: self.
				[ sender cull: scp cull: list ] ensure: [ scp close ] ].
		^self ]
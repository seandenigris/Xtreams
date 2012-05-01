private-server
forward: address port: port type: name respond: wantReply

	self isClient ifTrue: [ "Clients SHOULD reject these requests."
		wantReply ifTrue: [ self send: SSH_MSG_REQUEST_FAILURE new ].
		^self ].
	name = 'tcpip-forward' ifTrue: [
		forwards add: address.
		wantReply ifTrue: [ self send: SSH_MSG_REQUEST_SUCCESS new ].
		^self ].
	name = 'cancel-tcpip-forward' ifTrue: [ | success |
		success := (forwards remove: address ifAbsent: [ nil ]) notNil.
		wantReply ifTrue: [
			self send: (success
				ifTrue: [ SSH_MSG_REQUEST_SUCCESS new ]
				ifFalse: [ SSH_MSG_REQUEST_FAILURE new ])].
		^self ].
	wantReply ifTrue: [ self send: SSH_MSG_REQUEST_FAILURE new ]
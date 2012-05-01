api
accept

	| kexinit1 kexinit2 request |
	self initiate.
	self sendMessage: (kexinit1 := SSH_MSG_KEXINIT from: self configuration).
	kexinit2 := self receive: SSH_MSG_KEXINIT.
	self setupKeyExchangeClient: kexinit2 server: kexinit1. 
	host_key := self configuration keys hostKeyFor: host_key.
	kex doServerExchange.
	self activateKeysOnOutgoing.
	self receive: SSH_MSG_NEWKEYS.
	self activateKeysOnIncoming.

	request := self receive: SSH_MSG_SERVICE_REQUEST.
	(self configuration services includes: request service) ifFalse: [
		 self sendMessage: (
			SSH_MSG_DISCONNECT SERVICE_NOT_AVAILABLE description: 'Service ', request service, ' is not available.').
		^self release ].
	service := (SSH2Service allSubclasses detect: [ :class | class serviceID = request service ]) connection: self.
	service accept
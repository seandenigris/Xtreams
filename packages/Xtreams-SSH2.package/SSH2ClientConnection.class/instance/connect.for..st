api
connect: aUser for: aService

	| kexinit1 kexinit2 |
	self initiate.
	self sendMessage: (kexinit1 := SSH_MSG_KEXINIT from: self configuration).
	kexinit2 := self receive: SSH_MSG_KEXINIT.
	self setupKeyExchangeClient: kexinit1 server: kexinit2.
	kex doClientExchange.
	self activateKeysOnOutgoing.
	self receive: SSH_MSG_NEWKEYS.
	self activateKeysOnIncoming.

	service := aService connection: self.
	aUser ifNil: [ ^service connect ].
	(SSH2USERAUTHService connection: self)
		connect;
		authenticate: aUser for: aService serviceID
accessing
newChannel: msg for: service

	| tunnel queue |
	service isClient ifTrue: [ "Clients SHOULD reject direct tunnel requests."
		service send: (SSH_MSG_CHANNEL_OPEN_FAILURE ADMINISTRATIVELY_PROHIBITED id: msg id).
		^self].
	queue := service queueAt: destinationAddress port: destinationPort.
	queue ifNil: [ service send: (SSH_MSG_CHANNEL_OPEN_FAILURE CONNECT_FAILED id: msg id). ^self ].
	tunnel := SSH2Tunnel service: service.
	tunnel host: destinationAddress port: destinationPort;
		register.
	service send: (tunnel openChannelConfirmationTo: msg).
	queue nextPut: tunnel.
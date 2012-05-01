accessing
newChannel: msg for: service

	| tunnel queue |
	service isClient ifFalse: [ "Clients SHOULD reject forwarding requests so they should never see this."
		service send: (SSH_MSG_CHANNEL_OPEN_FAILURE ADMINISTRATIVELY_PROHIBITED id: msg id).
		^self].
	queue := service queueAt: connectedAddress port: connectedPort.
	queue ifNil: [ service send: (SSH_MSG_CHANNEL_OPEN_FAILURE CONNECT_FAILED id: msg id). ^self ].
	tunnel := SSH2Tunnel service: service.
	tunnel host: connectedAddress port: connectedPort;
		register.
	service send: (tunnel openChannelConfirmationTo: msg).
	queue nextPut: tunnel.
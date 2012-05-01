api
tunnelTo: host port: port
"This can be used to establish a tunnel, which will be forwarded by the server to the address host:port.
	^<SSH2Tunnel>
"
	| tunnel confirmation |
	port isZero ifTrue: [ self error: 'Auto-assigned ports not supported!' ].
	tunnel := SSH2Tunnel service: service.
	tunnel host: host port: port; yourself.
	tunnel register.
	self sendMessage: (tunnel openChannelRequest: self isClient).
	self maybeReceive: SSH_MSG_CHANNEL_OPEN_FAILURE do: [ :failure |
		tunnel deregister.
		^self error: failure description ].
	confirmation := self receive: SSH_MSG_CHANNEL_OPEN_CONFIRMATION.
	tunnel openConfirmed: confirmation.
	^tunnel
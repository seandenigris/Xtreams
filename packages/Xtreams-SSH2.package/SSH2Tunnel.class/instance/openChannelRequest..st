private
openChannelRequest: direct

	| request |
	request := super openChannelRequest.
	^direct
		ifTrue: [ request directTunnelTo: host port: port ]
		ifFalse: [ request forwardedTunnelTo: host port: port ]
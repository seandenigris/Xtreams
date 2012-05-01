api
tunnelTo: host port: port
"This can be used to establish a tunnel back to the client, provided the client explicitly requested that with tcpip-forward request.
	^<SSH2Tunnel>
"
	(service hasForward: host) ifFalse: [ self error: 'Forward for this tunnel was not requested!' ].
	^super tunnelTo: host port: port
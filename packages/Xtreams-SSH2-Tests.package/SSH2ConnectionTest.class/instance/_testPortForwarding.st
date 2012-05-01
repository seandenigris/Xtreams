tests
_testPortForwarding

	| localAddress remoteAddress responder response2 response1 sync |
	sync := Semaphore new.
	localAddress := IPSocketAddress hostName: 'localhost' port: 3333.
	remoteAddress := IPSocketAddress hostName: 'localhost' port: 4444.
	responder := [ | socket |
		socket := SocketAccessor family: SocketAccessor AF_INET type: SocketAccessor SOCK_STREAM.
		[ socket soReuseAddr: true; bindTo: remoteAddress ] ifCurtailed: [ socket close ].
		socket listenFor: 1.
		socket := [ socket accept ] ensure: [ socket close ].
		[ response2 := socket reading get. socket writing put: 2 ] ensure: [ socket close ].
		sync signal.
	] fork.

	[ self client: [ :client || service channel socket |
		service := client connect: User.
		socket := SocketAccessor family: SocketAccessor AF_INET type: SocketAccessor SOCK_STREAM.
		[ socket soReuseAddr: true; bindTo: localAddress ] ifCurtailed: [ socket close ].
		socket listenFor: 1.
		channel := service forward: socket to: remoteAddress hostName port: remoteAddress portNumber.
		socket := SocketAccessor newTCPclientToHost: localAddress hostName port: localAddress portNumber.
		[ socket writing put: 1. response1 := socket reading get ] ensure: [ socket close ].
		channel close.
		client close
	]
	server: [ :server || timer |
		server accept.
		timer := Timer after: 5 seconds signal: sync.
		[ sync wait. server close ] ensure: [ timer stop ]
	]
	timeout: nil
	] ensure: [ responder terminate ].
	self assert: response1 = 2.
	self assert: response2 = 1.
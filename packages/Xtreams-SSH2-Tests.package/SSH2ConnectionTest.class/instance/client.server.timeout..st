tests
client: client server: server timeout: duration

	| sockets serverProcess serverError serverFinished clientFinished clientProcess clientError sync timer timeout |
	debugging ifFalse: [ timeout := duration ifNil: [ 5 seconds ] ].
	sockets := SocketAccessor phonyPair.
	serverFinished := false.
	clientFinished := false.
	sync := Semaphore new.
	serverProcess := [
			[	[	| connection configuration |
					configuration := SSH2Configuration new keys: keys. 
					connection := configuration newServerConnectionOn: sockets last.
					Log cr; write: connection readerProcessLabel.
					connection when: SSH2Announcement do: [ :m | Log cr; write: 'S: '; print: m; flush ].
					server value: connection.
					configuration release.
				] on: Error do: [ :ex | debugging ifTrue: [ ex halt ]. serverError := ex ].
				serverFinished := true.
			] ensure: [ sync signal ]
		] newProcess.
	serverProcess name: testSelector, ' (server)'.
	clientProcess := [
			[	[	| connection configuration |
					configuration := SSH2Configuration new keys: keys. 
					connection := configuration newClientConnectionOn: sockets first.
					Log cr; write: connection readerProcessLabel.
					connection when: SSH2Announcement do: [ :m | Log cr; write: 'C: '; print: m; flush ].
					client value: connection.
					configuration release.
				] on: Error do: [ :ex | debugging ifTrue: [ ex halt ]. clientError := ex ].
				clientFinished := true.
			] ensure: [ sync signal ]
		] newProcess.
	clientProcess name: testSelector, ' (client)'.
	[	serverProcess resume.
		clientProcess resume.
		timeout ifNotNil: [ timer := Timer after: timeout do: [ sync signal; signal ] ].
		sync wait; wait.
		self assert: serverFinished.
		self assert: serverError isNil.
		self assert: clientFinished.
		self assert: clientError isNil.
	] ensure: [ timer ifNotNil: [ timer stop ].
		clientProcess terminate. serverProcess terminate.
		sockets do: #close ].
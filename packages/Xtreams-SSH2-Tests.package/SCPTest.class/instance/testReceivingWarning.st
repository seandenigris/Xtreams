tests
testReceivingWarning

	| buffer msg contents confirmation |
	buffer := Buffer on: ByteArray new.
	(buffer writing encoding: #ascii)
		setLineEndLF;
		put: 1 asCharacter; write: 'warning!'; cr;
		write: 'C0644 5 test'; cr;
		write: 'hello'; put: 0 asCharacter.
	confirmation := ByteArray new writing.
	[	(SCP new in: buffer reading out: confirmation)
			get: '.' using: [ :path :name :source :size :mode  |
				self assert: path asString = '.'.
				self assert: name = 'test'.
				self assert: size = 5.
				self assert: mode = '0644'.
				contents := (source encoding: #ascii) rest ];
			close
	] on: SCPWarning do: [ :ex | msg := ex errorString. ex resume ].
	self assert: msg = 'warning!'.
	self assert: contents = 'hello'.
	confirmation := confirmation close; terminal.
	self assert: confirmation size = 3
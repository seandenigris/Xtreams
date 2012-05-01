tests
testReceivingDirectory

	| buffer result confirmation |
	buffer := Buffer on: ByteArray new.
	(buffer writing encoding: #ascii)
		setLineEndLF;
		write: 'D0755 0 testdir'; cr;
		write: 'C0644 5 test'; cr;
		write: 'hello';
		write: 0 asCharacter;
		write: 'E'; cr.
	result := OrderedCollection new.
	confirmation := ByteArray new writing.
	(SCP new in: buffer reading out: confirmation)
		get: '' using: [ :path :name :source :size |
			result add: (Array with: path with: name with: source notNil with: size).
			path, '-'  ];
		close.
	self assert: result asArray = #(('' 'testdir' false 0) ('-' 'test' true 5) ('-' nil false nil)).
	confirmation := confirmation close; terminal.
	self assert: confirmation size = 5
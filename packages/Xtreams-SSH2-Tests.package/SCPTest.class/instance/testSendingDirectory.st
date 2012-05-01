tests
testSendingDirectory

	| buffer result content confirmation |
	buffer := Buffer on: ByteArray new.
	content := (ByteArray new writing encoding: #ascii) write: 'hello'; close; terminal.
	confirmation :=  #[0 0 0 0] reading.
	(SCP new in: confirmation out: buffer writing)
		startDirectory: 'testdir';
		file: 'test' source: content reading size: 5;
		endDirectory;
		close.
	result := (buffer reading encoding: #ascii) rest.
	self assert: result = ('D0755 0 testdir\C0644 5 test\hello@E\' withCRs replaceAll: $@ with: 0 asCharacter).
	self assert: confirmation rest isEmpty
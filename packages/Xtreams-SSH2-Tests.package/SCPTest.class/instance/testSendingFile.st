tests
testSendingFile

	| buffer result content confirmation |
	buffer := Buffer on: ByteArray new.
	content := (ByteArray new writing encoding: #ascii) write: 'hello'; close; terminal.
	confirmation := #[0 0] reading.
	(SCP new in: confirmation out: buffer writing)
		file: 'test' source: content reading size: 5;
		close.
	result := (buffer reading encoding: #ascii) rest.
	self assert: result = ('C0644 5 test\hello@' withCRs replaceAll: $@ with: 0 asCharacter).
	self assert: confirmation rest isEmpty
tests - compression
testWriteDeflateReadInflate

	| content result |
	content := 'Hello World!'.
	(self output compressing encoding: #ascii)
		write: content;
		close.
	result := (self input compressing encoding: #ascii) read: content size.
	self assert: content = result.
configuration
configureMarshal: writing
	encoding := #utf8.
	(writing encoding: #ascii)
		setLineEndLF;
		write: encoding;
		cr;
		flush.
	^false
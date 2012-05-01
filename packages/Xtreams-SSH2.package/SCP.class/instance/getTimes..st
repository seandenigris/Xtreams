receiving
getTimes: msg

	| mtime atime |
	mtime := Number readFrom: (msg ending: $ ) rest readStream.
	msg read: 2. "should be digit zero and space"
	atime := Number readFrom: (msg ending: $ ) rest readStream.
	msg rest. "should be digit zero"
	self confirm.
	^Array
		with: (TimeZone default universalToLocal: (Timestamp fromSeconds: Epoch + mtime)) "mtime"
		with: (TimeZone default universalToLocal: (Timestamp fromSeconds: Epoch + atime)) "atime"
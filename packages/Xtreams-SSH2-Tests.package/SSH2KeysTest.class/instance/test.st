tests
test

	| keys |
	keys := self class sampleKeys.
	[	(OS.OSHandle currentOS = #win32) ifFalse: [ self runTestWith: keys class: SSH2DSSKey ].
		self runTestWith: keys class: SSH2RSAKey.
	] ensure: [ keys release ]
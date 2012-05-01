initialize-release
deregister

	| saved |
	service deregister: self.
	saved := dataOut.
	dataOut := nil.
	saved == nil ifFalse: [ saved recycle ].
	saved := dataIn.
	dataIn := nil.
	saved == nil ifFalse: [ saved recycle ].
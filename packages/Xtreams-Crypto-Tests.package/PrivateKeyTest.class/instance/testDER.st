tests
testDER

	| sequence der result |
	sequence := self class example2048RSAKeyElements.
	der := (DERWriteStream on: ByteArray new writing) put: sequence; close; terminal.
	result := (DERReadStream on: der reading) get asArray.
	self assert: sequence = result
tests
runTestWith: keys class: keyClass
"
	| keys |
	keys := SSH2Keys fromUser: '$(HOME)' asLogicalFileSpecification asFilename.
	[	self new runTestWith: keys class: SSH2RSAKey
	] ensure: [ keys release ]
"
	| bytes key signature |
	bytes := ByteArray withAll: (0 to: 50).
	key := keys hostKeyFor: keyClass typeID.
	self assert: key typeID = keyClass typeID.
	signature := keys sign: bytes with: key.
	self assert: (SSH2Keys new verify: signature of: bytes with: key).
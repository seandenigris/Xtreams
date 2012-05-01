instance creation
sampleDSAKeys512
"
	self sampleDSAKeys512
"
	| pub pri |
	pub := self sampleDSAKey512.
	pri := ((pub allButFirst: 1) copyWith: pub first) copyWith: "x" 508844795062704364744102192027308537776536303181.
	^(PublicKey algorithm: #DSA elements: pub) -> (PrivateKey algorithm: #DSA elements: pri)
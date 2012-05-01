instance creation
fromUser: homeDirectory
"
	(self fromUser: '$(HOME)' asLogicalFileSpecification asFilename) release
"
	| keys |
	keys := self new.
	((homeDirectory / '.ssh' filesMatching: 'id_*') reject: [ :fn | '*.pub' match: fn ]) do: [ :fn || pub pri |
		pri := fn asFilename reading encoding: #ascii.
		pri := [ SSH2HostKey readPrivateKeyFrom: pri ] ensure: [ pri close ].
		pub := (fn, '.pub') asFilename reading encoding: #ascii.
		(pub ending: $ ) -= 0.
		pub := [ SSH2HostKey readFrom: pub encodingBase64 ssh2Marshaling ] ensure: [ pub close ].
		pub := keys publicKeyFrom: pub.
		keys addPublic: pub private: pri ].
	^keys
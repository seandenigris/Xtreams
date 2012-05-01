accessing
verify: signature of: bytes with: key

	| digest |
	digest := (bytes reading hashing: 'SHA1') -= 0; close; digest.
	key class = SSH2DSSKey ifTrue: [ ^self dssVerify: signature of: digest with: key ].
	key class = SSH2RSAKey ifTrue: [ ^self rsaVerify: signature of: digest with: key ].
	self error: 'Unsupported key type'
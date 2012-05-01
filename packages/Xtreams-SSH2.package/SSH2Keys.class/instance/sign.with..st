accessing
sign: bytes with: key

	| digest |
	digest := (bytes reading hashing: 'SHA1') -= 0; close; digest.
	key class = SSH2DSSKey ifTrue: [ ^self dssSign: digest with: key ].
	key class = SSH2RSAKey ifTrue: [ ^self rsaSign: digest with: key ].
	self error: 'Unsupported key type'
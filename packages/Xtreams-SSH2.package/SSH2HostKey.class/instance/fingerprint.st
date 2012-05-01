accessing
fingerprint
"RFC 4716, section 4, Public key fingerprints"

	| fingerprint first i2c |
	fingerprint := (self bytes reading hashing: 'md5') -= 0; close; digest.
	first := true.
	i2c := [ :i | '0123456789abcdef' at: i + 1 ].
	^(fingerprint reading transforming: [ :in :out || byte |
		byte := in get.
		first ifTrue: [ first := false ] ifFalse: [ out put: $: ].
		out put: (i2c value: (byte bitShift: -4)).
		out put: (i2c value: (byte bitAnd: 15)) ]
	)	contentsSpecies: String;
		rest
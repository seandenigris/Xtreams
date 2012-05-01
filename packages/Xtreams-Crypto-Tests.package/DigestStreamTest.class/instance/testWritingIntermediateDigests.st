tests
testWritingIntermediateDigests

	| hash contents digest |
	hash := nil writing hashing: 'md5'.
	[	contents := (ByteArray new writing encoding: #ascii) write: 'Message in the bottle!'; close; terminal.
		hash write: contents.
		digest := hash digest.
		self assert: digest =  #[65 87 107 237 233 250 154 151 62 208 45 46 45 66 229 159].
		hash write: contents.
		digest := hash close; digest.
		self assert: digest =  #[142 176 107 87 230 135 72 163 212 61 86 84 158 79 12 141].
		self assert: digest =  hash digest.
	] ensure: [ hash close ]
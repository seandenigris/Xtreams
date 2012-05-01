tests
testCopying

	| hash contents digest hash2 |
	hash := Hash new.
	[	hash algorithm: 'md5'.
		contents := 'Message in the bottle!'.
		hash updateFrom: contents.
		hash2 := hash copy.
		hash updateFrom: contents.
		digest := hash finish.
		self assert: digest =  #[142 176 107 87 230 135 72 163 212 61 86 84 158 79 12 141].
		hash2 updateFrom: contents reverse.
		digest := hash2 finish.
		self assert: digest = #[37 58 103 85 60 23 208 101 76 121 18 30 68 5 185 208].
	] ensure: [ hash release.
		hash2 ifNotNil: [ hash2 release ] ]
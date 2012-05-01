tests
testCopying

	| hash contents digest key hash2 |
	hash := HMAC new.
	key := 'Open sesame!'.
	contents := 'Message in the bottle!'.
	[	hash algorithm: 'md5' key: key.
		hash updateFrom: contents.
		hash2 := hash copy.
		hash updateFrom: contents.
		digest := hash finish.
		self assert: digest = #[170 140 114 140 202 177 63 170 71 143 122 33 108 210 14 69].
		hash2 updateFrom: contents reverse.
		digest := hash2 finish.
		self assert: digest = #[67 232 145 3 139 88 43 143 21 174 123 123 0 177 71 246].	
	] ensure: [ hash release.
		hash2 ifNotNil: [ hash2 release ] ]
tests
testSHA_b

	| hash contents digest key |
	hash := HMAC new.
	key := ByteArray withAll: (1 to: 50).
	[	hash algorithm: 'SHA1' key: key.
		contents := ByteArray withAll: (1 to: 200).
		hash updateFrom: contents.
		digest := hash finish.
		self assert: digest = #[150 200 234 170 46 39 176 69 56 77 242 24 192 159 25 188 216 212 251 50].
		hash reset.
		hash updateFrom: contents.
		digest := hash finish.
		self assert: digest = #[150 200 234 170 46 39 176 69 56 77 242 24 192 159 25 188 216 212 251 50].
	] ensure: [ hash release ]
reading - numbers
get: reading integerLarge: integer
	| printed |
	printed := self get: reading string: String.
	^Number readIntegerFrom: printed readStream radix: 36
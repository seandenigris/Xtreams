private
cipherNameFor: cipher mode: mode key: key

	| name |
	name := cipher asLowercase.
	name = 'aes' ifTrue: [ name := 'aes-', (key size * 8) printString ].
	name = '3des' ifTrue: [ name := 'des-ede3' ].
	^mode ifNil: [ name ] ifNotNil: [ name, '-', mode asLowercase ]
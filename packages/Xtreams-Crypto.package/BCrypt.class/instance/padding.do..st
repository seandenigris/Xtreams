private
padding: padding do: aBlock

	| info flags |
	padding = 'PKCS1' ifTrue: [
		info := nil.
		flags := self BCRYPT_PAD_PKCS1 ].
	flags ifNil: [ self error: 'unknown padding scheme' ].
	^[	aBlock value: info value: flags
	] ensure: [ info ifNotNil: [ info free ] ].
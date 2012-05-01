private
hash: hash padding: padding do: aBlock

	| info flags |
	padding = 'PKCS1' ifTrue: [
		info := self BCRYPT_PKCS1_PADDING_INFO malloc.
		info memberAt: #pszAlgId put: (self algIdFor: hash).
		flags := self BCRYPT_PAD_PKCS1 ].
	padding = nil ifTrue: [ info = nil. flags := 0 ].
	flags ifNil: [ self error: 'unknown padding scheme' ].
	^[	aBlock value: info value: flags
	] ensure: [ info ifNotNil: [ info free ] ].
instance creation
new

	^self == Hash
		ifTrue: [ (self selectImplementationOf: Hash) new ]
		ifFalse: [
			self == HMAC
				ifTrue: [ (Hash selectImplementationOf: HMAC) new ]
				ifFalse: [ super new initialize ] ]
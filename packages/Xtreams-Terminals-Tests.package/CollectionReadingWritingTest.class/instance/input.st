initialize-release
input

	^input ifNil: [ input := (self output close; terminal) reading ]
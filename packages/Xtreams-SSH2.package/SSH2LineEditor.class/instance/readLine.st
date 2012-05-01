accessing
readLine

	| code |
	output cr; write: self prompt; space; flush.
	line := String new writing.
	"Echo each character as it comes in"
	^[ 	[	| char |
			char := input get.
			code := char asInteger.
			(code between: 32 and: 125) 
				ifTrue: [ output put: (line put: char); flush. true ]
				ifFalse: [ self class controlAction: code with: self ]
		] whileTrue.
		line close; terminal
	] on: Incomplete do: [ :ex | nil ]
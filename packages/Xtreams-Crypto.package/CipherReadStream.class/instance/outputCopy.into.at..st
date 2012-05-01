accessing
outputCopy: requested into: target at: start  

	| available toRead |
	available := unconsumed.
	available isZero ifTrue: [ ^0 ].
	toRead := available min: requested.
	target replaceFrom: start to: start + toRead - 1 with: output startingAt: 1.
	available > requested
		ifTrue: [ | remaining | "if there was more than was requested, realign the ouput buffer and exit"
			remaining := available - requested.
			output replaceFrom: 1 to: remaining with: output startingAt: toRead + 1.
			unconsumed := remaining ]
		ifFalse: [ unconsumed := 0 ].
	^toRead
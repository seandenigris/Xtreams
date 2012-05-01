receiving
get: destination using: callback

	| type |
	path := destination.
	self confirm.
	[	[ type := in get. true ] on: Incomplete do: [ :ex | false ]
	] whileTrue: [ | times processed line |
		processed := false.
		line := in ending: CR.
		type = $T ifTrue: [
			times := self getTimes: line.
			self confirm.
			line := in ending: CR.
			type := in get ].
		type = $C ifTrue: [ self getFile: line times: times using: callback. processed := true  ].
		type = $D ifTrue: [ self getDirectory: line times: times using: callback. processed := true  ].
		type = $E ifTrue: [ self getDirectoryEnd: line using: callback. processed := true  ].
		type asInteger = 1 ifTrue: [ "recoverable error"
			SCPWarning raiseRequestErrorString: line rest.
			"do not confirm error reception"
			processed := true ].
		type asInteger = 2 ifTrue: [ "fatal error"
			SCPError raiseErrorString: line rest ].
		processed ifFalse: [ self abort: 'Unknown record ', (String with: type) ] ]
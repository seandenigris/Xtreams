control codes
CSI

	| stop args |
	stop := $;.
	args := Array new writing.
	[ stop = $; ] whileTrue: [ | number |
		number := (input ending: [ :c | (stop := c) isDigit not ]) rest.
		number isEmpty ifFalse: [ args put: number asNumber ] ].
	args := args close; terminal.
	Log space; write: 'ESC ['.
	args do: [ :n | Log space; print: n ] separatedBy: [ Log put: $; ].
	Log space; put: stop.
	^true
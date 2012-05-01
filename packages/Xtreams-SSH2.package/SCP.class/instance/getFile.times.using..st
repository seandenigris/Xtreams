receiving
getFile: msg times: times using: callback

	| mode size name arguments source |
	mode := msg read: 4. "currently ignored"
	msg get.
	size := Number readFrom: (msg ending: $ ) rest readStream.
	name := msg rest.
	self confirm.
	session ifNotNil: [ session announce: (SCPFile new incoming: true; path: path; name: name; length: size) ].
	source := in source limiting: size.
	arguments := Array new writing put: path; put: name; put: source; put: size; put: mode; put: times; close; terminal.
	[	[	callback cullWithArguments: arguments.
		] ensure: [ source -= 0; close ].
		in source get isZero ifFalse: [ SCPError raiseErrorString: 'Missing terminating NULL!' ].
		self confirm.
	] on: SCPWarning, SCPError do: [ :ex | ex process: self ]
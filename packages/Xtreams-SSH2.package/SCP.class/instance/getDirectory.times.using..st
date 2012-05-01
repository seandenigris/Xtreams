receiving
getDirectory: msg times: times using: callback

	| mode size name arguments |
	mode := msg read: 4. "currently ignored"
	msg get.
	size := Number readFrom: (msg ending: $ ) rest readStream. "size is bogus, normally 0"
	name := msg rest.
	arguments := Array new writing put: path; put: name; put: nil "no source"; put: size; put: mode; put: times; close; terminal.
	[	path := callback cullWithArguments: arguments.
		self confirm.
	] on: SCPWarning, SCPError do: [ :ex | ex process: self ]
private - sending
send: aCommand with: arg1 text: aText
	self send: aCommand from: nil withArguments: (Array with: arg1) text: aText
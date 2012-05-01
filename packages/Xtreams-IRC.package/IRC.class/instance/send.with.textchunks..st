private - sending
send: aCommand with: arg1 textchunks: aText
	self send: aCommand from: nil withArguments: (Array with: arg1) textchunks: aText
private - sending
send: aCommand with: arg1 actionchunks: aText
	self send: aCommand ctcp: 'ACTION' from: nil withArguments: (Array with: arg1) textchunks: aText
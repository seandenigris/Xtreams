private - sending
send: aCommand with: arg1 with: arg2 with: arg3 text: aText
	self send: aCommand from: nil withArguments: (Array with: arg1 with: arg2 with: arg3) text: aText
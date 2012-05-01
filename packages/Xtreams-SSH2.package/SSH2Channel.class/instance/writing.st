accessing
writing

	| first |
	first := true.
	^[	(first not and: [ outgoingWindow = 0 ]) ifTrue: [ outgoingWindow := dataOutIncrements next ].
		first := false.
		(dataOut writing limiting: (outgoingPacketMaxSize min: outgoingWindow))
			closing: [ :s |
				outgoingWindow := outgoingWindow - dataOut readSize.
				self send: ((SSH_MSG_CHANNEL_DATA id: otherID) data: dataOut) ]		
	] reading stitching closing: [ :s |
			s destination close. "Have to close first, otherwise the EOF can out run the end of data"
			self send: (SSH_MSG_CHANNEL_EOF id: otherID) ]
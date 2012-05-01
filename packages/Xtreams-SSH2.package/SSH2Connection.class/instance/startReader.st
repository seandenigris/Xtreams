initialize-release
startReader

	self stopReader.
	reader :=
		[	[	| marshaling |
				marshaling := in ssh2Marshaling.
			 	[	| msg |
					msg := SSH2Message readFrom: marshaling.
					self announce: msg.
					msg dispatch: self
				] whileTrue
			] on: Incomplete do: [ :ex | ]
		] newProcess.
	reader name: self readerProcessLabel.
	reader resume
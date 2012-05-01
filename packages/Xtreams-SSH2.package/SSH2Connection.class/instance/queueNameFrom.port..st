private-accessing
queueNameFrom: name port: port

	^port > 65535 ifTrue: [ name ] ifFalse: [ String new writing write: name; put: $:; print: port; close; terminal ]
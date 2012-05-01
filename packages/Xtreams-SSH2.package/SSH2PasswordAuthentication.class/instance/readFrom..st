accessing
readFrom: stream

	| hasNewPassword |
	hasNewPassword := stream getBoolean.
	password := stream getStringEncoding: #utf8.
	hasNewPassword ifTrue: [
		newPassword := stream getStringEncoding: #utf8 ]
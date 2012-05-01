private
verify: user for: service

	| request |
	"1) verify key"
	(connection receivedKey: key user: user) ifFalse: [^false].
	"2) verify signature"
	signature ifNotNil: [
		^connection configuration keys
			verify: signature
			of: (self contentToSignUser: user service: service)
			with: key ].
	"otherwise confirm the key and expect a signed request"
	connection sendMessage: (SSH_MSG_USERAUTH_PK_OK key: key).
	request := connection receive: SSH_MSG_USERAUTH_REQUEST.
	^request authentication class == self class
	and: [ (signature := request authentication signature) notNil
	and: [ self verify: request user for: request service ] ]
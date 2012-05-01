instance creation
readPrivateKeyFrom: stream

 	| type |
	(stream ending: '-----BEGIN ') -=0.
	type := (stream ending: ' PRIVATE KEY-----') rest.
	self allSubclasses do: [ :class | (class readPrivateKey: type from: stream) ifNotNil: [ :key | ^key ] ].
	self error: 'Cannot read key: ', type
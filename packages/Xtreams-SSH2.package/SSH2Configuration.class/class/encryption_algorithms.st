accessing-connection parameters
encryption_algorithms

	^encryption_algorithms ifNil: [ #('aes128-cbc' 'arcfour' '3des-cbc') ]
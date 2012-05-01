instance creation
sampleKeys
"
	self sampleKeys release
"
	| dsa rsa keys |
	keys := SSH2Keys new.
	rsa := self sampleRSAKeys1024.
	keys addPublic: rsa key private: rsa value.
	(OS.OSHandle currentOS = #win32) ifFalse: [ 
		dsa := self sampleDSAKeys512.
		keys addPublic: dsa key private: dsa value ].
	^keys
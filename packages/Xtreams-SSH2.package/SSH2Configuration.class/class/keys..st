accessing
keys: signingInterface
"
	| rsaKeys dsaKeys |
	keys := SSH2Keys new.
	rsaKeys := SSH2KeysTest sampleRSAKeys1024.
	dsaKeys := SSH2KeysTest sampleDSAKeys512.
	keys addPublic: rsaKeys key private: rsaKeys value.
	keys addPublic: dsaKeys key private: dsaKeys value.
	self keys: keys
"
	keys := signingInterface.
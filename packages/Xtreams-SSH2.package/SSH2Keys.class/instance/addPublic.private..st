accessing
addPublic: pubKey private: priKey

	| hostKey |
	hostKey := self hostKeyFrom: pubKey.
	keys at: hostKey put: (pubKey -> priKey)